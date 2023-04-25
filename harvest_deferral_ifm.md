# Methodology For Improved Forest Management Through Short-Term Harvest Deferral

<br/>

|             |                                                                                                      |
| ----------- | ---------------------------------------------------------------------------------------------------- |
| Version     | 2.0                                                                                                  |
| Prepared By | NCX                                                                                                  |
| Contact     | 2443 Fillmore St. #380-1418<br />San Francisco CA 94115<br />[www.ncx.com](http://www.ncx.com)       |
| Lead Author | Zack Parisa, Chief Executive Officer, NCX <br />[zack@ncx.com](mailto:zack@ncx.com)                  |
| Lead Author | Nan Pond, PhD, Director of Certification, NCX <br />[nan@ncx.com](mailto:nan@ncx.com)                |
| Lead Author | Spencer Meyer, PhD, Head of Science, NCX <br />[spencer.meyer@ncx.com](mailto:spencer.meyer@ncx.com) |

<br/>

### Contents

- [Methodology For Improved Forest Management Through Short-Term Harvest Deferral](#methodology-for-improved-forest-management-through-short-term-harvest-deferral)
    - [Contents](#contents)
- [1 Introduction](#1-introduction)
  - [1.1 Baseline](#11-baseline)
  - [1.2 Quantification Approach](#12-quantification-approach)
  - [1.3 Transparency](#13-transparency)
  - [1.4 Verification](#14-verification)
- [2 Carbon Quantification](#2-carbon-quantification)
  - [2.1 Pools](#21-pools)
  - [2.2 Spatial Scale](#22-spatial-scale)
  - [2.3 Components to Quantify](#23-components-to-quantify)
    - [2.3.1 Baseline Emissions](#231-baseline-emissions)
    - [2.3.2 Project Emissions](#232-project-emissions)
      - [2.3.2.1 Emissions on Project-Period Harvest](#2321-emissions-on-project-period-harvest)
      - [2.3.2.2 Deferral Emissions](#2322-deferral-emissions)
      - [2.3.2.3 Deferral Sequestration](#2323-deferral-sequestration)
    - [2.3.3 Market Leakage](#233-market-leakage)
    - [2.3.4 Conservative Uncertainty Accounting](#234-conservative-uncertainty-accounting)
- [3 Measurements, Models and Benchmarking](#3-measurements-models-and-benchmarking)
  - [3.1 Variables](#31-variables)
    - [3.1.1 Carbon Stocks Held in the Aboveground Live Tree Biomass at the Beginning of the Activity Period](#311-carbon-stocks-held-in-the-aboveground-live-tree-biomass-at-the-beginning-of-the-activity-period)
    - [3.1.2 Carbon at Risk of Harvest at the Beginning of the Activity Period](#312-carbon-at-risk-of-harvest-at-the-beginning-of-the-activity-period)
      - [3.1.2.1 Required Constraints](#3121-required-constraints)
      - [3.1.2.2 Allowable Variances](#3122-allowable-variances)
    - [3.1.3 Carbon Stocks Removed During the Activity Period](#313-carbon-stocks-removed-during-the-activity-period)
    - [3.1.4 Rate of Growth in Aboveground Live Tree Biomass](#314-rate-of-growth-in-aboveground-live-tree-biomass)
    - [3.1.5 Logging Slash, Processing Residues, and Wood Products Produced When a Harvest Occurs](#315-logging-slash-processing-residues-and-wood-products-produced-when-a-harvest-occurs)
    - [3.1.6. Length of the Deferral Period (years)](#316-length-of-the-deferral-period-years)
    - [3.1.7 Discount Rate](#317-discount-rate)
  - [3.2 Transparency and Performance Guidelines](#32-transparency-and-performance-guidelines)
    - [3.2.1 Required Benchmarks](#321-required-benchmarks)
      - [3.2.1.1 Carbon Estimates-NEON Benchmarking](#3211-carbon-estimates-neon-benchmarking)
      - [3.2.1.2 Baseline Estimates-Training Data Benchmarking](#3212-baseline-estimates-training-data-benchmarking)
  - [3.3 Model Training Data](#33-model-training-data)
  - [3.4 Ancillary Data and Parameters](#34-ancillary-data-and-parameters)
    - [3.4.1 Area](#341-area)
    - [3.4.2 Stem-Level Estimates of Biomass and Carbon](#342-stem-level-estimates-of-biomass-and-carbon)
    - [3.4.3 Persistent Carbon](#343-persistent-carbon)
  - [3.5 Field Measurements](#35-field-measurements)
- [4 Requirements and Eligibility Conditions](#4-requirements-and-eligibility-conditions)
- [5 Definitions](#5-definitions)
      - [Aboveground live tree biomass](#aboveground-live-tree-biomass)
      - [Activity period](#activity-period)
      - [Bole](#bole)
      - [Branches](#branches)
      - [Carbon](#carbon)
      - [Forest land](#forest-land)
      - [Harvest](#harvest)
      - [Instance](#instance)
      - [Logging slash](#logging-slash)
      - [mtCO2](#mtco2)
      - [mtC02E](#mtc02e)
      - [Participating property](#participating-property)
      - [Persistent carbon](#persistent-carbon)
      - [Project participant or Participant](#project-proponent-or-participant)
      - [Project proponent](#project-participant)
      - [Shrubs/subshrubs/woody vines](#shrubssubshrubswoody-vines)
      - [Stump](#stump)
      - [Timber](#timber)
      - [Tonne-year](#tonne-year)
      - [Tree](#tree)
- [Appendix A. Project Documentation](#appendix-a-project-documentation)
      - [A. Project Cover Sheet](#a-project-cover-sheet)
      - [B. Property Eligibility](#b-property-eligibility)
      - [C. Property and Pixel Carbon Quantification](#c-property-and-pixel-carbon-quantification)
- [Appendix B. Model Cards](#appendix-b-model-cards)

<br/>
<br/>

# 1 Introduction

This document describes the methods for quantification and crediting of carbon dioxide-equivalent removals and avoided emissions through targeted, short-term forest harvest deferrals. 

This methodology describes the use of remote sensing data products and statistical models to estimate the impact of deferring timber harvests for one or more years. To create a project, the methodology can be applied to one or many properties. Quantification for individual properties and the entire project is done using spatially-explicit remote sensing data, and derived data products including estimates of forest carbon stocking, growth, and disturbance.

This methodology uses tonne-year accounting to enumerate the creditable activity, which is harvest deferral. One tonne-year equals one metric ton (MT) of CO2, sequestered for one year. 

Under this methodology, tonne-years are aggregated into credits according to the details of Section 1.2 (Quantification Approach) below.  These carbon credits are fungible units each of which represents the cumulative avoided emissions and/or removals from the project that mitigate the economic damages of one metric tonne of carbon dioxide (mtCO2E) emitted today. 

 Credits are issued ex post after the end of a harvest deferral activity period when the benefit has been verified. Therefore the climate benefit of credits produced under this methodology is irreversible. 

Projects developed under this methodology may include landholdings of any size, provided that some portion of the property includes forestland subject to timber harvesting during the activity period under the baseline scenario. All forest types under all ownership types may participate, if it can be demonstrated that the requirements and eligibility conditions, which are detailed below, can be met.


## 1.1 Baseline

The methodology employs a performance-based, property-specific evaluation of additionality by comparing a project scenario to the baseline scenario. The methodology uses statistical models and/or measurements to predict the counterfactual baseline harvest levels for all participating properties.

The baseline scenario requires a dynamic performance benchmark, and therefore the baseline scenario should be reconstructed for each activity period using the best available updated data. This ensures that the baseline scenario is continually updated to ensure validity and accuracy for each participating property during each activity period.

Participants must confirm the accuracy of predictions of these baseline harvesting rates for their particular property. See [Section 3](#3-measurements-models-and-benchmarking) for further detail and requirements.

## 1.2 Quantification Approach

This methodology quantifies the climate benefit of delaying harvest on participating properties for one year at a time.  The amount of biomass deferred from harvest during the activity period that would have otherwise been harvested under the baseline scenario can be  denominated in tonne-years, the number of tonnes of CO2 stored for one year. In Equations 6 and 7 (Section 2.3.2.2), tonne-years are decomposed and carbon and time are both key parameters in the calculations to quantify climate impact. 

The ultimate goal of climate mitigation is to reduce the environmental, social and economic damages that occur from emitting excess carbon to the atmosphere. The permanent stream of these damages is calculated using a discount rate
[^1] [^2].

Following Parisa et al[^3], this methodology uses Equation 1 to calculate the difference between the discounted impacts of the baseline scenario with the discounted impacts of the project scenario. The difference between these–that is, the benefit of delaying harvest for one year–is the net benefit, measured in mtCO2, of the project.


The variables included in Equation 1 are the immediate and delayed emissions from harvest in both the project and baseline scenario.

$$\Omega  = \mathcal{U}\left (1 - l) \sum_{n=1}^N (\Delta_{\text{baseline},\ i} - \Delta_{\text{project},\ i}) \right$$

[//]: # "DEV: this is intentionally NOT a header, as then the auto-toc will add, including right aligned formatting"

<a name="equation1"><div align="right">(Equation 1)</div></a>

<br/>
<br/>

Where:

|                                |                                                                                       |
| :----------------------------- | :------------------------------------------------------------------------------------ |
| $\Omega$                       | total impact (mtCO2, discounted to present value)                                                                 |
| $\Delta_{\text{baseline},\ i}$ | discounted impact of emissions in the baseline scenario (mtCO2) for spatial unit $i$ |
| $\Delta_{\text{project},\ i}$  | discounted impact of emissions in the project scenario (mtCO2) for spatial unit $i$  |
| $l$                            | market leakage deduction factor                                                       |
| $\mathcal{U}$                  | conservative uncertainty function                                                     |
| $i$                            | index for spatial unit _i_ (e.g., cell, pixel, property)                              |
| $N$                            | number of spatial units                                                               |

##
The output of Equation 1,  $\Omega$ ,  are units each of which represents the cumulative avoided emissions and/or removals from the project that mitigate the economic damages of one metric tonne of carbon dioxide (mtCO2E) emitted today.
## 1.3 Transparency

This methodology includes specific requirements for transparent reporting of key processes, parameters and metrics. Projects developed under this methodology must meet these requirements on an ongoing basis. Specific transparency requirements can be found in [Section 3.2](#32-transparency-and-performance-guidelines).

## 1.4 Verification

All projects will be verified within 12 months of a completed deferral period.
<br/>
<br/>

# 2 Carbon Quantification

## 2.1 Pools

Under this methodology, the carbon sources, sinks, and reservoirs to be considered are the aboveground live tree biomass pool and the harvested wood products pools.

The definition of the aboveground live tree biomass pool, including tree species and minimum diameter for inclusion, may vary geographically and should be defined within this methodology. In the United States, the minimum diameter at breast height is 1”, and the definition for tree should follow that used by the USDA United States Forest Service Forest Inventory and Analysis program. See the definition of [tree](#tree), including species, in Section 5.

## 2.2 Spatial Scale

Quantification should happen at a discrete and spatially explicit scale, e.g., pixels. Pixels are to be small enough so that one property is made up of many pixels. All values defined in [Section 2.3](#23-components-to-quantify) should be calculated for these discretized and spatially explicit units, that can be aggregated for property- and project-level summaries. For notational clarity, we consider one spatial unit but drop the “_i_” subscript from the following expressions. Project accounting and reporting includes property- and project-level reporting, following the units required for the equations detailed in section 2.3.

## 2.3 Components to Quantify

Each variable included in [Equation 1](#equation1) can be estimated through a series of equations as defined below. Forest growth is estimated using a characteristic growth rate. During and following harvest, wood enters specific product pools which emit carbon into the atmosphere over time via exponential decay at differing rates. Discounting of these emissions is employed to reflect the time-value of carbon emissions in terms of economic damages and social costs to society.

**Discounted proportional emission / sequestration function definitions**

|                          |                                                                                |
| ------------------------ | ------------------------------------------------------------------------------ |
| Discounted emissions     | $$F(\lambda_p, \rho, t, d)\ = \lambda_p e^{- \lambda_p (t - d)} e^{- \rho t}$$ |
| Discounted sequestration | $$H(\gamma, \rho, t)\ = \gamma e^{\gamma t} e^{- \rho t}\ $$                   |

This formulation of the discounted proportional emission and sequestration functions is valid when used with one-year activity periods ( $d$ = 1) as well as exponential growth rates ([Section 3.1.4](#314-rate-of-growth-in-aboveground-live-tree-biomass)). The formula assumes that tree growth is exponential, which is acceptable for a one year activity period. Use of a longer activity period requires a redefinition of these functions to incorporate a more realistic long-term growth model.

### 2.3.1 Baseline Emissions

The quantity $\Delta_\text{baseline}$ is computed as the total discounted emissions in the baseline scenario from harvesting and processing timber into wood products:

$$\Delta_\text{baseline} = C \tilde{r} \sum_{p \in P} m_p \int_0^\infty F(\lambda_p, \rho, t, d = 0) dt$$

<a name="equation2"><div align="right">(Equation 2)</div></a>

<br/>
<br/>

### 2.3.2 Project Emissions

The quantity $\Delta_\text{project}$ is computed as the total discounted emissions in the project scenario from harvesting and processing timber into wood products. It is a function of three components:

$$\Delta_\text{project} = E_0 + E_d - s,$$

<a name="equation3"><div align="right">(Equation 3)</div></a>

<br/>
<br/>

where:
| | |
| :--- | :--- |
| $E_0$ | emissions due to harvests that occur during the project period (_project-period harvest_) |
| $E_d$ | emissions due to the deferred BAU harvest, which occurs at $t = d$ (_deferral emissions_) |
| $s$ | sequestration due to the growth on component of the aboveground live tree biomass for which harvest was deferred |

<br/>

#### 2.3.2.1 Emissions on Project-Period Harvest

The quantity $E_0$ is the emissions due to harvest during the project period:

<br/>

$$E_0 = C r \sum_{p \in P} m_p \int_0^\infty F(\lambda_p, \rho, t, d = 0) dt$$

<br/>

<a name="equation4"><div align="right">(Equation 4)</div></a>

<br/>
<br/>

#### 2.3.2.2 Deferral Emissions

The quantity $E_d$ is the emissions due to the deferred BAU harvest which occurs following the project period:

$$E_d = h_b + h_g$$

<a name="equation5"><div align="right">(Equation 5)</div></a>

<br/>
<br/>

where:

|       |                                                |
| :---- | :--------------------------------------------- |
| $h_b$ | deferred baseline harvest discounted emissions |
| $h_g$ | growth harvest discounted emissions            |

The deferred baseline harvest discounted emissions $h_b$ is the sum of all discounted emissions associated with the harvest deferred for the length of the project period that then occurs at time $d$:

$$h_b = C (\tilde{r} - r) \sum_{p \in P} m_p \int_d^\infty F(\lambda_p, \rho, t, d = d) dt$$

<a name="equation6"><div align="right">(Equation 6)</div></a>

<br/>
<br/>

The growth harvest discounted emissions $h_g$ is the sum of all discounted emissions associated with the harvest of the additional growth accumulated during the project period:

$$h_g = C (e^{\gamma d} - 1) (\tilde{r} - r) \sum_{p \in P} m_p \int_d^\infty F(\lambda_p, \rho, t, d = d) dt$$

<a name="equation7"><div align="right">(Equation 7)</div></a>

<br/>
<br/>

where:

|             |                                                           |
| :---------- | :-------------------------------------------------------- |
| $C$         | project period starting carbon (mtCO2E)                   |
| $\tilde{r}$ | baseline removal proportion                               |
| $r$         | project period removal proportion                         |
| $P$         | the set of all harvested wood pools                       |
| $m_p$       | proportion of carbon allocated to harvested wood pool $p$ |
| $\lambda_p$ | decay rate into the atmosphere of harvested wood pool $p$ |
| $\rho$      | rate at which to discount future emissions                |
| $\gamma$    | growth rate                                               |
| $t$         | time of emission                                          |
| $d$         | length of the deferral period (years)                     |

#### 2.3.2.3 Deferral Sequestration

The quantity $s$, is the sequestration from the atmosphere that occurs due to the project-period growth of the deferred harvest:

$$s = C (\tilde{r} - r) \int_0^d H(\gamma, \rho, t) dt$$

<a name="equation8"><div align="right">(Equation 8)</div></a>

<br/>
<br/>

where:

|             |                                            |
| :---------- | :----------------------------------------- |
| $C$         | project period starting carbon (mtCO2E)    |
| $\tilde{r}$ | baseline removal proportion                |
| $r$         | project period removal proportion          |
| $\rho$      | rate at which to discount future emissions |
| $\gamma$    | growth rate                                |
| $t$         | time of emission                           |
| $d$         | length of the deferral period (years)      |

### 2.3.3 Market Leakage

Activity shifting leakage is assumed to be zero because owners/managers must enroll the entirety of holdings within the project area. Market shifting leakage, $l$, is represented using a fixed 20\% leakage deduction factor for one-year harvest deferrals.

$l$ = 0.2

### 2.3.4 Conservative Uncertainty Function

Full project uncertainty integrates the uncertainty in forest inventory estimates as well as uncertainty in the baseline and project scenarios. This methodology requires the full, explicit propagation of that uncertainty into a final uncertainty distribution that characterizes belief about the true total climate impact of the project (denominated in units that correspond to the mitigation of economic damages associated with emitting one metric tonne of C02 today). To account conservatively for the uncertainty, this credits are issued at the 33rd percentile of this uncertainty distribution. That is, given some distribution $\mathrm{D}$ of probable impact, the conservative uncertainty function $\mathcal{U}(\mathrm{D})$ is defined as the 33rd percentile of $\mathrm{D}$.

$$\mathcal{U}(\mathrm{D}) = \mathrm{quantile}(\mathrm{D}, 0.33)$$

<a name="equation9"><div align="right">(Equation 9)</div></a>

This function is applied to the uncertainty distribution $\mathrm{D}$ for each activity period and is calculated at the project scale, aggregating all enrolled properties.

# 3 Measurements, Models and Benchmarking

## 3.1 Variables

To estimate the impact of projects developed under this methodology, project developers should quantify each variable described in [Section 2](#2-carbon-quantification) using measurements and/or appropriate statistical models.

### 3.1.1 Carbon Stocks Held in the Aboveground Live Tree Biomass at the Beginning of the Activity Period

Variable: $C$

Estimation guidelines:

Above ground live tree biomass may be quantified using remote-sensing derived data products and/or statistical models. Plot-based field data from participating properties may also be used. Biomass models must provide principled uncertainty quantification that can be propagated forward to inform the project-level uncertainty distribution such as can be input to the uncertainty conservativeness function as defined in [Section 2.3.4](#234-conservative-uncertainty-function)

### 3.1.2 Carbon at Risk of Harvest at the Beginning of the Activity Period

Variable: $\tilde{r}$

Estimation guidelines:

The methodology does not prescribe a specific model or model form to estimate the predicted removal of carbon under the baseline scenario for the activity period. Project developers are expected to develop and transparently benchmark models to predict the baseline scenario (see [Section 3.2](#32-transparency-and-performance-guidelines)), and thereby to determine the credible activity incentivized by the project. These models should reflect best available statistical techniques, robust datasets, and associated quantification of uncertainty to produce correct input for the conservative uncertainty function as defined in [Section 2.3.4](#234-conservative-uncertainty-function)

Models should also be spatially explicit, able to be applied at spatial scales finer than that of individual participating properties, and predictions subsequently summed for individual properties and across the overall project.

#### 3.1.2.1 Required Constraints

Baseline models should contain steps to exclude from the estimate of carbon at risk any portions of participating properties that are subject to legal constraints on harvesting; this may include but is not limited to protected areas such as those covered by some types of conservation easements or other legal restrictions (as per the Applicability conditions).

Baseline models should also contain steps that prevent property-level predicted harvest amounts from exceeding operational harvest limits, both for logistical reasons (i.e. inoperable sloped terrain) as well as regional supply chain constraints. These may be derived from the published literature and may be supplemented with participant-provided information. Participants must confirm the suitability of predictions of these baseline harvesting rates through written agreement.

#### 3.1.2.2 Allowable Variances

In the event there is an existing exercisable option for timber purchase on a participating property held by someone other than the landowner, the holder of that option can enroll the property. In that case the probability of harvest during the activity period may be set to 100\% within the context of model prediction and application, subject to economic feasibility and operability constraints consistent for all properties.

In the event there is a written harvest plan for the property prepared by a licensed forester, this may be used to inform the estimate of standing carbon expected to be removed in a harvest. Historic harvest records for a property and ownership may be used to provide the estimate of standing carbon expected to be removed in a harvest.

Project developers must maintain records documenting the exercising of either of these variances for participating properties.

### 3.1.3 Carbon Stocks Removed During the Activity Period

Variable: $r$

Estimation guidelines:

The proportion of carbon stocks removed during the project period may be quantified using remote-sensing derived data products and/or statistical models combining remotely sensed data with plot-based field samples. Estimates should be spatially explicit and cover the entire eligible area of all enrolled properties, as per Eligibility criteria. Models must be structured to propagate uncertainty from these values into a project-level uncertainty distribution such as can be input to the conservative uncertainty function as defined in [Section 2.3.4](#234-conservative-uncertainty-function)

### 3.1.4 Rate of Growth in Aboveground Live Tree Biomass

Variable: $\gamma$

Estimation guidelines:

Growth rate is defined as the average growth rate, by forest type, of aboveground live tree biomass over activity period for project activity periods.

Growth rates should be calculated from repeated remeasurements in the project area. This may be:

- Paired field measurements made at the beginning and end of the activity period.

- Continuous Forest Inventory plots established in the local area with repeated measures

- National Forest Inventory data with remeasured plots in comparable forest types and geography

Regardless of data source the project developer should identify undisturbed plots, and compute the growth rate in terms of plot-level change in aboveground live tree biomass. Growth rate as a percentage is then within the project area. Forest type growth rates for carbon may be calculated using a model with all plots or trees making up the population and group-level effects estimated by forest type. Developers are expected to stratify or otherwise delineate areas where appropriate to reflect multiple forest types that may be present within a project and activity instance. Where field measurements are not available, localized estimates from peer-reviewed publications may be used.

### 3.1.5 Logging Slash, Processing Residues, and Wood Products Produced When a Harvest Occurs

Variable: $P$, the set of all harvested wood product pools

Variable: $m_p$ , proportion of carbon allocated to harvested wood product pool $p$

Estimation guidelines:

Regional product mixture averages such as those published by Climate Action Reserve (CAR)[^5] may be used by default (see [Supplementary Data Tables](https://github.com/ncx-co/natural-capital-alliance/blob/main/methodologies/harvest_deferral_ifm/data/car_wood_products_by_supersection.csv)). Where possible, participants may provide information on the utilization of the wood products they produce to be employed by developers to localize estimation of these variables.

Variable: $\lambda_p$, the decay rate of harvested wood pool $p$

Data tables from the United States Forest Service, such as those in Smith et al. 2006 [^6], may be used by default (see [Supplementary Data Tables](https://github.com/ncx-co/natural-capital-alliance/blob/main/methodologies/harvest_deferral_ifm/data/hwp_decay_rates_usfs_smith_et_al.csv)).

### 3.1.6. Length of the Deferral Period (years)

Variable: $d$

Estimation guidelines: The minimum deferral period is one year. Project developers may use a different deferral period length for one or more properties within a project and activity period, and document
accordingly.

###

### 3.1.7 Discount Rate

Variable: $\rho $

Estimation guidelines:

In order to estimate the equivalent economic benefit of a tonne-year of carbon stored today compared to a tonne stored permanently (where permanent is defined by storage on geologic timescales), this method applies a 3\% annual net discount rate. This is consistent with current leading economic research and federal guidance relating to the Social Cost of Carbon[^7]. Applying a 3\% annual net discount rate implies:

$\rho = -\log(1-0.03)$

## 3.2 Transparency and Performance Guidelines

Project developers must produce a Model Card (see [Appendix B](#appendix-b-model-cards)) including quantitative benchmarking data for each model and activity period.

Model Cards should contain information including:

- Background and application of model within methodological accounting framework

- Data inputs

- Model structure

- Handling of missing data

- Implementation, including a data model diagram

- Limitations

as well as a description of at least two quantitative benchmarking tests, their rationale, and the performance of the model as measured by the test(s).

### 3.2.1 Required Benchmarks

Project proponents are not limited in the particular forms of statistical models or to the use of parametric or nonparametric approaches. However, this methodology establishes particular quantitative benchmarking approaches that must be applied for all models used for carbon estimation and baseline estimation.

In each case, the required benchmark should be included as one of the two quantitative benchmarks reported in the model card ([see Model Card section](#appendix-b-model-cards)) , as well as included in the Project Cover Sheet.

Where a project proponent utilizes field measurements in place of predictive models for any key parameter, a field audit of a minimum of 10% of plots should be performed by a third-party organization and the results submitted along with other project documentation.

#### 3.2.1.1 Carbon Estimates-NEON Benchmarking

This test should be applied for models used to estimate carbon stocks held in the above-ground live tree biomass at the beginning of the activity period. $C$, ([Section 3.1.1](#311-carbon-stocks-held-in-the-above-ground-live-tree-biomass-at-the-beginning-of-the-activity-period)).

Dataset:
The NEON Vegetation Structure[^8] dataset includes intensively sampled vegetation plots (mostly 1,600 m^2 in size) around the continental United States. Species and size of every tree in each plot are recorded on a periodic basis.

Comparisons using the NEON benchmark should be made at the scale of NEON distributed and tower base plots. This requires C model output to be summed to the plot scale for this benchmark, to allow comparisons based on the total C of each plot. All terrestrial, forested NEON plots (i.e., those provided in [^8]) falling within the project area with a minimum buffer of 50 km applied must be used for this benchmark. A minimum of 20 NEON plots is required for this test, which may require a larger buffer in some cases. The most recent measurements from a given plot should be used.

NEON Vegetation Structure data should be summarized to total standing aboveground biomass and carbon for each plot. Project proponents should use the same stem-level biomass and carbon procedures as are used elsewhere in the project, following [Section 3.4.2](#342-stem-level-estimates-of-biomass-and-carbon).

The key metric of performance is the Spearman correlation between carbon in aboveground live tree biomass at NEON plots and the estimated carbon from the C predictive model. A correlation coefficient of at least 0.55 is required and must be demonstrated and reported. Additionally, the total NEON plot carbon value must fall within the 95% confidence or credible interval for the estimated C value at that plot location for at least 75% of the NEON plots tested.

Reporting requirement:
Project proponents must report two benchmark values:
Spearman correlation coefficient
Percentage of NEON plots tested for which NEON plot carbon falls within the 95% CI for the model estimate.

In addition to reporting the two benchmark values, project proponents must provide a table showing NEON carbon values and C model prediction carbon values for all NEON plots included in the test. Proponents are encouraged to make their benchmarking code public, and to utilize existing NEON software packages (for example, neonUtilities[^9]) for implementing this benchmark.

#### 3.2.1.2 Baseline Estimates-Training Data Benchmarking

This test should be applied for models used to estimate the baseline removal proportion of carbon stocks at risk of harvest at the beginning of the activity period, $\tilde{r}$, ([Section 3.1.2](#312-carbon-at-risk-of-harvest-at-the-beginning-of-the-activity-period)).

Dataset:
In the absence of a fiduciary dataset of forest harvesting, baseline harvest risk models should be benchmarked by comparing performance of the full model to an intercept-only model of geographic or forest-type regional average(s). The benchmark metrics are lpd (log predictive density) as applied to continuous proportional removal rates that are neither literal zeros nor literal ones, and lpm (log predictive mass) as applied to the distinction between literal zeros and non-zero harvests. Both metrics should be computed over validation data that were withheld during model fitting. The withheld sample must be randomized and must include at least 100 harvesting events and at least 100 non-harvesting events.

Regional average models should be defined using geographic boundaries (in the US, state or EPA Ecoregion are acceptable) or ecological boundaries (forest or ecosystem types). A regional average model should therefore be defined using only one predictor, that of the geographic bound used for the region. It is acceptable to regularize the region-specific estimates of harvest risk via a random effects specification of the regional effects. The same training dataset should be used for the regional average model and the full baseline harvest risk model.

Proponents must demonstrate non-overlap of the 95% confidence (or credible) intervals, for both lpd and lpm, between the regional model and full model.

Reporting requirement:
Project proponents should report four intervals. These are the 95% interval (median or mean, and upper and lower bounds of the interval) for the lpd and lpm for the regional and full models. Intervals for both lpd and lpm must be non-overlapping for the model to meet this requirement.

## 3.3 Model Training Data

Inputs to the models used must be grounded in peer-reviewed research and/or empirical evidence. Examples of this include, but are not limited to, region- and forest type-specific normal silvicultural implementations as observed in an authoritative source such as national forest inventory data, peer-reviewed publications, or government/NGO reports; silvicultural implementations may also be empirically derived from national forest inventory or other repeated measurements in the region of interest during model development.

When making use of published datasets, precision and vintage should be prioritized to ensure the best available data are used wherever possible. Both public and private datasets are subject to the same level of detail in the Model Design Documents.

## 3.4 Ancillary Data and Parameters

### 3.4.1 Area

Areal estimates of enrolled properties, and the eligible area of those properties, should be made using appropriate statistical approaches and software to calculate spatial information. Projects, including all spatial layers and spatially-explicit estimates, must be georeferenced.

Spatial layers used to objectively delineate or define forests should be documented if different from the definition of [Forest land](#forest-land) provided below.

### 3.4.2 Stem-Level Estimates of Biomass and Carbon

Project models may make use of estimates of stem-level aboveground live tree biomass, for summary of cruise data or other purposes. Within the United States, estimates of biomass and carbon may be derived from a public dataset of average aboveground live tree biomass. Stem-level estimates of biomass and carbon may also be made following regionally appropriate allometric equations.

### 3.4.3 Persistent Carbon

For some properties, specifically those with regionally unique market conditions, or particularly large in area, there is an expectation that harvest deferral relative to the baseline may result in additional carbon that remains on the property in subsequent years. This is persistent carbon. Persistent carbon occurs, for example,when a participant is only able to harvest a certain absolute amount of volume in a given year, due to legal, market, or operational constraints. Deferral of some or all of that harvested volume in one year does not result in doubling the carbon at risk in the following year because the participant may not practically be able to recover harvests foregone in a previous year. Instead this methodology requires a more consistent estimate of carbon at risk (subject to an updated baseline calculation, per the methodology) and some amount of volume retained on the landscape for a much longer time period. In this case, the baseline increases because of previously accrued growth, but the baseline does not solely account for the additionality of this persistence in subsequent years. The project scenario in subsequent years may include the impacts of previous deferral as a component of the carbon at risk and as a separate estimate of persistent carbon that can be quantified and credited, and this can be continued as long as that property continues to be enrolled in consecutive activity periods. Project developers must provide documentation detailing the definition and application of persistent carbon equations for each project.

## 3.5 Field Measurements

Monitoring of projects developed under this methodology should heavily leverage remotely sensed datasets to ensure complete coverage within a participating property. In addition, plot-based field measurements may be employed. These may be one-time measurements or structured as repeated measures at one or more times during the activity period. Field measurements may be used to calibrate one or more statistical models predicting inventory, change, loss, growth, or other significant parameters.

Cruising protocols, sampling details, plot audit procedures, and the application of field data within project accounting must be documented for each project and activity period, following the Field Mensuration Documentation Procedure.

<br/>
<br/>

# 4 Requirements and Eligibility Conditions

This methodology applies to harvest deferral project activities that reduce net greenhouse gas (GHG) emissions in managed forests relative to a baseline scenario over an activity period. The activity period may be as short as one year but may also be longer. There is no maximum number of years for enrollment; instances can enroll in new projects or new activity periods as long as they continue to meet all applicable conditions. The baseline must be recalculated for each property and activity period, per the conditions below.

This methodology is applicable under the following conditions:

> Participating properties are subject to timber harvesting in the baseline scenario during the activity period as determined via a business as usual (BAU) assessment. This should be conducted for each activity period to re-assess additionality.

> Participating properties qualify as forests and must remain forests while implementing the project activity, per the definition of forests provided in [Section 5](#5-definitions) below.

> The project participant has control over the participating property, per the definition of Participants provided in [Section 5](#5-definitions) below, or is the holder of a timber lease option.

> The project developer must be either a project participant or an interested party with an agreement to implement the project on behalf of the project participant(s).

> There are no encumbrances, regulatory or otherwise, on the participating property that would completely impair the participant’s ability to harvest. Fractional encumbrances are allowed.

> No other claims related to carbon dioxide removals or related environmental benefits have been made for the forests on the participating property during the activity period.

> The participating property falls within the program area.

> All forested property within the program area (i) that is owned by a particular set of beneficial owners (whether an individual, family, legal entity, or otherwise) or (ii) over which a single property manager has been given legal managing authority on behalf of a particular owner or set of owners, is enrolled in the project and is considered a “participating property” per the Definitions section below.

Project developers are required to perform title checks on a sample of enrolled participants.

Participating properties are not required to have an authorized management plan or program in place. To achieve improvement over the crediting baseline, harvests must be deferred in whole or in part relative to the amount expected to be removed under the BAU assessment. Performance (i.e., harvesting levels) may be assessed through a combination of remote sensing data and field measurement.

<br/>
<br/>

# 5 Definitions

#### Aboveground live tree biomass

Live forest biomass above the soil, including the stem, stump, branches, and bark, in tree species.[^10]

#### Activity period

The interval of time during which the project activity is undertaken on a participating property. Minimum of one year.

#### Bole

The component of a tree between the 1-foot stump and a limiting top diameter; the main stem.[^10] See also "Central Stem"[^11]. Default is a 4" minimum diameter, as per the USFS FIA.

#### Branches

Woody material not part of the tree bole, extending laterally or located above the merchantable bole diameter (i.e., the tree crown).[^10]

#### Carbon

Carbon is assumed to be one-half the value of biomass and is derived by summing the aboveground biomass estimates and multiplying by 0.5.[^10]

#### Forest land

Forest Land has at least 10 percent canopy cover of live tree species of any size or has had at least 10 percent canopy cover of live species in the past, based on the presence of stumps, snags, or other evidence. Additionally, the condition is not subject to nonforest use(s) that prevent normal tree regeneration and succession, such as regular mowing, intensive grazing, or recreation activities.[^12]

#### Harvest

The physical cutting, or cutting and removal, of trees or parts of trees from a given forested site.[^13]

#### Instance

In this methodology, an instance is a participating property that shares an activity period with other participating properties, meaning they start and finish the project activity at the same time as one another. Individual instances may engage in one or more activity periods, i.e. one or more years of harvest deferral, and therefore not all instances within a project would have the same number of years of harvest deferral.

#### Logging slash

The residue, e.g. treetops and branches, left on the ground after logging.[^14]

#### mtCO2

Metric tonnes of carbon dioxide.

#### mtC02E

Metric tonnes of the amount of carbon dioxide emission that would cause the same integrated radiative forcing, over a given time horizon (100 years or greater), as an emitted amount of a greenhouse gas or a mixture of greenhouse gases.[^15]

#### Participating property

Forested area meeting the applicability conditions under [Section 4](#4-requirements-and-eligibility-conditions); distinguishable from surrounding forestland by virtue of its ownership or management by a participant, as relevant; enrolled voluntarily by the participant in the project.

#### Persistent carbon

Additional carbon generated through one or more years of harvest deferral that cannot reasonably be expected to be harvested at a future date due to operational constraints.

#### Project participant or Participant

A party who has the right, without the consent of any third party (or in the case of an authorized representative of the legal owner(s), without any further permission or consent from the legal owner(s), to (i) harvest, or defer the harvest of, the timber on all land within the participating property, subject to constraints within the municipality, county, state, and/or country in which such property is located and applicable state and federal environmental law and regulations, and (ii) sell to a third party all environmental attributes and rights to make environmental claims related to such harvest or deferred harvest. It is understood that such rights may be held by different types of parties, including but not limited to property managers, timber rights owners, fee simple owners, and holders of any other form of land tenure that includes the rights specified herein. In the case of privately-owned forests in the U.S., the most common relevant form of tenure would typically be fee simple ownership evidenced by possession of title to the asset.

#### Project proponent

The individual or organization who the person is responsible for carrying out a project and has the legal right to do so. Unless otherwise stated, project proponents are the de facto owners of credits produced.

#### Shrubs/subshrubs/woody vines

Woody, multiple-stemmed plants of any size, subshrubs (low-growing shrubs under 1.5 feet tall at maturity), and woody vines.[^12] Note: Woody species not appearing on the Tree species list, (see [Tree](#tree) definition), are consequently considered shrubs, subshrubs, or vines. Woodland species in the US are handled as per USFS FIA guidelines.

#### Stump

Base of tree up to 12 inches from ground level, or higher if defined by what remains after harvest.[^10]

#### Timber

Trees that can be cut and removed from a forest and are suitable for use as the raw material for items made of wood, such as lumber, plywood, paper, and other products.[^13]

#### Tonne-year

One metric ton (MT) of CO2e, sequestered and stored for one year.

#### Tree

A woody perennial plant, typically large, with a single well-defined stem carrying a more or less definite crown, sometimes defined as attaining a minimum diameter of 3.0 inches (7.6 cm) and a minimum height of 15 feet (4.6 m) at maturity.[^12] Note: Trees are further defined by genuses / species that are recorded during data collection for training datasets used. For example, the US Forest Service FIA dataset defines trees as those species appearing in the FIA master tree species list.[^16]

<br/>
<br/>

# Appendix A. Project Documentation

Project documentation for verification should consist of the following materials. The raw data used may be required during verification.

#### A. Project Cover Sheet

High-level fields about the project that are available prior to or
during project.

| **ID** | **Item**                                                                           |
| :----- | :--------------------------------------------------------------------------------- |
| A1     | Project Name                                                                       |
| A2     | Project Country                                                                    |
| A3     | Project List of States                                                             |
| A4     | Activity Period Start Date                                                         |
| A5     | Activity Period End Date                                                           |
| A6     | Project Area (Forested Acres)                                                      |
| A7     | Number of Enrolled Properties (Activity Start)                                     |
| A8     | Number of Enrolled Properties (Activity End)                                       |
| A9     | Leakage Deduction Factor $( l)$                                                    |
| A10    | Rate at Which to Discount Future Emissions $(\rho)$                                |
| A11    | Median of Uncertainty Distribution of Final Impact $(m)$                           |
| A12    | Mean of Uncertainty Distribution of Final Impact $(\mu)$                           |
| A13    | Discounted Impact of Emissions in the Baseline Scenario $(\Delta_\text{baseline})$ |
| A14    | Discounted Impact of Emissions in the Project Scenario $(\Delta_\text{project})$   |
| A15    | Total Impact After Applying Conservative Uncertainty Function $(\Omega)$           |

#### B. Property Eligibility

| **ID** | **Item**                                                                                  |
| :----- | :---------------------------------------------------------------------------------------- |
| B1     | \% Forested vs. Non-Forested Acres (Activity Start)                                       |
| B2     | Project proponent is the owner or has legal right to manage forest                        |
| B3     | No encumbrance, legal or otherwise that would impair the participant’s ability to harvest |
| B4     | Not participating in any other carbon projects concurrently                               |
| B5     | Entirety of seller property enrolled                                                      |
| B6     | Title Check Results for subset of enrolled properties                                     |

#### C. Property and Pixel Carbon Quantification

For each delivering property please provide the following pixel level information.
This information will be used to verify the sum of the difference
between discounted emissions in baseline scenario and project scenario.

| **ID** | **Item**                                      |
| :----- | :-------------------------------------------- |
| C1     | Property ID                                   |
| C2     | Pixel ID                                      |
| C3     | FIA Supersecion                               |
| C4     | Area                                          |
| C5     | FLDGRPCD (package data)                       |
| C6     | Discounted Emissions Integrals (package data) |
| C7     | Discounted Growth Integrals (package data)    |
| C8     | Project Period Starting Carbon $(C)$          |
| C9     | Baseline Removal Proportion $(\tilde{r})$     |
| C10    | Project Period Removal Proportion $(r)$       |
| C11    | Growth Rate $(\gamma)$                        |
| C12    | Total Impact $(\Omega)$                       |

Additional requirements:

Project proponents must produce a Model Design Document and associated quantitative benchmarking data for each model and activity period (see [Appendix B](#appendix-b-model-cards)).
A spatially explicit definition of forest, or defined forest “mask” layer, if applicable, should be included.

Growth rate documentation (if not using package data):
-data source
-stratification applied
-the project proponent should identify undisturbed plots, and compute the growth rate in terms of plot-level change in aboveground live tree biomass

Cruising protocols, sampling details, plot audit procedures, and the application of field data within project accounting.

Variances - records required if used:
-Holder of exercisable option for timber purchase has enrolled
-Historic harvest records used for removal rates
-Management plan used for removal rates

<br/>
<br/>

# Appendix B. Model Cards

- To be used for any non-public model used in methodological accounting
- To be updated per project

Background and Application

- 1-4 lines explaining the way this model fits into the accounting for the project
- What does it predict? When is it applied?

Data Inputs

- Name, source,
  - Brief description of dataset
  - Transformations or summaries applied

Model Structure

- Functional form

Implementation

- Required: Data model diagram
- Optional: Pseudocode, database schemas, flow diagrams, wireframes, components, input validation, security considerations, API endpoints, sample API requests/responses.

Limitations

- Limitations of approach, inputs, model structure, implementation

Benchmarking Test \#1

- Description of test
- Description of rationale

Performance - Results of Benchmarking Test \#1

- Performance in quantitative terms
- Contextualization of this value

Benchmarking Test \#2

- Description of test
- Description of rationale

Performance - Results of Benchmarking Test \#2

- Performance in quantitative terms
- Contextualization of this value

[^1]: Fearnside, P.M., Lashof, D.A. & Moura-Costa, P. "Accounting for time in mitigating global warming through land-use change and forestry." Mitigation and Adaptation Strategies for Global Change 5, (2000): 239–270. https://doi.org/10.1023/A:1009625122628.
[^2]: Nordhaus, W.D., 2017. "Revisiting the social cost of carbon." Procedings of the National Academy of Sciences 114, no. 7 (2017): 1518-1523. . Natl. Acad. Sci. 114, 1518–1523. https://www.pnas.org/doi/abs/10.1073/pnas.1609244114.
[^3]: Parisa, Zack, Marland, Eric, Sohngen, Brent, Marland, Gregg, and Jennifer Jenkins. "The time value of carbon storage." Forest Policy and Economics 144, (2022): 102840. https://doi.org/10.1016/j.forpol.2022.102840.
[^4]: Equation fit to data points from CDM Meth Panel report, Table 4, which was adapted from 2006 IPCC Guidelines, Volume 2, Chapter 2, Tables 2.2 to 2.6.
[^5]: Climate Action Reserve, "Assessment Area Data." Accessed June, 2022. https://www.climateactionreserve.org/how/protocols/forest/assessment-area-data/.
[^6]: Smith, James E.; Heath, Linda S.; Skog, Kenneth E.; Birdsey, Richard A. “Methods for Calculating Forest Ecosystem and Harvested Carbon with Standard Estimates for forest Types of the United States.” General Technical Report NE-343 (2006): 35-38.
[^7]: United States Government, "Technical Support Document: Social Cost of Carbon, Methane, and Nitrous Oxide Interim Estimates under Executive Order 13990 Interagency Working Group on Social Cost of Greenhouse Gases." 2021. https://www.whitehouse.gov/wp-content/uploads/2021/02/TechnicalSupportDocument_SocialCostofCarbonMethaneNitrousOxide.pdf
[^8]: NEON (National Ecological Observatory Network). Vegetation structure (DP1.10098.001), RELEASE-2022. https://doi.org/10.48443/re8n-tn87. Dataset accessed from https://data.neonscience.org on November 1, 2022
[^9]: Lunch, Claire. “Utilities for Working with Neon Data [R Package Neonutilities Version 2.1.4].” The Comprehensive R Archive Network, Comprehensive R Archive Network (CRAN), 14 Apr. 2022, https://cran.r-project.org/web/packages/neonUtilities/index.html.
[^10]: Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Menlove, James; Christiansen, Glenn; Perry, Carol J.; Conkling, Barbara L. 2021. The Forest Inventory and Analysis Database: database description and user guide version 9.0 for Phase 2. U.S. Department of Agriculture, Forest Service. 1024 p. [Online]. Available at web address: https://www.fia.fs.usda.gov/library/databasedocumentation/current/ver90/FIADB%20User%20Guide%20P2_9-0-1_final.pdf
[^11]: “Definition of Terms,” (United States Forest Service), accessed May 15, 2022, https://www.fs.usda.gov/srsfia/php/tpo_2009/tpo_docs/DEFINITIONS.htm.
[^12]: “Forest Inventory and Analysis National Core Field Guide Volume I: Field Data Collection Procedures for Phase 2 Plots.” 2022. United States Forest Service. https://www.fia.fs.usda.gov/library/field-guides-methods-proc/docs/2022/core_ver9-2_9_2022_SW_HW%20table.pdf.
[^13]: Congressional Research Service, and Anne A Riddle, Timber Harvesting On Federal Lands § (2022).https://sgp.fas.org/crs/misc/R45688.pdf
[^14]: Helms, John A. "Dictionary of forestry." Society of American Foresters, 1998.
[^15]: IPCC, 2013: Annex III: Glossary [Planton, S. (ed.)]. In: Climate Change 2013: The Physical Science Basis. Contribution of Working Group I to the Fifth Assessment Report of the Intergovernmental Panel on Climate Change [Stocker, T.F., D. Qin, G.-K. Plattner, M. Tignor, S.K. Allen, J. Boschung, A. Nauels, Y. Xia, V. Bex and P.M. Midgley (eds.)]. Cambridge University Press, Cambridge, United Kingdom and New York, NY, USA.
[^16]: “Master Species Field Guide.” 2021. United States Forest Service. https://www.fia.fs.fed.us/library/field-guides-methods-proc/docs/2021/2021%20Master%20Species%20FGver9-1_9_2021_final.xlsx.
