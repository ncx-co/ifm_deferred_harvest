import logging
import tempfile
from datetime import datetime
import json
from parse import parse

import pandas as pd
import numpy as np
from path import Path

import fiona
from shapely.geometry import shape, mapping
from shapely.geometry.multipolygon import MultiPolygon

from st_storage import blob

from django.core import serializers
from django.db import close_old_connections

from bark_api.constants import WGS_84_CRS
from bark_api.settings import NCAPX_DOCGEN_CONTAINER
from ncapx_platform.models import Property, AccountCycle
from ncapx_platform.utils import calculate_shape_acreage, create_property_overlap_maps

# Deprecated: Don't import call `blob.Blob` at import time as it talks to Azure
#   Use a method like `get_doc_store()` instead
doc_store = blob.Blob(NCAPX_DOCGEN_CONTAINER)

DEFAULT_START_DATE = datetime(2021, 1, 1)
DATE_FORMAT = "%y_%m_%d"

run_date = datetime.utcnow().strftime(DATE_FORMAT)

OVERLAP_CONTAINER = 'property_overlap'
CSV_CONTAINER = f'{OVERLAP_CONTAINER}/csv'
OVERLAP_KEY = '{OVERLAP_CONTAINER}/csv/property_overlap_{run_date}.csv'
OVERLAP_GPKG_KEY = '{OVERLAP_CONTAINER}/gpkg/{unique_id}.gpkg'

OUTPUT_CSV_COLS = [
        'Property 1 ID', 'Property 1 Cycle Key',
        'Property 1 Status', 'Property 1 Associated Emails', 'Property 1 Account', 'Property 1 Acreage',
        'Property 1 URL', 'Property 2 ID', 'Property 2 Cycle Key', 'Property 2 Status',
        'Property 2 Associated Emails', 'Property 2 Account', 'Property 2 Acreage', 'Property 2 URL',
        'Intersecting Acreage', 'Unique Key', 'Run Date'

    ]

GPKG_DRIVER = 'GPKG'
GPKG_SCHEMA = {
    'geometry': 'MultiPolygon',
    'properties': {
        'feature_type': 'str',
    },
}
GPKG_CRS = WGS_84_CRS

INTERSECT_OF_CONCERN_PCT = 1.0
INTERSECT_OF_CONCERN_ACRES = 10

ORDERED_CYCLE_KEYS = [c[0] for c in AccountCycle.CYCLE_CHOICES]
assert ORDERED_CYCLE_KEYS[-1] == AccountCycle.LATEST_CYCLE_KEY, \
    "Expected LATEST_CYCLE_KEY to be last cycle key (next line depends on it)"
CYCLE_KEYS_TO_CHECK = ORDERED_CYCLE_KEYS[-4:]

GeoJSONSerializer = serializers.get_serializer("geojson")


def should_overlap_be_of_concern(feature_shape_1, feature_shape_2, intersection):
    """
    Following rules stated in https://ncx.slab.com/posts/property-boundary-overlaps-wip-ln8fi5e0
    """
    feature_1_acreage = calculate_shape_acreage(feature_shape_1, 'epsg:4326')
    feature_2_acreage = calculate_shape_acreage(feature_shape_2, 'epsg:4326')
    intersection_acreage = calculate_shape_acreage(intersection, 'epsg:4326')

    feature_1_pct = (intersection_acreage / feature_1_acreage) * 100
    feature_2_pct = (intersection_acreage / feature_2_acreage) * 100

    is_above_pct_threshold = feature_1_pct > INTERSECT_OF_CONCERN_PCT or feature_2_pct > INTERSECT_OF_CONCERN_PCT

    return is_above_pct_threshold or intersection_acreage > INTERSECT_OF_CONCERN_ACRES


def convert_poly_to_multipoly(feature_shape):
    """
    Convert Shapley Polygon to Multipolygon
    """
    if feature_shape.type == 'Polygon':
        return MultiPolygon([feature_shape])
    return MultiPolygon([s for s in feature_shape if s.type == 'Polygon'])


