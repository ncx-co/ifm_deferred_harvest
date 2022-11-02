# Methodology for improved forest management through targeted, short-term harvest deferral

**Document Prepared by NCX**

|                |                                                                                                                        |
| -------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Title          | Methodology for Improved Forest Management through Targeted, Short-Term Harvest Deferral                               |
| Version        | 1.0                                                                                                                    |
| Date of Issue  | 17 March 2021                                                                                                          |
| Type           | Methodology                                                                                                            |
| Sectoral Scope | Sectoral Scope 14 Agriculture, Forestry and Other Land Uses (AFOLU); Improved Forest Management; Extended Rotation Age |
| Prepared By    | NCX                                                                                                                    |
| Contact        | 2443 Fillmore St. #380-1418, San Francisco CA, 94115.( www.ncx.com)(http://www.ncx.com).                               |
|                | Zack Parisa, Chief Executive Officer, NCX (<zack@ncx.com>)                                                             |
|                | Nan Pond, PhD, Science Director, Forestry, NCX (nan@ncx.com)                                                           |
|                | Gordon Vermeer, Program Director and Chief Financial Officer, NCX (<gordon@ncx.com>)                                   |
|                | Jen Jenkins, PhD, Chief Sustainability Officer, NCX (<jen@ncx.com>)                                                    |

# Relationship to Approved or Pending Methodologies

Approved and pending methodologies under the VCS Program and approved
GHG programs that fall under the same sectoral scope (14 -- Agriculture,
Forestry and Other Land Uses - AFOLU) and AFOLU project category
(Improved Forest Management - IFM), were reviewed to determine whether
an existing methodology could be reasonably revised to meet the
objective of this proposed methodology. Four methodologies were
identified and are set out below.

These methodologies could not be reasonably revised for several reasons
cited in the comments section of Table 1-1: Similar Methodologies.

**Table 1-1: Similar Methodologies**

| Methodology                                                                      | Title                                                                     | GHG Program | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| -------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| VM0003                                                                           | Methodology for Improved Forest Management through Rotation Age Extension | VCS         | VM0003 uses a project method for baseline and additionality determination, whereas the proposed methodology uses a performance method. Additionally, unlike VM0003, this methodology clarifies use of remote sensing data derivatives to increase measuring and monitoring efficiency and incorporates tonne-year accounting to determine and assure equivalent impact to permanent storage. Finally, VM0003 relies on growth and yield models for the determination of carbon stocking, whereas growth/yield models are not necessary in this methodology because of the quantification method.                                                                                              |
| VM0012                                                                           | Improved Forest Management in Temperate and Boreal Forests                | VCS         | VM0012 uses a project method for baseline and additionality determination whereas the proposed methodology uses a performance method. Additionally, unlike VM0012, this methodology clarifies use of remote sensing data derivatives to increase measuring and monitoring efficiency and incorporates tonne-year accounting to determine and assure equivalent impact to permanent storage. VM0012 relies on growth and yield models for the determination of carbon stocking where growth/yield models are not necessary in this methodology. Finally, VM0012 is not applicable to working forests, such as plantation forests, where that is not a restriction imposed by this methodology. |
| VM0034                                                                           | Canadian Forest Carbon Offset Methodology                                 | VCS         | VM0034 uses a project method for baseline and additionality determination, whereas the proposed methodology uses a performance method. Additionally, unlike VM0034, this methodology clarifies use of remote sensing data derivatives to increase measuring and monitoring efficiency and incorporates tonne-year accounting to determine and assure equivalent impact to permanent storage. Finally, VM0034 relies on growth and yield models for the determination of carbon stocking where growth/yield models are not necessary in this methodology.                                                                                                                                      |
| Under development at time of writing (Family Forest Carbon Program, TNC and AFF) | Methodology for Improved Forest Management                                | VCS         | The methodology under development relies on measurement and correlation of project and composite control plots that form the project's baseline. In contrast, this methodology uses a predictive modelling approach, based on USFS FIA data, to develop the baseline scenario and for the determination of additionality. Additionally, this methodology incorporates tonne-year accounting to determine and assure equivalent impact to permanent storage.                                                                                                                                                                                                                                   |
|                                                                                  |

### Contents

