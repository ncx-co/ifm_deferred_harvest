#' hwp_decay
#'
#' Decay rate information for classes of harvested wood products.
#' @format A tibble with 196 rows and 6 variables:
#' \describe{
#'   \item{year}{decay year}
#'   \item{product}{harvested wood product}
#'   \item{prop_remaining}{
#'     proportion of carbon remaining in `product` at `year`
#'   }
#'   \item{prop_emitted}{
#'     cumulative proportion of carbon emitted into the atmosphere for `product`
#'     in `year`; computed as 1 - `prop_remaining`
#'   }
#' }
#' @source data-raw/hwp.R
#'
"hwp_decay"

#' hwp_mix
#'
#' Typical harvested wood product mixtures by supersection.
#' @format A tibble with 658 rows and 3 variables:
#' \describe{
#'   \item{supersection}{USFS supersection}
#'   \item{product}{harvested wood product}
#'   \item{mix_prop}{
#'     proportion of harvest allocated to `product` in a given supersection
#'   }
#' }
#' @source data-raw/hwp.R
#'
"hwp_mix"

#' decay_coefs
#'
#' Decay rate parameters by harvest product
#' 
#' @format A tibble with 9 rows and 2 variables:
#' \describe{
#'   \item{product}{harvest product}
#'   \item{lambda}{decay parameter}
#' }
#' @source data-raw/hwp.R
#'
"decay_coefs"

#' supersection_multipliers
#'
#' USFS supersection-associated emission multipliers
#' 
#' @format A tibble with 88 rows and 3 variables:
#' \describe{
#'   \item{supersection}{USFS supersection}
#'   \item{baseline_emission_multipliers}{supersection-associated multiplier}
#'   \item{project_emission_multipliers}{supersection-associated multiplier}
#' }
#' @source data-raw/hwp.R
#'
"supersection_multipliers"

#' growth_rates
#'
#' USFS field group-associated growth rates/sequestration multipliers
#'
#' @format A tibble with 33 rows and 3 variables:
#' \describe{
#'   \item{fldgrpcd}{USFS field group code}
#'   \item{mean_annual_growth_carbon_tons_per_ac_pct}{population estimated growth rates from rFIA}
#'   \item{s_multiplier}{sequestration multiplier}
#' }
#' @source data-raw/growth_rates.R
#'
"growth_rates"