def get_last_run_date():
    """
    overlap csvs are stored with the run date in the keyname.
    they can be sorted alphabetically to determine the last date
    the script was executed
    """
    keys = sorted([k.key for k in doc_store.list_keys(CSV_CONTAINER)], reverse=True)
    if not keys:
        return None
    last_run_date = datetime.strptime(parse(OVERLAP_KEY, keys[0])['run_date'], DATE_FORMAT)

    return last_run_date


def check_for_overlaps(prop_set_1_geojson, prop_set_2_geojson):
    """
    Check for overlaps between two sets of properties.
    Properties are passed in as geojsons
    """
    last_run_date = get_last_run_date() or DEFAULT_START_DATE
    intersection_data = []
    processed_properties = set()
    for i, feature in enumerate(prop_set_1_geojson, 1):
        logging.info(f"Processing {i} of {len(prop_set_1_geojson)}")
        feature_props = feature['properties']

        feature_last_edit = datetime.strptime(feature_props['last_edit'], DATE_FORMAT)
        for check_feature in prop_set_2_geojson:
            check_props = check_feature['properties']

            check_feature_last_edit = datetime.strptime(check_props['last_edit'], DATE_FORMAT)

            unique_id = '-'.join([
                str(_id) for _id in sorted([feature_props['id'], check_props['id']])
            ])
            logging.info(f"Checking {feature_props['id']} - {check_props['id']}")
            if unique_id in processed_properties:
                logging.info(f'Already checked {unique_id}, skipping')
                continue

            if feature_last_edit < last_run_date and check_feature_last_edit < last_run_date:
                logging.info("Both properties have not been edited since last run")
                continue

            if feature_props['id'] == check_props['id']:
                logging.info(f"Prop id {feature_props['id']} are the same")
                continue

            processed_properties.add(unique_id)

            feature_shape = shape(feature['geometry'])
            check_shape = shape(check_feature['geometry'])

            intersection = feature_shape.intersection(check_shape)
            if not intersection.area:
                continue

            if not should_overlap_be_of_concern(feature_shape, check_shape, intersection):
                continue

            intersection_acreage = calculate_shape_acreage(intersection, 'epsg:4326')

            # generate html maps and append url
            feature_map_name = f"{unique_id}-{feature_props['id']}"
            feature_map_url = create_property_overlap_maps(feature_shape, intersection, feature_map_name)

            check_map_name = f"{unique_id}-{check_props['id']}"
            check_map_url = create_property_overlap_maps(check_shape, intersection, check_map_name)

            intersection_data.append(
                (
                    feature_props['id'],
                    feature_props['cycle_key'],
                    feature_props['status'],
                    feature_props['associated_emails'],
                    feature_props['account_name'],
                    feature_props['acreage'],
                    feature_map_url,
                    check_props['id'],
                    check_props['cycle_key'],
                    check_props['status'],
                    check_props['associated_emails'],
                    check_props['account_name'],
                    check_props['acreage'],
                    check_map_url,
                    intersection_acreage,
                    unique_id,
                    run_date
                )
            )
            # create geopackage containing the geom of both properties
            # along with the overlap area.  Schema can not have both Multipolygon
            # and Polygon features, so we convert everything to Multi
            feature_shape = convert_poly_to_multipoly(feature_shape)
            check_shape = convert_poly_to_multipoly(check_shape)
            intersection = convert_poly_to_multipoly(intersection)

            with tempfile.TemporaryDirectory() as temp_dir:
                intersection_gpkg_fn = Path(temp_dir) / f"{unique_id}.gpkg"

                with fiona.open(intersection_gpkg_fn, 'w', GPKG_DRIVER, GPKG_SCHEMA, GPKG_CRS) as c:
                    c.write({
                        'geometry': mapping(feature_shape),
                        'properties': {'feature_type': 'property_1'}
                    })
                    c.write({
                        'geometry': mapping(check_shape),
                        'properties': {'feature_type': "property_2"}
                    })
                    c.write({
                        'geometry': mapping(intersection),
                        'properties': {'feature_type': 'intersection'}
                    })

                doc_store.upload(
                    intersection_gpkg_fn,
                    OVERLAP_GPKG_KEY.format(
                        OVERLAP_CONTAINER=OVERLAP_CONTAINER,
                        unique_id=unique_id
                    )
                )
    return intersection_data


