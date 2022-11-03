# creditr

The `creditr` package exposes the methodology used at [NCX](https://ncx.com) to turn our posterior estimates of carbon emissions averted into the credits that we sell. This is achieved via a series of deductions for predictive uncertainty, leakage and harvested wood products.

## Anatomy of the R Package

```
├── DESCRIPTION
├── LICENSE
├── NAMESPACE
├── R [Core package functions]
│   ├── creditr.R
│   ├── data.R
│   └── project_uncertainty.R
├── README.md
├── data [R binary data objects]
│   ├── decay_coefs.rda
│   ├── growth_rates.rda
│   ├── hwp_decay.rda
│   ├── hwp_mix.rda
│   └── supersection_multipliers.rda
├── data-raw [Scripts used to generate /data]
│   ├── growth_rates.R
│   └── hwp.R
├── inst
│   └── extdata (input files used in /data-raw scripts)
│       ├── HWP_decay_profiles.csv
│       ├── HWP_supersection_mixtures.csv
│       └── growth_by_fldgrpcd.csv
├── man
│   *Function Documentation*
└── tests
    *Package Tests*
```
As a matter of convenience, the binary R data are also available as csv files in the directory `methodologies/harvest_deferral_ifm/data/package_data/*`

## Installation

```bash
R -e 'devtools::install("creditr")'
```