- [Methodology for improved forest management through targeted, short-term harvest deferral](#methodology-for-improved-forest-management-through-targeted-short-term-harvest-deferral)
- [Relationship to Approved or Pending Methodologies](#relationship-to-approved-or-pending-methodologies)
    - [Contents](#contents)
- [1 Sources](#1-sources)
- [2 Summary description of the Methodology](#2-summary-description-of-the-methodology)
- [3 Definitions](#3-definitions)
- [4 Applicability conditions](#4-applicability-conditions)
- [5 Project Boundary](#5-project-boundary)
- [6 Baseline Scenario](#6-baseline-scenario)
- [7 Additionality](#7-additionality)
- [8 Quantification of GHG Emission Reductions \& Removals](#8-quantification-of-ghg-emission-reductions--removals)
  - [8.1 Baseline Emissions](#81-baseline-emissions)
  - [8.2 Project Emissions](#82-project-emissions)
  - [8.3 Leakage](#83-leakage)
  - [8.4 Uncertainty](#84-uncertainty)
  - [8.5 Net GHG Emission Reductions / Removals](#85-net-ghg-emission-reductions--removals)
- [9 Monitoring](#9-monitoring)
  - [9. 1 Data and Parameters Available at Validation](#9-1-data-and-parameters-available-at-validation)
  - [9.2 Data and Parameters Monitored](#92-data-and-parameters-monitored)
  - [9.3 Description of the Monitoring Plan](#93-description-of-the-monitoring-plan)
- [10 References](#10-references)
- [11 Appendix A: Baseline Common practice harvest model](#11-appendix-a-baseline-common-practice-harvest-model)
  - [11.1 Mathematical Representation of Model Form](#111-mathematical-representation-of-model-form)
  - [11.2 Final Harvest Risk Model Form](#112-final-harvest-risk-model-form)
  - [11.3 Model Inputs](#113-model-inputs)
  - [11.4 Upper bounds on Carbon at Risk](#114-upper-bounds-on-carbon-at-risk)
  - [11.5 References Used in Baseline Model Development](#115-references-used-in-baseline-model-development)
- [12 Appendix B: Baseline Model Fitting Dataset Compilation](#12-appendix-b-baseline-model-fitting-dataset-compilation)
  - [12.1 Baseline Model Training and Validation Dataset](#121-baseline-model-training-and-validation-dataset)
  - [12.2 National Forest Inventory Data](#122-national-forest-inventory-data)
  - [12.3 Covariate Data](#123-covariate-data)
  - [12.4 References](#124-references)
- [13 Appendix C: Validation and Verification Guidance](#13-appendix-c-validation-and-verification-guidance)
  - [13.1 Validation](#131-validation)
  - [13.2 Verification](#132-verification)

# 1 Sources

No sources are referenced in this document. While we have cited references in support of particular areas of the science represented in this methodology, there are no existing methodologies or projects that form a motivation or basis of this work.

# 2 Summary description of the Methodology

**Table 2-1: Application of Standardized Method**

| Additionality      | Crediting Method   |
| ------------------ | ------------------ |
| Additionality      | Performance Method |
| Crediting Baseline | Performance Method |

The methodology is applicable to projects wherein participants elect to defer timber harvests for a specified length of time; therefore, projects using the methodology are considered under the improved forest management (IFM) subclass of extended rotation age (ERA) projects. The methodology relies on a performance method for the demonstration of additionality and selection of the crediting baseline.

Harvest deferrals, and any associated stock changes, are monitored through plot-based field measurements of carbon stocking that inform both the baseline scenario and the project scenario; these are repeated measures, with the same plots measured at the beginning of the reporting period, time $t0$, and after completion of the reporting period, time $t1$. Spatially explicit remote sensing data of the program area and additional field measurement may also be employed to enhance repeated field-based measurements and to detect areas of disturbance during the activity period (i.e., between $t0$ and $t1$ ). Therefore, this is a performance-based methodology that relies on measurements to demonstrate harvest deferrals, and associated GHG emission reductions / removals, in relation to a baseline scenario. As such, growth and yield modeling that is necessary in most IFM project types is not employed.

The methodology also uses a tonne-year accounting approach to permanence (where a tonne-year refers to one metric ton (MT) of CO2e, sequestered for one year). The conversion rate between tonne-years and permanent tonnes has been provided in the methodology and has been separately approved by Verra. The tonne-year accounting approach allows for equivalence to permanent tonnes on an annual basis and therefore permanence risk assessment and buffer pool contributions are not required.

It is expected that projects utilizing this methodology will typically employ a grouped project approach, thereby opening carbon markets to smaller-size landowners with historically low rates of participation. Small and mid-size forest landowners can participate not only due to low fixed costs but also due to flexibility in project structure. Theinclusion of small and mid-size forest landowners (holdings of less than 2000 hectares) is not typically possible due to the requirements of many IFM methodologies, but landowners at these small size classes represent millions of landowners and hundreds of millions of hectares of forestland in the United States.

The methodology is compatible with plantation forests, unlike most other IFM methodologies. The relatively consistent forest management practices and harvest behavior associated with plantation forests fits well with a harvest deferral strategy because those attributes facilitate this methodology's approach to the selection of a crediting baseline (specifically, its business as usual (BAU) estimation techniques). Further, the rapid biological growth rates of many plantation species at or near their conventionally optimal rotation age (e.g., Southern yellow pine at ages 25-30) also make them well-suited for carbon sequestration purposes.

Finally, while this methodology is notably applicable to plantation forest types, all forest types under all ownership types are eligible to participate in the proposed methodology, if it can be demonstrated that all applicability conditions can be met.

# 3 Definitions

**Activity period**

The interval of time during which the project activity is undertaken on a participating property.

**Instance**

See Project Activity Instance (Instance)" in VCS Program Definitions v4.1. In this methodology, an instance is a participating property that shares an activity period with other participating properties, meaning they start and finish the project activity at the same time as one another. Individual instances may engage in one or more activity periods, i.e. one or more years of harvest deferral, and therefore not all instances would have the same number of years of harvest deferral.

**Logging Slash**

Dead wood residues (including foliage) left on the forest floor after timber removal.

**Participating property**

Forested area meeting the applicability conditions under section 4; distinguishable from surrounding forestland by virtue of its ownership or management by a participant, as relevant; enrolled voluntarily by the participant in the project.

**Persistence**

Additional carbon generated through one or more years of harvest deferral that cannot reasonably be expected to be harvested at a future date due to operational constraints.

**Program area**

The geographic region of applicability for participating properties, as determined by the project proponent considering the project proponent's ability to satisfy this methodology's requirements in that geographic region. Defined for each individual project developed under this methodology. A non-inclusive list of examples of a program area for a project under this methodology could be one or several U.S. states, one country, or one or more Level II Ecoregions.

**Project activity**

see _VCS Program Definitions v4.1_. In this methodology, the project activity is harvest deferral.

**Project participant** or **Participant**

A party who has the right, without the consent of any third party (or in the case of an authorized representative of the legal owner(s), without any further permission or consent from the legal owner(s)), to (i) harvest, or defer the harvest of, the timber on all land within the participating property, subject to constraints within the municipality, county, state, and/or country in which such property is located and applicable state and federal environmental law and regulations, and (ii) sell to a third party all environmental attributes and rights to make environmental claims related to such harvest or deferred harvest. It is understood that such rights may be held by different types of parties, including but not limited to property managers, timber rights owners, fee simple owners, and holders of any other form of land tenure that includes the rights specified herein. In the case of privately-owned forests in the U.S., the most common relevant form of tenure would typically be fee simple ownership evidenced by possession of title to the asset.

# 4 Applicability conditions

This methodology applies to project activities that reduce greenhouse gas (GHG) emissions in managed forests relative to a baseline scenario over an activity period, through harvest deferrals to extend cutting cycles. The activity period may be as short as one year but may also be longer. The baseline must be recalculated for each property and activity period, per the conditions below. The project activity may be referred to as "harvest deferral."

The methodology is applicable to projects wherein participants elect to defer timber harvests for a specified length of time; therefore, projects using the methodology are considered under the improved forest management (IFM) subclass of extended rotation age (ERA) projects.

This methodology is applicable under the following conditions:

1.  Participating properties are subject to timber harvesting in the baseline scenario during the activity period as determined via a business as usual (BAU) assessment. This should be conducted for each activity period to re-assess additionality.

2.  Participating properties qualify as forests and must remain forests while implementing the project activity.

3.  The project participant has control over the participating property, per the definition of _Participants_ provided in the Section 3 above.

4.  The project proponent must be either a project participant or an interested party with an agreement to implement the project on behalf of the project participant(s).

5.  There are no encumbrances, regulatory or otherwise, on the participating property that would impair the participant's ability to harvest.

6.  The participating property falls within the program area.

7.  All forested property within the program area (i) that is owned by a particular set of beneficial owners (whether an individual, family, legal entity, or otherwise) or (ii) over which a single property manager has been given legal managing authority on behalf of a particular owner or set of owners, is enrolled in the project and is considered a "participating property" per the Definitions section above.

Participating properties are not required to have an authorized management plan or program in place. To achieve improvement over the crediting baseline, harvests must be deferred in whole or in part relative to the amount expected to be removed under the BAU assessment. Performance (i.e., harvesting levels) may be assessed through a combination of remote sensing data and field measurement.

The geographic applicability of the methodology is limited only by the availability of appropriate data sources and quantification techniques. The methodology specifies a process for establishing a dynamic performance benchmark that is applicable in the United States (due to data availability), but the methodology may apply to projects located in countries where relevant data sources are available and where all other requirements of this methodology can be met.[^1]

For Grouped Projects, the below eligibility criteria apply to new instances that are added to the project following initial validation of the project. New instances must:

- Meet all applicability conditions listed above;

- Be located in the same program area as all other instances included in the project;

- Undertake the same project activity as the initial instances and be assessed using the same quantification methods.

For Grouped Projects, the maximum number of years allowed for a given instance is that of the project crediting period; instances can enrol in new projects or new crediting periods as long as they continue to meet all applicability conditions. This means that the maximum harvest deferral allowed is equal to the project crediting period, however, the baseline must be recalculated for each property and activity period.

# 5 Project Boundary

The spatial extent of the project boundary encompasses all participating properties within a program area.

The carbon pools included or excluded from the project boundary are shown in Table 5-1: Selected Carbon Pools below.

**Table 5-1: Selected Carbon Pools**

| **Source**                    | **Included?** | **Justification/Explanation**                                                                                                                                                                                |
| ----------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Above-ground tree biomass     | Yes           | Required pool subject to significant change due to the project activity.                                                                                                                                     |
| Above-ground non-tree biomass | No            | Not required due to insignificance.                                                                                                                                                                          |
| Below-ground biomass          | No            | Conservative exclusion as pool is likely to increase due to the project activity.                                                                                                                            |
| Litter                        | No            | Not required due to insignificance.                                                                                                                                                                          |
| Dead wood                     | No            | Not required as logging slash is not expected to increase as a result of the project activity.                                                                                                               |
| Soil                          | No            | Not required due to insignificance.                                                                                                                                                                          |
| Wood Products                 | No            | Not required as harvest deferral leads only to a shift in the harvested wood products decay curve, whose impact differs depending on the number of years harvest is deferred during and after participation. |

The greenhouse gases included in or excluded from the project boundary
are shown in Table 5-2 below.

**Table 5-2: GHG Sources Included In or Excluded From the Project Boundary**

|          | Source                | Gas    | Included? | Justification/Explanation                                                                                  |
| -------- | --------------------- | ------ | --------- | ---------------------------------------------------------------------------------------------------------- |
| Baseline | Fossil fuel emissions | $CO_2$ | No        | Conservatively excluded – baseline accounting does not include emissions from machinery used in harvesting |
|          |                       | $CH_4$ | No        | Conservatively excluded – baseline accounting does not include emissions from machinery used in harvesting |
|          |                       | $N_2O$ | No        | Conservatively excluded – baseline accounting does not include emissions from machinery used in harvesting |
| Project  | Fossil Fuel Emissions | $CO_2$ | No        | Same as for baseline scenario                                                                              |
|          |                       | $CH_4$ | No        | Same as for baseline scenario                                                                              |
|          |                       | $N_2O$ | No        | Same as for baseline scenario                                                                              |

# 6 Baseline Scenario

For participating properties, the most plausible baseline scenario is
a common practice harvest as determined through a business-as-usual
(BAU) assessment. The specific amount of "carbon at risk" of harvest
should be determined for each participating property using a baseline
model constructed as defined in the following section and Appendices A
and B.

The baseline scenario should be reconstructed for each activity period
during a crediting period using the best available information and
therefore represents a dynamic performance benchmark. This ensures
that the baseline scenario is continually evaluated to ensure validity
based on the participating properties during each activity period.

To develop the common practice harvest for each participating
property, project proponents must follow the below steps to estimate
the probability that a given hectare would be harvested during the
activity period, and what proportion of the standing carbon would be
expected to be removed. These two values can be calculated through a
single unified baseline model (as described, for example, in Appendix
A) or through a series of models or empirical evidence (e.g.
management history from a participating property). Common practice
harvest behavior should be calculated on a fine scale for each
participating property (e.g., half-hectare resolution).

The sum of the carbon at risk across all hectares of the participating
properties will generate the carbon at risk of removal due to
harvesting during the activity period.

In the event there is an existing exercisable option for timber
purchase on the land in question, the likelihood of harvest may be
appropriately set at 100\%.

In the event there is a written harvest plan for the property, this
may be used to provide the estimate of proportion of standing carbon
expected to be removed in a harvest.

Baseline models should contain steps to exclude from the estimate of
carbon at risk any portions of participating properties that are
subject to legal constraints on harvesting; this may include but is
not limited to protected areas such as those covered by conservation
easements or legal restrictions (as per the Applicability conditions).
Baseline models should also contain steps that prevent property-level
predicted harvest amounts from exceeding operational harvest limits,
both for logistical reasons (i.e. inoperable sloped terrain) as well
as regional supply chains. These should be derived from the published
literature and may be supplemented with participant-provided
information; See Appendix A for an example implementation.

For some properties, specifically those with regionally unique market
conditions, or particularly large in area, there is an expectation
that harvest deferral relative to the baseline would result in
persistent carbon on the property in subsequent years.  This is the
case when a landowner is only able to harvest a certain absolute
amount of volume in a given year, due to legal, market, or operational
constraints. Deferral of some or all of that harvested volume in a
year does not result in doubling the carbon at risk in the following
year, but instead a more consistent estimate of carbon at risk
(subject to an updated baseline calculation, per the methodology) and
some amount of volume retained on the landscape for a much longer time
period. In this case, the baseline increases because of previously
accrued growth, but the baseline does not solely account for the
additionality of this persistence. The project scenario in subsequent
years should include the impacts of previous deferral as a component
of the carbon at risk and as an estimate of aboveground live tree
biomass that can be quantified and credited, and this can be continued
as long as that property continues to be enrolled in consecutive
activity periods.

The methodology does not prescribe a specific model to derive the
common practice harvest and associated carbon at risk. However, any
model used to estimate the percentage likelihood of harvest occurring
must fit within the general framework described by Prestemon \& Wear
(2000):

**Generalized framework for probability of harvest**

$$P_{H} = ƒ\left( V_{T },V_{NT},C_{H}|G\right)$$

Where:

|          |                                                                 |
| -------- | --------------------------------------------------------------- |
| $P_H$    | Probability of harvest (ranging from 0-1)                       |
| $V_T$    | Timber value of the stand (monetary units or volume)            |
| $V_{NT}$ | Non-timber value of the stand (monetary units or volume)        |
| $C_H$    | Cost of harvest (monetary units)                                |
| $G$      | Grouping term that denotes forest stands with similar responses |

Note that the units for this framework will depend on the precise
specification of the model and what variables are used to describe
value and cost; examples of possible units are provided in the table.

Additional information and an application of the general structure
above can be found in (Table 11-1) of Appendix A: Baseline Common
practice harvest model.

Predicted harvest volumes, used to estimate the proportion of carbon
that would be removed in a harvest, must be based on region- and
forest type-specific normal silvicultural implementations as observed
in an authoritative source such as national forest inventory data,
peer-reviewed publications, or government/NGO reports; silvicultural
implementations may also be empirically derived from national forest
inventory or other repeated measurements in the region of interest
during model development. Inputs to the model must be grounded in
academic research and/or empirical evidence. Appendix A: Baseline
Common practice harvest model describes one such predictive model that
has undergone expert review and that has been approved for use in the
context of this methodology. The output of this predictive model,
carbon at risk of harvest during an activity period, forms the
baseline scenario for projects utilizing this model. Should a project
proponent choose to develop an alternative model for use as a dynamic
performance benchmark, the project proponent must develop a new module
for application within this methodology and such benchmark/module must
undergo the required steps for methodology module approval in
consultation with Verra.

# 7 Additionality

This methodology uses a dynamic performance method for the
demonstration of additionality.

**Step 1: Regulatory Surplus**

Project proponents must demonstrate regulatory surplus in accordance
with the rules and requirements regarding regulatory surplus set out
in the latest version of the _VCS Methodology Requirements._

**Step 2: Performance Benchmark**

The procedure described in Section 6 provides a dynamic performance
benchmark in the form of carbon at risk of removal due to harvesting
that would occur, in the absence of carbon finance, during the
activity period. This performance benchmark forms the baseline
scenario for the activity period. Deferral of harvests that would
occur under the project scenario, as quantified in Section 8, are
deemed additional.

# 8 Quantification of GHG Emission Reductions \& Removals

The methodology quantifies the GHG impact of harvesting less timber on
participating properties during the activity period than would be
harvested under the baseline scenario. Reducing the amount of timber
harvested increases the average age of forests relative to the
baseline scenario which also increases total carbon storage relative
to the baseline scenario.

## 8.1 Baseline Emissions

For each activity period, the baseline scenario is quantified by
summing the BAU harvest assessments of all participating properties in
the program area.

Stock change in the baseline scenario above ground live tree biomass
carbon pool is calculated as follows:

$$
\Delta CO2_{bsl,t} = \sum_{i=1}^{n} (1 + G_{bsl, t, i})\times C_{t0, i}\times
( 1 - r_{i})  - \sum_{i = 1}^{n}C_{t0, i}\qquad\qquad (1)
$$

Where:

|                      |                                                                                                                                                                                                                                           |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $\Delta CO2_{bsl,t}$ | Stock change in above ground live tree biomass in the baseline scenario in the activity period, $t$; $(tCO_2)$                                                                                                                            |
| $G_{bsl,t,i}$        | Biological growth rate in above ground live tree biomass in the participating property, $i$, during the activity period, $t$; (percent)                                                                                                   |
| $C_{t0,i}$           | Carbon contained in above ground live tree biomass at the beginning of the activity period $(t0)$, for participating property, $i$; $(tCO_2)$                                                                                             |
| $r_i$                | Fraction of total carbon contained in above ground live tree biomass removed in the baseline scenario for property $i$, as determined through the procedure described in Appendix A: Baseline Common practice harvest model; (proportion) |
| $n$                  | Total number of participating properties; (unitless)                                                                                                                                                                                      |

Carbon contained in above ground live tree biomass at the beginning of
the activity period is calculated as follows:

$$C_{t0,i} = PP_{Ct0, i}\times PP_{a,t,i}\qquad\qquad (2)$$

Where:

|               |                                                                                                                                               |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| $C_{t0,i}$    | Carbon contained in above ground live tree biomass at the beginning of the activity period $(t0)$, for participating property, $i$; $(tCO_2)$ |
| $PP_{C,t0,i}$ | Above ground live tree carbon at participating property, $i$, at the beginning $(t0)$ of activity period, $t$; $(tCO_2/ha)$                   |
| $PP_{a,t,i}$  | Area of participating property, $i$, during activity period, $t$; (hectares)                                                                  |

## 8.2 Project Emissions

Crediting in this methodology stems from the deferred harvest
activity. For each activity period, the project scenario is quantified
by estimating carbon contained in above ground live tree biomass at
the beginning and end of a cycle.

Stock change in the project above ground live tree biomass carbon pool
is calculated as follows:

$$\Delta CO2_{p,t} = \sum_{i = 1}^{n}C_{t1, i} -  C_{t0, i}\qquad\qquad (3)$$

Where:

|                    |                                                                                                                                               |
| ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------- |
| $\Delta CO2_{p,t}$ | Stock change in above ground live tree biomass in the project scenario in the activity period, $t$; $(tCO_2)$                                 |
| $C_{t1,i}$         | Carbon contained in above ground live tree biomass at the end of the activity period $(t1)$, for participating property, $i$; $(tCO_2)$       |
| $C_{t0,i}$         | Carbon contained in above ground live tree biomass at the beginning of the activity period $(t0)$, for participating property, $i$; $(tCO_2)$ |

Carbon contained in above ground live tree biomass at the end of the
activity period is calculated as follows:

$$C_{t1, i} = {PP}_{Ct1, i}\times {PP}_{a,t,i}\qquad\qquad (4)$$

Where:

|               |                                                                                                                                         |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| $C_{t1,i}$    | Carbon contained in above ground live tree biomass at the end of the activity period $(t1)$, for participating property, $i$; $(tCO_2)$ |
| $PP_{C,t1,i}$ | Above ground live tree carbon at participating property, $i$, at the end $(t1)$ of activity period, $t$; $(tCO_2/ha)$                   |
| $PP_{a,t,i}$  | Area of participating property, $i$, during activity period, $t$; (hectares)                                                            |

The amount of deferred carbon (carbon existing above and beyond the
baseline scenario) at the end of a cycle is:

$$C_{d} = \Delta CO2_{p,t} - \Delta CO2_{bsl,t}\qquad\qquad (5)$$

Where:

|                      |                                                                                                                                        |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| $C_d$                | Amount of deferred carbon between $t0$ and $t1$, i.e., additional above ground live tree biomass resulting from the project; $(tCO_2)$ |
| $\Delta CO2_{bsl,t}$ | Stock change in above ground live tree biomass in the baseline scenario in the activity period, $t$; $(tCO_2)$                         |
| $\Delta CO2_{p,t}$   | Stock change in above ground live tree biomass in the project scenario in the activity period, $t$; $(tCO_2)$                          |

## 8.3 Leakage

Activity shifting leakage is assumed to be zero given the
Applicability Condition 7 in section 4, as owners/managers must enroll
the entirety of holdings within the project area. Market shifting
leakage, $ML_t$, is calculated as follows.

$$ML_{t} = C_{d}\times WLDF_{t}\qquad\qquad (6)$$

Where:

|          |                                                                                                                                                                                                                             |
| -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $ML_t$   | Market leakage in activity period, $t$; $(tCO_2)$                                                                                                                                                                           |
| $C_d$    | Amount of deferred carbon between $t0$ and $t1$, i.e., additional above ground live tree biomass resulting from the project; $(tCO_2)$; as determined through the procedure described in section 6 and Equation 7 $(tCO_2)$ |
| $WLDF_t$ | Weighted leakage deduction factor during activity period, $t$; (\%)                                                                                                                                                         |

A harvest deferral project using this methodology may apply a leakage
deduction factor, $LDF_t$, of 10\% in Equation _7_ for participating
properties for the first seven years of participation in a project
(VCS Standard v 4.2, Table 3) as this indicates a shift in harvests
across time periods.

This methodology makes the conservative assertion that a rotation
extension (harvest deferral) beyond 7 years may no longer be
associated with a minimal change in total harvest over time (VCS
Standard v4.2, Table 3), and should instead be considered a moderate
to high leakage risk. This is accounted for individually for each
participating property as a component of the sum in Equation 7, below.
Leakage deduction factors are calculated individually for each
property; each property will use a 10\% fixed rate in Equation 7,
below, for the first 7 consecutive years of enrollment. The rate for
an individual property is calculated following the below steps
beginning at consecutive year 8 of enrollment.

Therefore, beginning in year 8 of participation of a property, the
leakage deduction factor associated with a participating property must
be determined.

Per VCS Standard v4.2, this analysis considers carbon stocks in
merchantable aboveground live tree biomass that are the same or
similar to the species in the participating property. Determining the
leakage deduction factor, $LDF_t$, to be applied in Equation 7 is done
as follows:

1.  Calculate the ratio of merchantable biomass to total biomass in the
    area to which harvesting is displaced

    a. The leakage factor is determined by considering where in the
    country logging will be increased as a result of the decreased
    timber supply caused by the project.

    b. Stem-level estimates of merchantable and total biomass should be
    calculated as per section 9.2 and the baseline calculations
    described in Section 7. Merchantable biomass is calculated as
    bole wood present in the volume at risk of harvest, and total
    biomass is the total aboveground live tree biomass in the
    property.

    c. These estimates can be generated from published or privately
    developed rasterized summaries of variables of interest, or,
    regional summaries derived from datasets such as National Forest
    Inventories (e.g., _USFS_ _FIA_ data).

    d. Calculations should be done on a per-property basis.

2.  Calculate the ratio of merchantable biomass to total biomass in the
    participating property

    a. Stem-level estimates of merchantable and total biomass should be
    calculated as per section 9.2 and the baseline calculations
    described in Section 7. Merchantable biomass is calculated as
    bole wood present in the volume at risk of harvest, and total
    biomass is the total aboveground live tree biomass in the
    property.

3.  Apply the appropriate leakage deduction factors as follows:

    a. Where the ratio of merchantable to total biomass in the
    displaced area is higher (greater than 120\%) than the
    participating property level, $LDF_t = 20\%$

    b. Where the ratio of merchantable to total biomass in the
    displaced area is similar (within $\pm 20\%$) to the participating
    property level, $LDF_t = 40\%$

    c. Where the ratio of merchantable to total biomass in the
    displaced area is lower (less than 80%) than the participating
    property level, $LDF_t = 70\%$

Once the appropriate leakage deduction factor, $LDF_t$, has been
determined based on the length of time a participating property has
been included in a project, a weighted leakage discount factor is
calculated.

The weighted leakage deduction factor, $WLDF_t$, is calculated as
follows:

$$WLDF_{t} = \frac{\sum\limits_{i=1}^n ( LDF_{i, t}\times PP_{i, t})}{\sum\limits_{i=1}^n PP_{i,t}}\qquad\qquad (7)$$

Where:

|             |                                                                                                                                                                                                                                                                                                                            |
| ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $WLDF_t$    | Weighted leakage deduction factor during activity period, $t$; (\%)                                                                                                                                                                                                                                                        |
| $LDF_{i,t}$ | Leakage deduction factor during activity period, $t$; apply 10\% for all participating properties $i$ included in the project for up to 7 years; apply appropriate factor, per the above procedure, for all participating properties $i$ included in the project for years 8 and beyond; (\%) (VCS Standard v4.2, Table 3) |
| $PP_{i,t}$  | Participating property $i$ during activity period, $t$; unitless                                                                                                                                                                                                                                                           |

## 8.4 Uncertainty

Uncertainty at all times is defined at the 90\% confidence interval
where the estimated variance exceeds $\pm $ percent from the mean.
Procedures including stratification and the allocation of sufficient
measurement plots will help ensure that low uncertainty results and
ultimately full crediting can result.

It is good practice to consider uncertainty at an early stage to
identify the data sources with the highest uncertainty to allow the
opportunity to conduct further work to diminish uncertainty.

For both the baseline and the with-project case the total uncertainty
is equal to the square root of the sum of the squares of each
component uncertainty and is calculated at the time of reporting
through propagating the error in the baseline stocks and the error in
the project stocks.

The uncertainty deduction applied in Equation 12 (Section 8.6) is
derived according to the following instructions. For the baseline and
project above ground live tree biomass estimations, uncertainty is
assessed based on the sampling error. It is assumed that no
uncertainty is associated with other variables, such as overall
project area, as accurate GIS boundaries are required to conduct the
project.

For the above ground live tree biomass carbon pool in the baseline and
project scenarios, calculation of the mean and 90\% confidence interval
is required. Uncertainty is then documented as the 90\% confidence
interval as a percentage of the mean. These values are calculated for
the activity period total for all participants, that is, the values
computed in Equations 2 and 4.

For baseline above ground live tree biomass, uncertainty is calculated
as follows:

$$UNC_{bsl,t } = UNC_{altbsl,t}\qquad\qquad (8)$$

Where:

|                  |                                                                                                                                                                                          |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $UNC_{bsl,t}$    | baseline scenario in activity period, $t$; (percent)                                                                                                                                     |
| $UNC_{altbsl,t}$ | Uncertainty in above ground live tree biomass at the beginning of activity period, $t$; (half the 90\% confidence interval divided by the total carbon stock, expressed as a percentage) |

For the project scenario above ground live tree biomass, uncertainty
is calculated as follows:

$$UNC_{p,t} = UNC_{alt p,t}\qquad\qquad (9)$$

Where:

|                 |                                                                                                                                                                                    |
| --------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| $UNC_{p,t}$     | Uncertainty in above ground live tree biomass in the project scenario in activity period, $t$; (percent)                                                                           |
| $UNC_{alt p,t}$ | Uncertainty in above ground live tree biomass at the end of activity period, $t$; (half the 90\% confidence interval divided by the total carbon stock, expressed as a percentage) |

Total uncertainty during the activity period is calculated as follows:

$$UNC_{ap,t}  = \sqrt{UNC_{bsl,t}^{2}  + UNC_{p,t}^{2} }\qquad\qquad (10)$$

Where:

|               |                                                                                                           |
| ------------- | --------------------------------------------------------------------------------------------------------- |
| $UNC_{ap,t}$  | Total uncertainty in activity period, $t$; (percent)                                                      |
| $UNC_{bsl,t}$ | Uncertainty in above ground live tree biomass in the baseline scenario in activity period, $t$; (percent) |
| $UNC_{p,t}$   | Uncertainty in above ground live tree biomass in the project scenario in activity period, $t$; (percent)  |

An uncertainty deduction applied to the activity period, $UNC_t$, is
computed as follows:

If $UNC_{ao,t}$ is $\le$ 10\% then $UNC_t$ = 1.5\%.

If $UNC_{ap,t}$ is > 10% then $UNC_t$ is calculated as follows:

$UNC_{t}  = UNC_{ap,t}$ - 10\% + 1.5\% $\qquad\qquad (11)$

Where:

|              |                                                          |
| ------------ | -------------------------------------------------------- |
| $UNC_{t}$    | Uncertainty deduction in activity period, $t$; (percent) |
| $UNC_{ap,t}$ | Total uncertainty in activity period, $t$; (percent)     |

To be conservative, the minimum uncertainty factor is set to 1.5% to
account for possible uncertainty within other unmeasured assumptions
used in calculations and modeling.

## 8.5 Net GHG Emission Reductions / Removals

Net GHG emission reductions/removals are calculated as follows:

$$ER_{t} = (C_{d} - MLt)\times ( 1  - UNC_{t})\times TYC \qquad\qquad (12)$$

Where:

|         |                                                                                                                                      |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| $ER_t$  | Emission reductions / removals during the activity period, $t$; $(tCO_2)$                                                            |
| $C_d$   | Amount of deferred carbon between $t0$ and t1, i.e., additional above ground live tree biomass resulting from the project; $(tCO_2)$ |
| $ML_t$  | Market leakage in activity period, $t$; $(tCO_2)$                                                                                    |
| $UNC_t$ | Total uncertainty deduction factor for activity period; $t$ (\%)                                                                     |
| $TYC$   | Ton year accounting conversion; (\%)                                                                                                 |

# 9 Monitoring

## 9. 1 Data and Parameters Available at Validation

|                                                                                              |                                                                                                               |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| Data / Parameter                                                                             | $PP_{a,t,i}$                                                                                                  |
| Data unit                                                                                    | hectares                                                                                                      |
| Description                                                                                  | Area of participating property, $i$, during activity period, $t$;                                             |
| Equations                                                                                    | (Equation 2)(Equation 4)                                                                                      |
| Source of data                                                                               | GIS data                                                                                                      |
| Value applied                                                                                |                                                                                                               |
| Justification of choice of data or description of measurement methods and procedures applied | GIS coverages and remote sensing data used to determine the extent of the program area must be georeferenced. |
| Purpose of Data                                                                              | Calculation of carbon stocks in baseline and project scenarios                                                |
| Comments                                                                                     |                                                                                                               |

|                                                                                                                                                                                        |                                                                     |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| Data / Parameter                                                                                                                                                                       | TYC                                                                 |
| Data unit                                                                                                                                                                              | Percent                                                             |
| Description                                                                                                                                                                            | Tonne-year accounting conversion                                    |
| Equations                                                                                                                                                                              | (Equation 12)                                                       |
| Source of data                                                                                                                                                                         | Proposed changes to VCS Program, open for public comment 7 February |
| Value applied                                                                                                                                                                          | See Verra Standard.                                                 |
| Justification of choice of data or description of measurement methods and procedures applied                                                                                           |
| This value corresponds to the number of tonne-years required to be climatically equivalent to one permanent tonne, and will vary depending on the number of years deferral is planned. |
| Purpose of Data                                                                                                                                                                        | Calculation of net GHG emission reductions                          |
| Comments                                                                                                                                                                               |                                                                     |

## 9.2 Data and Parameters Monitored

|                                                                  |                                                                                                                                                                                                                           |
| ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Data / Parameter                                                 | $r_{i}$                                                                                                                                                                                                                   |
| Data unit                                                        | \%                                                                                                                                                                                                                        |
| Description                                                      | Fraction of total carbon contained in above ground live tree biomass removed in the baseline scenario for property i, as determined through the procedure described in Appendix A: Baseline Common practice harvest model |
| Equations                                                        | (Equation 1)                                                                                                                                                                                                              |
| Source of data                                                   |                                                                                                                                                                                                                           |
| Description of measurement methods and procedures to be applied: | See Appendix A: Baseline Common practice harvest model for a detailed description of this parameter                                                                                                                       |
| Purpose of Data                                                  | Calculation of baseline scenario                                                                                                                                                                                          |
| Comments                                                         |                                                                                                                                                                                                                           |
|                                                                  |                                                                                                                                                                                                                           |
| ----                                                             | ----                                                                                                                                                                                                                      |
| Data / Parameter                                                 | $PP_{C,t0,i}$ and $PP_{C,t1,i}$                                                                                                                                                                                           |
| Data unit:                                                       | $tCO_2/ha$                                                                                                                                                                                                                |
| Description:                                                     | Above ground live tree biomass at participating property, i, at the beginning (t0) of activity period, t And Above ground live tree biomass at participating property, i, at the end (t1) of activity period, t           |
| Equations                                                        | (Equation 2)(Equation 4)                                                                                                                                                                                                  |
| Source of data:                                                  | Field-based measurements and a spatially explicit estimate of aboveground carbon stocks in live trees                                                                                                                     |

**Description of measurement methods and procedures to be applied:**

Above ground live tree biomass may be quantified using a combination of remote sensing imagery and models combined with plot-based field samples. In either case, biomass must be modelled from these measurements, in order to propagate uncertainty from these values within estimation of project and baseline emissions as in section 8.
Sample sizes and stratification methods may be determined by project developers through a combination of simulation and established statistical sampling norms expected to reach the uncertainty thresholds laid out in section 8.

The specific sampling procedures for above ground live tree biomass are not prescribed in the methodology. However, plot-based field samples must be unbiased, representative of the program area, and adhere to quality control procedures specified by the project proponent. Stratification may be employed but is not required.
Biomass and carbon stocks are determined through design-unbiased field sampling coupled with remote sensing data to develop forest inventories at t0 (beginning of activity period) and t1 (end of activity period) to ensure precise and unbiased estimates of carbon stocks within the project instance.
Remote sensing data in this context may be used in two ways. First, two develop highly-resolved, spatially explicit, wall-to-wall estimates covering all project instances (such as raster data) of biomass and carbon stocks at one or more points in time e.g., t0 and t1. In this case, the remote sensing data is an interim product and the key dataset is the highly-resolved estimate of biomass and carbon stocks, to be combined with field measurements to develop final estimates of biomass and carbon stocks at t0 and t1.

As stated above, field measurements and highly resolved, wall-to-wall estimates of carbon and biomass should be combined in a model framework to facilitate direct estimates of uncertainty and make uncertainty propagation possible. The model framework used should be statistically robust and clearly documented for verification and validation of the project. Model approaches for estimating t0 and t1 carbon can change throughout the project crediting period, but are required to provide robust estimates of uncertainty in the variables of interest.

The second application of remote sensing data under this methodology is in monitoring and detecting change to the forest condition during the activity period. Project developers have flexibility to determine what forms of remotely sensed data may be used for this purpose, but should clearly document through metadata and/or examples what sorts of data products are used and how they are combined with field measurements to generate estimates of forest carbon and biomass at t1.

In the continental United States, above ground live tree biomass will be derived using the component ratio method (CRM) outlined in Woodall et al . Under this approach, the basic steps to obtaining above ground live tree biomass and carbon for a single tree are:

1. Predict bole volume (m3) using tree-level (species, dbh, total height, etc.) and potentially stand-level (basal area, etc.) variables.
2. Predict green wood density (GWD) using tree-level (species, functional group) and potentially environmental (climate, etc.) variables.
3. Estimate bole biomass (kg) as bole volume \* GWD.
4. Estimate biomass of remaining components (stump, bark, crown) through component sub-models.
5. Calculate total live tree aboveground biomass as the sum of all components.
6. Carbon is quantified from biomass through application of a standard carbon fraction of .5 and the ratio of the molecular weight of carbon dioxide/carbon of 44/12 (or one ton of carbon =~3.67 tons of carbon dioxide).
7. Bole volume
   The CRM uses a set of standard volume equations maintained by the USFS Forest Inventory and Analysis (FIA) program to estimate gross cubic-foot volume, and a second set of equations to convert these to sound volume (volume accounting for potential loss due to damage or disease). These equations can be found in Appendix A of Woodall et al. 2011.
8. Bole biomass
   In the CRM, conversion from cubic-foot sound bole volume to bole biomass (lbs) is done with species-specific values of wood specific gravity (WSG) compiled by Miles and Smith (2009) .
   Bole biomass is calculated as:
   bole wood biomass = bole volume x WSG x W
   WSG: oven dry mass of green wood volume
   W: 62.4 lbs; a constant representing the weight of one cubic foot of water
   bole bark biomass = bole volume x BV% x BSG x W
   BV%: bark as a percent of volume (a species-specific constant from FIA)
   BSG: oven dry mass of green bark
   total bole biomass = bole wood biomass + bole bark biomass
9. Component biomass
   Within the CRM, the remainder of a tree's aboveground biomass is estimated as two additional components: stump and top.
   Stump biomass is estimated using equations from Raile (1982) . The procedure is similar to the estimation of bole biomass:
10. Estimate stump volume with Raile's equation (eqn. 5 in Woodall et al. 2011).
11. Calculate stump wood biomass using the same procedure applied to the bole.
12. Calculate stump bark biomass as a proportion of wood biomass.
13. Calculate total stump biomass as the sum of stump wood and bark biomass.
    Top biomass is estimated with an indirect procedure:
14. Estimate total aboveground biomass (TAB) with equations from Jenkins et al. (2004) .
15. Estimate stem (MST) and foliage biomass (FOL) via Jenkins et al. (2004).
16. Estimate stump biomass using Raile (STP).
17. Estimate top biomass as TOP = TAB - MST - FOL - STP
    Before computing CRM total aboveground biomass, stump and top biomass are corrected using the following adjustment factor:
    adj = bole biomass estimated from CRM / bole biomass estimated with Jenkins et al. approach
    The Jenkins et al. (2004) paper consists of allometric equations for direct estimation of total biomass and components based on dbh and species group. FIA uses some of these equations within the CRM as described above.
18. Total aboveground biomass
    Once the biomass of all components has been estimated, total aboveground biomass is calculated as:
    total aboveground biomass = bole biomass + stump biomass + top biomass
19. Biomass of saplings
    For trees < 5" dbh (diameter at breast height), total aboveground biomass is predicted directly using allometric models described by Jenkins et al. (2004), then applying a sapling adjustment factor (Heath et al. 2009) to align these predictions with the CRM.

|                                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ---------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Frequency of monitoring/recording: | For each activity period: Field-based sampling measurements for parameter, PPC,t0,i must be taken no more than 2 months prior to or no more than 2 months after the start of the activity period. Field-based sampling measurements for parameter, PPC,t1,i must be taken no more than 2 months prior to or no more than 2 months after the end of the activity period. In cases where field conditions or force majeure events delay access to measurement locations within the stated time period(s), delayed measurements are permitted if and only if transparent and reasonable methods are employed to adjust the measurements to account for the delay. |
| QA/QC procedures to be applied:    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Purpose of data:                   | Used to quantify baseline and project emissions                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Calculation method:                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Comments:                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |

<br/>

|                                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| \*Data / Parameter                 | Gti                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Data unit                          | \%                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Description                        | Average growth rate of aboveground live tree biomass over activity period for instances.                                                                                                                                                                                                                                                                                                                                                                                                                |
| Equations                          | Equation 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Source of data                     | Data must be derived from repeated remeasurements in the project area. This may be:                                                                                                                                                                                                                                                                                                                                                                                                                     |
|                                    | 1. Field measurements made to generate estimates of PPC,t0,i and PPC,t1,i as listed in previous section                                                                                                                                                                                                                                                                                                                                                                                                 |
|                                    | 2. Continuous Forest Inventory plots with repeated measures from another source                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                    | 3. National Forest Inventory data with remeasured plots in comparable forest types and geography.                                                                                                                                                                                                                                                                                                                                                                                                       |
| Description of measurement methods | Use of sources 1. or 2. above require project developer and procedures to be applied: to identify undisturbed plots, and compute the growth rate in terms of plot-level change in aboveground live tree biomass. Growth rate as a percentage is then applied to the total project area. Use of National Forest Inventory data for this purpose provides a robust and rigorous estimate of growth, if annualized appropriately. Developers deriving a growth rate from NFI data should do the following: |
|                                    | Use the most recent pair of remeasurement data for any NFI plot.                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|                                    | Use undisturbed plots.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                                    | Identify individual stems that were remeasured.                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                                    | Calculate the annualized, individual tree growth rate for aboveground live tree biomass.                                                                                                                                                                                                                                                                                                                                                                                                                |
|                                    | Forest type growth rates for carbon may be calculated using a model with all trees making up the population and                                                                                                                                                                                                                                                                                                                                                                                         |
|                                    | group-level effects estimated by forest type.                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Purpose of Data                    | Estimation of growth rate in baseline scenario                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Comments                           | Forest type may be defined based on available data, and should be applied at a sub-instance scale where appropriate to reflect multiple forest types that may be present within a project and activity instance.                                                                                                                                                                                                                                                                                        |

|                                                                  |                                                                                                                                                                                                                      |
| ---------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Data / Parameter                                                 | MBR                                                                                                                                                                                                                  |
| Data unit                                                        | %                                                                                                                                                                                                                    |
| Description                                                      | Merchantable biomass ratio - Mean merchantable biomass as a proportion of total aboveground tree biomass for each forest type                                                                                        |
| Equations                                                        | None                                                                                                                                                                                                                 |
| Source of data                                                   | The source of data must be chosen with priority from higher to lower preference as follows:                                                                                                                          |
|                                                                  | 1\. Peer-reviewed published sources (including carbon/biomass maps or growing stock volume maps with a spatial resolution of at least 1km)                                                                           |
|                                                                  | 2\. Official Government data and statistics                                                                                                                                                                          |
|                                                                  | 3\. Original field measurements                                                                                                                                                                                      |
|                                                                  | The forest types considered must be only those relevant for the specific market leakage effects, i.e. only forest types with active timber production.                                                               |
|                                                                  | An appropriate source of data will be Government records on annual allowable cuts for the areas of commercial forests.                                                                                               |
|                                                                  | Where volumes are used the source of data wood density is required to convert to merchantable biomass. The source of data on wood densities must be chosen with priority from higher to lower preference as follows: |
|                                                                  | 1\. Knowledge on commercial species and thus an appropriately weighted wood density derived from the density of these species                                                                                        |
|                                                                  | 2\. A region-specific mean wood density as given e.g., in Brown 1997[^7]                                                                                                                                             |
| Description of measurement methods and procedures to be applied: | Default values can be derived using FIA data based on the Forest Type Group                                                                                                                                          |
|  Purpose of Data                                                 | Determination of leakage deduction factor                                                                                                                                                                            |
| Comments                                                         |                                                                                                                                                                                                                      |

## 9.3 Description of the Monitoring Plan

Monitoring of the baseline and project scenarios is required. Stock
changes over an activity period are monitored through field-based
measurements that may be supplemented with remote sensing measurements
and data to detect, for instance, disturbance on participating
properties included in the program area. Plot-based field measurements
are structured as repeated measures by taking measurements at $t0$ and
taking measurements of the same plots again at $t1$. Plots should be
monumented, with flagging and/or rebar, in order to facilitate
remeasurement, and project developers should appropriately account for
plot that cannot be relocated due to harvest or other disturbance. In
order to facilitate an accurate BAU assessment and to quantify
emission reductions over an activity period, a new forest inventory is
constructed for each activity period during a crediting period.
Monitoring and crediting may take place after the end of the activity
period but before the end of the project crediting period, with
explicit permission from the participant; this can include an
appropriately rigorous combination of remote sensing and field
measurement. Remote sensing would be used to monitor forest
disturbance and harvesting levels, and supplemented with field
measurement similar to measurements made at the end of an activity
period. This facilitates the ongoing evaluation of permanence,
leakage, and overall impact of project activities.

Project proponents are required to develop a monitoring plan
documenting the data collection procedures for all monitored
parameters in Section 9.2. The monitoring plan shall include:

- The geographic coordinates of all participating properties within
  the program area;

- If applicable, a description of the use of georeferenced spatial
  data in the context of the required BAU assessment and baseline $(t0)$
  and project $(t1)$ forest inventories;

- Standard operating procedures and quality control/quality assurance
  procedures for forest inventory field data collection and
  management;

  - Procedures must include a discussion of sample design for the
    activity period, including the use of stratification, the sample
    population, and justification of sampling intensity (noting the
    target precision of $\pm 10\%$ of the mean at the 90\% confidence
    interval for biomass estimates);

- Procedures for the long-term storage and archival of all
  project-related data and information which must be archived for a
  minimum of two years after the end of the project crediting period;
  and

- Roles and responsibilities for all personnel involved in project
  monitoring.

# 10 References

Heath, L. Hansen, M. Smith, J. Miles, P. (2009) _Investigation into
Calculating Tree Biomass and Carbon in the FIADB Using a Biomass
Expansion Factor Approach._ Forest Inventory and Analysis.

Jenkins, J. Chojnacky, D. Heath, L. Birdsey, R. (2004) _Comprehensive
Database of Diameter-based Biomass Regressions for North American Tree
Species._ General Technical Report NE-319. U.S. Department of
Agriculture, Forest Service, Northeastern Research Station.

Miles, P. Smith, W. (2009) _Specific Gravity and Other Properties of
Wood and Bark for 156 Tree Species Found in North America_. Res. Note
NRS-38. U.S. Department of Agriculture, Forest Service, Northern
Research Station. 35 p.

Murray, B. McCarl, B. and Lee, H. (2004) _Estimating Leakage from
Forest Carbon Sequestration Programs_. Land Economics. Vol 80 No. 1:
109-124

Prestemon, J. and Wear, D. (2000) _Linking Harvest Choices to Timber
Supply._ Forest Science Vol 46 No. 3: 377 - 389

Raile, G. (1982) _Estimating Stump Volume._ Research Paper NC-224.
U.S. Dept. of Agriculture, Forest Service, North Central Forest
Experiment Station.

Woodall, C. Heath, L. Domke, G. and Nichols, M. (2011) _Methods and
equations for estimating aboveground volume, biomass, and carbon for
trees in the US forest inventory_. U.S. Department of Agriculture,
Forest Service

Winjum, J.K., Brown, S. and Schlamadinger, B. (1998) _Forest harvests
and wood products: sources and sinks of atmospheric carbon dioxide_.
Forest Science 44: 272-284

Appendices cite additional references at the end of their respective
sections.

# 11 Appendix A: Baseline Common practice harvest model

This appendix describes in detail a common practice harvest model
developed for use in the United States as described in the
Additionality section of the Methodology. Implementation of this
common practice harvest model was fully reviewed by an expert panel.
This information is provided as an example for developers working in
the US or other geographies; input data may vary in quality and
availability outside the US. It is expected that baseline models
developed for use with this methodology will subject to review by an
expert panel.

This model generates estimates of the fraction of carbon at risk of
removal during the activity period, $r_i$, used in Equation 1. A
baseline common practice harvest model should be to applied to each
individual half-hectare (or smaller unit) of each participating
property.

To develop the common practice harvest for each participating
property, project developers must estimate the probability that a
given area would be harvested during the activity period, and, if
harvested, what proportion of the standing carbon, $r$, would be
expected to be removed. The aggregation of the carbon-at-risk across
all hectares of the participating properties will generate the
baseline carbon-at-risk of removal via harvesting during the activity
period. Any model used to form the common practice harvest and removal
model must fit within a general model form for predicting the
probability of harvest for a forest stand as a function of timber
value, non-timber value, and cost of harvest that can vary between
landowner types as described by Prestemon and Wear (2000).

$$P_{H} = ƒ( V_{T}, V_{NT}, C_{H}| G )$$

Where $P_H$ is the probability or proportion of harvest, $V_T$ is
the timber value of the stand (generally expressed as monetary units
or volume), $V_{NT}$ is the non-timber value of the stand (generally
expressed as monetary units or volume), $C_H$ is the cost of harvest
(generally expressed as monetary units), and $G$ is a grouping term
that denotes forest stands with similar responses. Note that all of
these variables may be represented in the model form with multiple
components of different units and be unitless in final implementation.
See table 11-1, below.

## 11.1 Mathematical Representation of Model Form

We define r as harvest intensity expressed as a proportion and model
it using a zero-one-inflated Beta distribution:

$r \in [0, 1]$, where

$r = 0$ is no harvest

$r = 1$ is total harvest

$r \in (0, 1)$ is partial harvest

$$
Beta_{zoinf}(r;\alpha,\gamma,\mu,\phi) = \begin{cases}
                                            1-\alpha, & \text{if} \ r = 0\\
                                            \alpha\gamma, & \text{if} \ r =1\\
                                            \alpha (1-\gamma) f(r;\mu,\phi),& \text{if} \ r \in (0,1) \qquad\qquad (13)
                                            \end{cases}
$$

In this model $\alpha$ is the probability of any harvest occurring,
and $\gamma$ is the probability of total harvest, conditional on any harvest
occurring. In the event of partial harvest, the removal rate is
modeled with a Beta distribution with mean $\mu$ and precision $\phi$.

## 11.2 Final Harvest Risk Model Form

We model the dependence of harvest intensity on predictors to explain
heterogeneity in harvest across the landscape. We use logit link
functions to constrain values of $\alpha$, $\gamma$, and $\mu$ to the
interval (0, 1), and a log link function to ensure that $\phi \ge 0$:

$$
\begin{align*}
 \alpha &= \text{logit}^{-1}(X\beta_\alpha),\\
 \gamma &= \text{logit}^{-1}(X\beta_\gamma),\\
 \mu    &= \text{logit}^{-1}(X\beta_\mu),\\
 \phi   &= \text{exp}(X\beta_\phi), \qquad\qquad (14)\end{align*}
$$

where $X$ is a design matrix containing predictor variables and
$\beta_{\alpha}$ is a coefficient vector for $\alpha$ (and so on), and link
functions are applied as needed to satisfy parameter bounds.

Grouping variables such as landowner type $L$ can enter the model as
hierarchical effects on the regression coefficients,

$$
\begin{align*}
\beta_\alpha &\sim \text{Normal} (\eta_\alpha, L, \sigma_\alpha)\\
\beta_\gamma &\sim \text{Normal} (\eta_\gamma, L, \sigma_\gamma)  \\
 \vdots
 \end{align*}
$$

which has the impact of an interaction term between landowner effects
and other effects.

The functional form of these models are given below, using R\'s formula
syntax:

$$r  = \alpha ( \gamma + (1 - \gamma) \times f(\mu,\phi)) \qquad\qquad (15)$$

where,

Harvest occurrence is modeled as

$$
\alpha \~ A_X \times (V_{T0} + V_{T1} + C_{ABG} + D_M + S + D_R + NWOS +\
(V_{T0} + V_{T1} + C_{ABG} + D_M + S + D_R + NWOS | O)) \qquad\qquad (16)
$$

Total harvest decision is modeled as

$$\gamma \~ C_{ABG} + (C_{ABG} | O:F_C)\qquad\qquad (17)$$

Partial harvest intensity is modeled as

$$f(\mu, \Phi) \~ V_{T0} + V_{T1} + C_{ABG} + (V_{T0} + V_{T1} + C_{ABG} | O:F*) \qquad\qquad (18)$$

**Table 11-1: Selected Harvest Risk Model Inputs (see Table 11-2 for a
non-exhaustive list of potential model inputs)**

| Input                                                                                                                   | Symbol | General Harvest Model Term (Eq. 1)                 | Source                                       |
| ----------------------------------------------------------------------------------------------------------------------- | ------ | -------------------------------------------------- | -------------------------------------------- |
| Stand volume (tons ABG C)                                                                                               | CABG   | Non-timber value (VNT)                             | Prestemon & Wear 2000                        |
|                                                                                                                         |
| Stand Value, T0 (USD ($) /ac or ha)                                                                                     | VT0    | Timber value (VT)                                  | Prestemon & Wear 2000                        |
|                                                                                                                         |
| Stand Value, T1 (USD ($) /ac or ha)                                                                                     | VT1    | Timber value (VT)                                  | Prestemon & Wear 2000                        |
|                                                                                                                         |
| Proximity to Mill                                                                                                       | DM     | Proximity to Mill                                  | Pokharel & Latta 2020                        |
| Slope (percent)                                                                                                         | S      | Harvest cost (CH)                                  |                                              |
| Distance to Road                                                                                                        | DR     | Harvest cost (CH)                                  | Prestemon & Wear 2000; Pokharel & Latta 2020 |
| Legally Prohibited                                                                                                      | AX     | Group (G)                                          |                                              |
| State-level proportion  of forestland owned by people who have harvested, from US National Woodland Owner Survey (NWOS) | NWOS   | Group (G) \[only applied to family forest owners\] | Butler et al. 2020                           |
|                                                                                                                         |
| Landowner Type                                                                                                          | O      | Group (G)                                          | Sass et al. 2020                             |
| Forest Type                                                                                                             | F      | Group (G)                                          | FIADB FLDTYPCD                               |
| Forest Class (hardwood/softwood)                                                                                        | FC     | Group (G)                                          | FIADB                                        |

## 11.3 Model Inputs

a. **Harvest Training Data**

The common practice harvest model was trained using FIA data, compiled
following Appendix C.

The common practice harvest model is a unified model of (1)
probability of harvest; and (2) harvest intensity. Harvested plot
conditions were defined as plot conditions where at least one tree has
been designated as 'harvested' on remeasurement by the FIA sampling
crew (change of STATUSCD 1 to 3; Thompson et al. 2017). Harvest
intensity was estimated as annualized change in stand value (as
calculated above) and total carbon (metric tons) as estimated using
the component ratio method (Woodall et al. 2011).

FIA data were processed into both plot-condition level estimates of
harvest occurrence and intensity, as well as population level
baselines using the rFIA package (Stanke et al. 2020). These summaries
reflect the statistically robust method of working with FIA data;
comparably robust but different approaches would be warranted with
National Forest Inventory or other datasets for use in other
geographies.

**Table 11-2: Non-exhaustive List of Input Variables for General Harvest
Risk Model Form**[^8]

| Variable                                       | General Harvest Model Term | Citation (if applicable)                         | Example of variable inputs                                                                                  |
| ---------------------------------------------- | -------------------------- | ------------------------------------------------ | ----------------------------------------------------------------------------------------------------------- |
| Standing timber volume                         | Non-timber value           | Prestemon & Wear (2000)                          | Inventory data                                                                                              |
| Present standing timber value                  | Timber value               | Prestemon & Wear (2000)                          | Inventory data, Pricing data (e.g. published public stumpage values, price indices, Timber-Mart South data) |
| Discounted future standing timber value        | Timber value               | Prestemon & Wear (2000)                          | Inventory data, pricing data (e.g. published public stumpage values, price indices, Timber-Mart South data) |
| Proximity to roads (road construction cost)    | Cost of harvest            | Prestemon & Wear (2000); Pokharel & Latta (2020) | Public geospatial data                                                                                      |
| Proximity to mills (transportation cost)       | Cost of harvest            | Pokharel & Latta (2020)                          | Public or private dataset (e.g. Forisk Mills Database, Latta et al. 2018 database)                          |
| Stand slope                                    | Cost of harvest            | public geospatial data                           |
| Historical harvest and disturbance information | Group                      |                                                  | USFS FIA                                                                                                    |
| Ownership type                                 | Group                      | Prestemon & Wear (2000); Zhang et al (2015)      | USFS FIA                                                                                                    |
| Landowner attributes (e.g. size of property)   | Non-timber value, Group    | Butler et al (2020)                              | NWOS                                                                                                        |

b. **Grouping Variables**

i. **Landowner Type**

Non-private landowner type was retrieved from the OWNCD variable in
the FIADB Condition Table. To ensure the confidential nature of FIA
plot locations and private ownerships, the specific type of private
owner (FFO, TIMO, REIT, NGO, etc.) is not reported in the FIADB.

Private landowner types were retrieved from a raster of modeled
ownership class generated by FIA researchers (Sass et al. 2020). For
all FIA plots on private lands the most common private landowner type
within a 1 km radius of the published plot coordinates was used to
retrieve a private landowner type from the Sass dataset. Extracted
landowner type within 1 km was not available for some FIA plots due to
no data values in the Sass dataset at the fuzzed-and-swapped public
FIA plot coordinates of FIA data. For plots where the Sass dataset did
not have a 1 km private-landowner type prediction, we used the most
common private landowner type within a 10 km radius of the published,
public plot coordinates.

ii. **Legally Excluded Areas**

Project hectarage that is legally restricted from harvest is given a
harvest probability of 0. Legal restrictions are determined through
exclusion of any areas that fall within protected areas defined as GAP
Status 1 or 2 in the Protected Area Database of the United States
(PADUS) (US Geological Survey 2021). In case of discrepancies between
GAP Status codes and landowner understanding of restrictions and
exclusions, landowners may attest and provide evidence that identified
protected areas do not prohibit timber harvest activity, in the form
of legal agreements made with the project developer and/or
documentation about specific programs in which a property is enrolled.

iii. **National Woodland Owner Survey**

We used the state level proportion of area harvested, summarized from
National Woodland Owner Survey data, to capture spatial heterogeneity
in harvest rates. A custom query to obtain the aggregate NWOS response
(respondents of "Yes" to at least 1 of the 4 questions listed above;
see also Figure 4 and Table 4), with associated standard error
estimates, was conducted in September 2021(Butler, personal
communication, 2021). The query and raw results are reproduced in
Appendix B. Responses were summarized and reported by state; see table
below for an example of summarized results for Alabama (Butler et al.
2021).

c. **Covariate Data Sources**

i. **Total Volume**

Total stand carbon (expressed as aboveground carbon in tons) was
calculated on a per acre basis as the sum of tree-level aboveground
biomass, multiplied by a correction factor of 0.5 (Woodall et al.
2011; see also Forest Inventory and Analysis Database: Database
Description and User Guide for Phase 2 (version 8.0), revision:
10.2018):

```
CARBON_AG = 0.5 * (DRYBIO_BOLE + DRYBIO_STUMP + DRYBIO_TOP + DRYBIO_SAPLING + DRYBIO_WDLD_SPP)
```

All variables in the TREE table.

ii. **Merchantable Volume**

Timber value was computed using recent pricing information, and
merchantable volume by product. For each FIA inventoried tree,
merchantable volume is taken from the columns VOLCFNET, VOLCSNET, and
VOLBFNET in the TREE table. These values respectively represent total
merchantable volume $(m^3)$ to a 4" stopper, saw timber volume $(m^3)$
with a variable stopper height based on hardwood/softwood, and saw
timber volume (bdft) with the same stopper heights as sawtimber volume
in $m^3$. All of these volume estimates incorporate deductions for rot,
missingness, and form. Sawtimber volume was taken directly from these
variables, and pulp volume $(m^3)$ was calculated as

VOLCFNET - VOLCSNET. Pulp volume was converted to green tons using
species-level conversion factors found in the FIADB reference species
table (REF_SPECIES). Tree-level merchantable volumes are joined with
prices on both species and product.

iii. **Product Pricing**

Product prices were taken from a combination of publicly published
data and private aggregators. These timber prices are reported at the
county or aggregated-county level by species and species group.
Species were grouped by density class (hardwood, softwood) and mean
prices were calculated at the L3 ecoregion level[^9] and used to fill
missing county-level data. If an L3 ecoregion did not have any
available pricing information, prices were estimated from geographical
neighbor L3 ecoregions. Within a product and class combination (e.g.
hardwood sawtimber) the distribution of prices was examined and if
necessary, some species were placed in a 'high value' subgroup, with a
separate mean price.

We adjusted 2020 stumpage prices using data on exported timber prices
published by the United Nations Economic Commission for Europe Food
and Agriculture Organization (FAO, 2021). The FAO dataset reports
export prices by country and product class (e.g., hardwood sawtimber)
and are reported in nominal values annually. We used the US Bureau of
Labor Statistic's Producer's Price Index (PPI) for 'Logs, bolts,
timber, pulpwood, and wood chips' (US Bureau of Labor Statistics, 2021) to adjust all FAO export values to present day prices. Using the
present-day FAO export prices, we created an index time series
expressing exported timber price relative to 2020 exported timber
prices. Stumpage prices from 2020 (Table 5) were adjusted to the
FIA-recorded year of harvest using the derived FAO index. Both $T_0$
and $T_1$ timber values were adjusted using the $T_0$ index value.

Plot-condition-level value estimates were calculated by summing the
per-acre tree-level values and treated as individual 'stands'. The
median of all FIA 'stand' values within an L3 ecoregion was calculated
from FIA plot summaries. This median was used as the divisor to
consistently rescale all values in an L3 ecoregion. Local scaling of
timber prices allows for more direct comparison of forest valuation
across broad geographic and ecological ranges without the need for an
explicit forest-type or geographic location term. Locally-scaled
timber prices were further adjusted using the information under
A1.3.3.6.

iv. **Slope**

The topographic slope present on harvested and unharvested conditions
was taken directly from the FIADB for the harvest training data.

v. **Distance to Road**

We developed a 60m resolution raster of the Euclidean distance to road
from OpenStreetMap data using the following road types:  \"motorway\",
\"trunk\", \"primary\", \"secondary\", \"tertiary\", \"unclassified\",
\"residential\", \"service\", \"track\", "living_street"
(OpenStreetMap contributors 2021). FIA published points were then
intersected with this raster layer using a 1km focal mean to produce
continuous distance-to-road estimates.

vi. **Proximity to Mill**

Using sawtimber and fiber-fed pulp mill locations (Forisk Consulting),
we calculated a merchantability index (MI) for each product class
(A1.2.1.2), following the methods of Pokharel and Latta (2020). A
categorized rather than continuous surface for was used for each set
of haul distances (Raju Pokharel, personal communication, 2020). This
approach determines a maximum profitable haul time for different
products. Haul times are a function of delivered wood price, transport
cost, trucking capacity, travel speed, and load/unload times. Using
set long and short haul time thresholds for pulp and saw timber and
the OpenStreetMaps road network, haul ranges were mapped for each
product from each mill location.

Each haul range was given a fixed merchantability index and then all
haul ranges were stacked and summed into a single raster representing
cumulative merchantable index (CMI) over a 250 m resolution raster,
and a 1 km resolution focal mean was applied before joining with FIA
plots. To account for regional differences, we scaled all CMI
estimates by the 99th percentile CMI within L2 ecoregions. These
scaled values were multiplied with the locally-scaled stumpage prices.
A CMI of zero indicates that there is no commercial timber market
available.

d. **Ancillary Values**

i. **Growth rates**

Growth rates were calculated by forest type on a percent basis for
total value and volume using model-based population-level estimates
derived from FIA data with appropriate strata-weighing. Species-level
growth rates were estimated for forest type groups (TYPGRPCD; see
Appendix D of the FIA Phase 2 user guide) using the model-based
estimators described in Stanke et al. (2021).

These growth rates are used in the BAU estimation process in two ways:
(1) to project $T1$ volume for harvested trees; and (2) to project $T0$
measurements for the purpose of estimating $T1$ value assuming no
harvest.

ii. **Removal Rates**

Removal rates were calculated from the FIA observational dataset for
harvested conditions. For this implementation, harvests were encoded
based on whether at least one tree has been designated as 'harvested'
on remeasurement by the FIA sampling crew (change of STATUSCD 1 to 3;
Thompson et al. 2017). Percent of carbon removed was calculated as
observed standing carbon at $T1$ minus the product of standing carbon at
$T0$ and the appropriate growth rate from above.

## 11.4 Upper bounds on Carbon at Risk

When a written management plan is not available, a percentile adjustment
that is a function of property size can be applied to transition from
single-forest-condition harvest risk to property-level harvest risk.
Abbas and Clatterbuck (2015) and Milauskas and Wang (2006) report total
annual harvested acres from survey results of logging firms in West
Virginia and Tennessee, respectively. The mean annual harvested area for
logging firms from those papers was 355 acres.

**In this implementation** we defined an upper limit for property size
that could reasonably be entirely harvested within a single year. For
properties up to 355 acres, property-level harvest risk is simply the
sum of all forest-condition harvest risks on the property. Above 355
acres, property-level harvest risk is the sum of all forest-condition
harvest risks times the ratio of 355 to the property area in acres
(Equation 2).

$$
\begin{cases}
            1, & \text{where} \ A_p \le 355 \text{acres}\\
            355 \div A_p, & \text{where}\ A_p \in (355, \sim 6000)\\
            \sim 0.06,& \text{where} \sim A_p \ge \sim 6000 \text{acres} \qquad\qquad (19)
\end{cases}
$$

Where $r_{adj}$ is the harvest risk adjustment factor and $A_P$ is project area in acres.

This results in a geometric decline in adjustment value as property size
doubles (Figure 2). We set a lower bound for the adjustment value that
represents forest-type-specific even-flow management. This lower bound
for adjustment value is determined from SEC filings and published
management plans for institutional private landowners. The lower bound
averages 6\% of at-risk-carbon harvested each year, which corresponds to
approximately a 6000 acre property.

![](Picture1.jpg)

Figure 2: Property-level harvest risk is adjusted to account for
operational harvest limits. We set a maximum annual harvested area of
355 acres, derived from logging firm survey results. Carbon-at-risk for
properties larger than 355 acres were adjusted by the ratio of 355 to
property area (acres).

## 11.5 References Used in Baseline Model Development

Abbas, D., Clatterbuck, W., 2015. A Survey Analysis of Harvesting
Logistics in Tennessee. European Journal of Forest Engineering 1,
84--92.

Belair, E.P., Ducey, M.J., 2018. Patterns in Forest Harvesting in New
England and New York: Using FIA Data to Evaluate Silvicultural
Outcomes. Journal of Forestry 116, 273--282.
https://doi.org/10.1093/jofore/fvx019

Bechtold, W.A. and Patterson, P.L., 2005. The enhanced forest
inventory and analysis program\--national sampling design and
estimation procedures (Vol. 80). USDA Forest Service, Southern
Research Station.

Butler, Brett J. 2021. America's family forest owners. Society of
American Foresters, Washington, D.C.

Butler, B.J., Butler, S.M., Caputo, J., Dias, J., Robillard, A., Sass,
E.M., 2021. Family Forest Ownerships of the United States, 2018:
Results from the USDA Forest Service, National Woodland Owner Survey
(No. GTR-199). USDA Forest Service.

Butler, B.J., Caputo, J., 2021. Weighting for the USDA Forest Service,
National Woodland Owner Survey (No. NRS-GTR-198). U.S. Department of
Agriculture, Forest Service, Northern Research Station, Madison, WI.
https://doi.org/10.2737/NRS-GTR-198

Canham, C.D., Rogers, N., Buchholz, T., 2013. Regional variation in
forest harvest regimes in the northeastern United States. Ecological
Applications 23, 515--522. https://doi.org/10.1890/12-0180.1

FAO, 2021. Historical Timber Product Export Prices. UNECE FAO.

Faustmann, M. 1849. Calculation of the Value Which Forest Land and
Immature Stands Possess for Forestry. Allgemeine Forstund Jagdzeitung,
15:441-55.

Gray, A. N., Brandeis, T. J., Shaw, J. D., McWilliams, W. H., & Miles,
P. 2012. Forest inventory and analysis database of the United States
of America (FIA). In: Dengler, J.; Oldeland, J.; Jansen, F.; Chytry,
M.; Ewald, J., Finckh, M.; Glockler, F.; Lopez-Gonzalez, G.; Peet, RK;
Schaminee, J. HJ, eds. Vegetation databases for the 21st century.
Biodiversity and Ecology. 4: 225-231., 225-231.

Hiraishi, Taka, Buruhani Nyenzi, Ian Galbally, et al. "Annex 1 -
CONCEPTUAL BASIS FOR UNCERTAINTY ANALYSIS." IPCC Good Practice
Guidance and Uncertainty Management in National Greenhouse Gas
Inventories, edited by Richard Odingo, IPCC, 2000, p. 22.

Hiraishi, Taka, Buruhani Nyenzi, Jim Penman, et al. "Chapter 6 -
QUANTIFYING UNCERTAINTIES IN PRACTICE." IPCC Good Practice Guidance
and Uncertainty Management in National Greenhouse Gas Inventories,
edited by Richard Odingo, IPCC, 2000, p. 22.

Luppold, W., Bumgardner, M.S., 2018. TIMBER HARVESTING PATTERNS FOR
MAJOR STATES IN THE CENTRAL, NORTHERN, AND MID-ATLANTIC HARDWOOD
REGIONS. W&FS 50, 143--153. https://doi.org/10.22382/wfs-2018-016

McMahon, G., Gregonis, S.M., Waltman, S.W., Omernik, J.M., Thorson,
T.D., Freeouf, J.A., Rorick, A.H. and Keys, J.E., 2001. Developing a
spatial framework of common ecological regions for the conterminous
United States. Environmental Management, 28(3), pp.293-316.

Milauskas, S.J., Wang, J., 2006. West Virginia logger characteristics.
Forest Products Journal 56, 6.

OpenStreetMap contributors. North America OSM Data Extract. Geofabrik
GmbH, Aug. 2021,
[[https://www.openstreetmap.org]{.underline}](https://www.openstreetmap.org).

Ospina, R., Ferrari, S.L.P., 2010. Inflated Beta Distributions. Stat
Papers 51, 111--126.
[[https://doi.org/10.1007/s00362-008-0125-4]{.underline}](https://doi.org/10.1007/s00362-008-0125-4)

Pokharel, R. and Latta, G.S., 2020. A network analysis to identify
forest merchantability limitations across the United States. Forest
Policy and Economics, 116, p.102181

Polyakov, M., Wear, D.N., Huggett, R.N., 2010. Harvest Choice and
Timber Supply Models for Forest Forecasting. Forest Science 56,
344--355.

Prestemon, J.P. and Wear, D.N., 2000. Linking harvest choices to
timber supply. Forest Science, 46(3), pp.377-389.

Pugh, Scott A.; Turner, Jeffery A.; Burrill, Elizabeth A.; David,
Winnie. 2018. The Forest Inventory and Analysis Database: population
estimation user guide (Edition: November, 2018). U.S. Department of
Agriculture, Forest Service. 166 p. \[Online\]. Available at web
address:

http://www.fia.fs.fed.us/library/database-documentation/

Roesch, F.A., Van Deusen, P.C., 2012. Monitoring forest/non-forest
land use conversion rates with annual inventory data. Forestry 85,
391--398. https://doi.org/10.1093/forestry/cps037

Sass, E.M., Butler, B.J. and Markowski-Lindsay, M., 2020. Distribution
of forest ownerships across the conterminous United States, 2017. Res.
Map NRS-11. Madison, WI: US Department of Agriculture, Forest Service,
Northern Research Station, 11.

Stanke, H., Finley, A.O., Weed, A.S., Walters, B.F., Domke, G.M., 2020. rFIA: An R package for estimation of forest attributes with the
US Forest Inventory and Analysis database. Environmental Modelling &
Software 127, 104664. https://doi.org/10.1016/j.envsoft.2020.104664

Stanke, H., Finley, A. O., & Domke, G. M. 2021. Simplifying small area
estimation with rFIA: a demonstration of tools and techniques. arXiv
preprint arXiv:2109.03863.

Thompson, J.R., Canham, C.D., Morreale, L., Kittredge, D.B. and
Butler, B., 2017. Social and biophysical variation in regional timber
harvest regimes. Ecological Applications, 27(3), pp.942-955.

US Bureau of Labor Statistics, 2021. PPI Commodity data for Lumber and
wood products-Logs, bolts, timber, pulpwood and wood chips, not
seasonally adjusted (No. WPU085). United States Department of Labor.

U.S. Geological Survey (USGS) Gap Analysis Project (GAP), 2021,
Protected Areas Database of the United States (PAD-US) 2.1 Summary
Statistics by GAP Status Code: U.S. Geological Survey data release,
[[https://doi.org/10.5066/P9KJLB3Q]{.underline}](https://doi.org/10.5066/P9KJLB3Q).

Woodall, C.W., Heath, L.S., Domke, G.M. and Nichols, M.C., 2011.
Methods and equations for estimating aboveground volume, biomass, and
carbon for trees in the US forest inventory, 2010.

Zhang, D., Sun, X., Butler, B.J. and Prestemon, J.P., 2015. Harvesting
choices and timber supply among landowners in the Southern United
States. Canadian Journal of Agricultural Economics/Revue canadienne
d\'agroeconomie, 63(3), pp.409-429.

# 12 Appendix B: Baseline Model Fitting Dataset Compilation

## 12.1 Baseline Model Training and Validation Dataset

A model-based approach to setting a dynamic baseline requires a
standardized dataset for model training and validation to ensure
equitable performance across projects and project proponents. National
forest inventories (e.g. the USFS Forest Inventory and Analysis
program) provide a standardized, authoritative sources of data that
cover the large geographic extents, making them well-suited to serve
as baseline data for training and validation. This data selection and
transformation protocol serves to create a single standardized dataset
from a national forest inventory and external covariate data. Section
13.2 describes how to select NFI plots and delineate stands and
section 13.3 describes procedures for adding additional information
beyond the data recorded by the NFI.

Any deviation from the dataset compilation procedures described herein
should be explicitly listed as a variance from the methodology during
VVB review.

## 12.2 National Forest Inventory Data

a. **Plot Selection**

It is not necessary to include all available NFI plots, though a large
enough sample of NFI plots must be selected to comprise a dataset
capable of producing statistically robust estimation of baseline
carbon at risk. Project proponents are encouraged to select a large
sample of NFI plots that are geographically and ecologically similar
to the project area. For NFIs with periodic remeasurement on plot
locations only remeasured plot pairs should be used. If between
remeasurement periods plot conditions relevant to the project have
changed those plots must be excluded. Relevant conditions include all
covariates and grouping factors chosen for the project baseline model
(SECTION 6). Plots may be selected only if the data were collected
under the most recent protocol under which paired plots are available
within an NFI. Only plots representing forested land should be
selected.

b. **Encoding Harvested Conditions**

Harvested conditions are defined as the removal of at least one tree
for commercial or non-commercial use or for land clearing (Thompson et
al, 2017). Encoded harvest conditions should have an associated
harvest date. This date can come from NFI data if recorded at time of
inventory, or from other harvest records when available.

c. **Delineating Contiguous Forest Conditions**

Contiguous forest conditions, analogous to on-the-ground forest
stands, are delineated within an NFI plot using the covariates and
grouping factors chosen for the project baseline model (Section 6).
When sub-plot--level information about these factors is available,
multiple forest stands may be defined on each NFI plot and used as
separate observations in the baseline scenario model(s). Stand
conditions for areas encoded as harvested (C.2.2) are delineated using
pre-harvest conditions (i.e., a harvested state should not be the only
factor used to define a separate stand). If sub-plot--level
information is not available, the entire plot should be considered a
single stand. Summary of conditions for any baseline model input
(e.g., stand volume, stand value, forest type, etc.) should occur at
the level of these delineated forest stands.

## 12.3 Covariate Data

d. **Linking Spatial Data to NFI Data**

NFI plot locations are often kept confidential, making direct spatial
joins with covariate data not possible. Rasterized spatial data should
have a local neighborhood smoothing that matches that of published
imprecise coordinates (e.g. for USFS FIA a resolution or smooth of 1km
would capture 95% of true plot locations (Gray et al, 2012)).
Covariate data reported as points should be rasterized as above.
Covariate data reported as polygons should be at a scale that ensures
exact matching between NFI plot location and polygons (e.g. for USFS
FIA data plot locations are accurate at the county polygon level).
Examples of external covariate datasets can be found in Section 6 and
Appendix A: Baseline Common practice harvest model.

e. **Temporal and Spatial Data Filling**

Covariate datasets may not be concurrent with NFI data collection or
may be spatially incomplete. Data can be filled using the temporally
or geographically closest available data. More advanced data-filling
is also permitted and could include distance-weighted approaches
(temporal/geographic), published index adjustment (temporal, e.g.
adjust timber prices based on producer's price input), or model-based
using additional covariates (temporal/geographic).

f. **Localization of Values**

Some potential covariates described in Section 6 and Appendix A can be
expected to vary substantially across geographic or ecological ranges
(e.g., stand volume and value per acre). Within projects that span
large geographic or ecological ranges such values can be normalized to
allow for a single baseline model. Normalization regions must be
geographically or ecologically meaningful, approximating bounds where
similar values can be expected for a given covariate.

g. **Probable Harvest Thresholds**

Under certain conditions commercial timber harvest is practically or
legally prohibited (e.g., extremely low timber value or volume,
legally restrictive conservation easements). As a conservative measure
to retain additionality stands meeting these criteria can be assigned
a baseline harvest probability of zero regardless of other risk
potential.

## 12.4 References

Gray, Andrew N., et al. Forest Inventory and Analysis Database of the
United States of America (FIA). 2012, p. 8.

Thompson, Jonathan R., et al. "Social and Biophysical Variation in
Regional Timber Harvest Regimes." Ecological Applications, vol. 27,
no. 3, Apr. 2017, pp. 942--55. DOI.org (Crossref),
[[https://doi.org/10.1002/eap.1497]{.underline}](https://doi.org/10.1002/eap.1497).

# 13 Appendix C: Validation and Verification Guidance

## 13.1 Validation

Noting all additional requirements per the VCS Standard, validation
activities may be performed in combination with the first verification
of a project. The scope of validation assessment includes a desk-based
review of the project's design in accordance with the requirements of
this methodology (assessed at the scale of a grouped project, as
applicable). The Validation and Verification Body (VVB) may conduct
site visits to a sample of project instances selected through a
risk-based sampling plan. Following the initial validation of a
project, new instances may be added in subsequent activity periods.
New instances may be reviewed in subsequent activity periods and may
be chosen for sampling per risk-based sampling conducted by the VVB.

The desk-based validation must assess the project's adherence to the
methodology's applicability requirements, the geographic and temporal
boundaries of the project, the GHG SSRs included in the project
boundaries, baseline selection including justification of the inputs
to the project specific BAU model deployed in the selection of the
baseline, methods and development of the forest inventory including
QA/QC requirements, quantification methods, uncertainty assessments,
and data collection and management systems.

All instances included in an activity period are subject to potential
sample selection by the VVB inclusive of a site visit to the
participating property. Where an instance is selected for validation
site visit, the VVB may assess all or certain elements of the above
project-level validation requirements at an instance level.

## 13.2 Verification

After the completion of an activity period and prior to VCU issuance,
verification of the project must be performed via desk review and site
visit(s) selected by the VVB based on risk-based sampling.

Verification may be designed to assess, in the project context, the
ongoing adherence to the methodology's applicability requirements, the
GHG SSRs included in the project boundaries, baseline selection
including justification of the inputs to the project specific BAU
model deployed in the selection of the baseline, methods and
development of the forest inventory including QA/QC requirements and
any updates/remodeling of the forest inventory, emission reduction
calculations, uncertainty assessments, and data collection and
management systems including any modification to these processes since
the project's validation.

It is anticipated that projects utilizing this methodology will be
structured, primarily, as grouped projects. VVBs may select a subset
of instances for site visits during each verification. This selection
may be made based on a risk-based sample of instances included in an
activity period with preference for the selection of instances within
a subregion(s) of the program area that is representative of the
project. The determination of an applicable subregion(s) from which to
select site visit candidates is at the discretion of the VVB.

As a component of the verification site visit(s), VVBs may resample
carbon stocks at the instances chosen. This resampling should be
conducted to ensure statistical agreement between the carbon stocks
measured by the project proponent during the end of activity period
(t1) forest inventory and the carbon stocks measured by the verifier.
These measurements should be paired (i.e., verifiers shall remeasure
t1 inventory project sample plots) and carbon stocks should agree
statistically at the 90% confidence interval using a t-test. VVBs may
select a minimum of 2% of project sample plots for remeasurement
during each verification and, for stratified inventories, may include
sample plots chosen from all strata identified. These may be randomly
selected or chosen based on VVB discretion and informed by further
information including but not limited to size of holdings,
contribution to overall project crediting, or remotely sensed
information.

[^1]:
    Note that application of this methodology in countries other than
    the United States would require a revision to the methodology for
    inclusion of, for instance, relevant biomass estimation techniques
    and modifications to the baseline scenario selection procedure.

[^2]:
    Woodall, C.W., Heath, L.S., Domke, G.M. and Nichols, M.C., 2011.
    Methods and equations for estimating aboveground volume, biomass,
    and carbon for trees in the US forest inventory, 2010.

[^3]:
    Miles, P.D,, Smith, W.B, 2009. Specific Gravity and Other
    Properties of Wood and Bark for 156 Tree Species Found in North
    America.

[^4]: Raile, G.K., 1982. Estimating Stump Volume.
[^5]:
    Jenkins, J.C., Chojnacky, D.C., Heath, L.S., Birdsey, R.A., 2004.
    Comprehensive Database of Diameter-based Biomass Regressions for
    North American Tree Species.

[^6]:
    Heath, L.S., Hansen, M., Smith, J.E., Miles, P.D., 2009.
    Investigation into Calculating Tree Biomass and Carbon in the FIADB
    Using a Biomass Expansion Factor Approach.

[^7]:
    Winjum, J.K., Brown, S. and Schlamadinger, B. 1998. Forest
    harvests and wood products: sources and sinks of atmospheric carbon
    dioxide. Forest Science 44: 272-284

[^8]:
    Note that this is a non-exhaustive list of variables shown to be
    correlated with the probability of harvest. These variables
    represent inputs to the general form of the common practice harvest
    model (Eq. A1).

[^9]: https://www.epa.gov/eco-research/level-iii-and-iv-ecoregions-continental-united-states