class Serializer(GeoJSONSerializer):
    def get_dump_object(self, obj):
        # Reconnect to database, in case we timed out while dumping the last object
        #   https://stackoverflow.com/a/45673418/1960509
        close_old_connections()
        data = super(Serializer, self).get_dump_object(obj)
        associated_emails = [
                profile.user.email for profile in obj.account_cycle.account.profile_set.all().prefetch_related('user')
            ]
        data['properties']['id'] = obj.id
        data['properties']['cycle_key'] = obj.account_cycle.cycle_key
        data['properties']['status'] = obj.account_cycle.status
        data['properties']['associated_emails'] = ', '.join(associated_emails)
        data['properties']['account_name'] = obj.account_cycle.account.account_name
        data['properties']['last_edit'] = obj.history.first().history_date.strftime(DATE_FORMAT)
        return data


def run():
    '''
    Checks all enrolled properties for overlapping areas.
    Writes out CSV file to blob for reference

    ran with
    ./manage.py runscript overlap_check
    '''
    intersection_data = []
    logging.info('Serializing Data')
    geojson_serializer = Serializer()

    latest_cycle_props = (
        Property.get_reduced_queryset()
        .filter(account_cycle__cycle_key=AccountCycle.LATEST_CYCLE_KEY)
        .exclude(account_cycle__status='created')
        .exclude(account_cycle__account__profile_set__user__email__endswith='@silviaterra.com')
        .exclude(account_cycle__account__profile_set__user__email__endswith='@ncx.com')
    )

    latest_cycle_props_data = json.loads(
        geojson_serializer.serialize(latest_cycle_props)
    )
    latest_cycle_props_features = latest_cycle_props_data['features']

    bid_accepted_props = (
        Property.get_reduced_queryset()
        .filter(account_cycle__status='bid_accepted')
        .filter(account_cycle__cycle_key__in=CYCLE_KEYS_TO_CHECK)
        .exclude(account_cycle__account__profile_set__user__email__endswith='@silviaterra.com')
        .exclude(account_cycle__account__profile_set__user__email__endswith='@ncx.com')
    )

    bid_accepted_props_data = json.loads(
        geojson_serializer.serialize(bid_accepted_props)
    )
    bid_accepted_props_features = bid_accepted_props_data['features']

    logging.info('Checking for 1st set intersections')
    intersection_data += check_for_overlaps(
        latest_cycle_props_features,
        bid_accepted_props_features
    )
    # Intentionally using the same features here.
    # The function should handle the comparison between
    # the same property correctly
    logging.info('Checking for 2nd set intersections')
    intersection_data += check_for_overlaps(
        latest_cycle_props_features,
        latest_cycle_props_features
    )

    last_run_date = get_last_run_date()
    with tempfile.TemporaryDirectory() as temp_dir:
        temp_csv_fn = Path(temp_dir) / 'overlap.csv'

        if last_run_date:
            # download last run csv and combine
            temp_previous_csv_fn = Path(temp_dir) / 'previous.csv'
            doc_store.download(
                OVERLAP_KEY.format(
                    OVERLAP_CONTAINER=OVERLAP_CONTAINER,
                    run_date=last_run_date.strftime(DATE_FORMAT)
                ),
                temp_previous_csv_fn
            )

            previous_data = pd.read_csv(temp_previous_csv_fn)

            # make sure previous data is formatted correctly when new fields are added
            # not concerned with backfilling here
            for col in OUTPUT_CSV_COLS:
                if col not in previous_data.columns:
                    previous_data[col] = np.nan

            previous_data = previous_data[OUTPUT_CSV_COLS]
        else:
            # this occurs when there is no previous script runs
            previous_data = pd.DataFrame(columns=OUTPUT_CSV_COLS)

        # combine two files here
        previous_data.append(pd.DataFrame(
            intersection_data, columns=OUTPUT_CSV_COLS
        ).drop_duplicates('Unique Key')).to_csv(
            temp_csv_fn, index=False
        )

        doc_store.upload(
            temp_csv_fn,
            OVERLAP_KEY.format(
                OVERLAP_CONTAINER=OVERLAP_CONTAINER,
                run_date=run_date
            )
        )
