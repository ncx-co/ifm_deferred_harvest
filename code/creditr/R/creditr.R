#' Decay / discount function
#' 
#' @param lambda numeric; decay / discount coefficient. For annual X% decay /
#'   discounting `lambda = -log(1 - X/100)`
#' @param t numeric; time in years

D <- function(lambda, t) {
  exp(-lambda * t)
}

#' Emission function
#' 
#' @param lambda numeric; emission coefficient. For annual X% emission use
#'   `lambda = -log(1 - X/100)`
#' @param t numeric; time in years

E <- function(lambda, t) {
  1 - exp(-lambda * t)
}

#' Instantaneous emission function
#'
#' The derivative of [`E`]
#'
#' @param lambda numeric; decay coefficient. For annual X% emission use
#'   `lambda = -log(1 - X/100)`
#' @param t numeric; time in years

E_prime <- function(lambda, t) {
  lambda * D(lambda, t)
}

#' Discounted instantaneous emission function
#'
#' @param lambda numeric; decay coefficient. For annual X% decay
#'   `lambda = -log(1 - X/100)`
#' @param rho numeric; discount coefficient. For annual X% discount
#'   `rho = -log(1 - X/100)`
#' @param start numeric; time in years at which the emission begins. Acts as
#'   an offset for emissions that don't begin until a future date.
#' @param t numeric; time in years

F <- function(lambda, rho, t, start = 0) {
  E_prime(lambda, t - start) * D(rho, t)
}

#' Growth function
#' 
#' @param gamma numeric; growth coefficient. For annual X% growth, use
#'   `gamma = log(1 + X/100)`
#' @param t numeric; time in years

G <- function(gamma, t) {
  exp(gamma * t)
}

#' Instantaneous growth function
#' 
#' @param gamma numeric; growth coefficient. For annual X% growth, use
#'   `gamma = log(1 + X/100)`
#' @param t numeric; time in years

G_prime <- function(gamma, t) {
  gamma * G(gamma, t)
}

#' Discounted instantaneous growth function
#'
#' @param gamma numeric; growth coefficient. For annual X% growth
#'   `gamma = log(1 + X/100)`
#' @param rho numeric; discount coefficient. For annual X% discount
#'   `rho = -log(1 - X/100)`
#' @param t numeric; time in years

H <- function(gamma, rho, t) {
  G_prime(gamma, t) * D(rho, t)
}

#' Function to compute emissions
#'
#' @param t0_tCO2 [0, inf) metric tonnes of CO2 at day 0
#' @param annual_growth_rate [0, inf) average annual growth of carbon
#' @param baseline_intensity \[0-1\] proportion of carbon harvested under BAU
#' @param loss_intensity \[0-1\] estimated carbon harvested at end of performance period
#' @param supersection string; USFS supersection
#' @param annual_discount_rate numeric [0, inf); annualized discount rate for carbon deferred this year
#'
#' @description See full methodology at creditr/vignettes/hwp_emissions.Rmd
#' @return class tibble; intermediary calculations to be supplied to [creditr::emissions_to_credits()] to generate credits
#' @export
compute_emissions <- function(
  t0_tCO2,
  annual_growth_rate,
  baseline_intensity,
  loss_intensity,
  supersection,
  annual_discount_rate = 0.03
) {

  # Check boundary conditions
  stopifnot(
    t0_tCO2 >= 0,
    annual_growth_rate >= 0,
    baseline_intensity >= 0, baseline_intensity <= 1,
    loss_intensity >= 0, loss_intensity <= 1,
    annual_discount_rate >= 0
  )

  stopifnot(supersection %in% creditr::supersection_multipliers$supersection)
  ss_idx <- match(supersection, creditr::supersection_multipliers$supersection)

  deferral <- baseline_intensity - loss_intensity

  # baseline emissions
  delta_baseline <- t0_tCO2 * baseline_intensity *
    creditr::supersection_multipliers$baseline_emission_multipliers[ss_idx]

  # this is the amount harvested at T0 in the program
  E_0 <- t0_tCO2 * loss_intensity *
    creditr::supersection_multipliers$baseline_emission_multipliers[ss_idx]

  # harvest of the deferral component
  h_b <- t0_tCO2 * deferral *
    creditr::supersection_multipliers$project_emission_multipliers[ss_idx]

  # harvest of the growth component
  h_g <- h_b * annual_growth_rate

  # sequestration due to growth (s)
  # check for s_multiplier in growth_rates, or else compute
  if (annual_discount_rate == 0.03 & all(annual_growth_rate %in% creditr::growth_rates$mean_annual_growth_carbon_tons_per_ac_pct)) {
    s_multipliers <- creditr::growth_rates$s_multiplier[
      match(annual_growth_rate, creditr::growth_rates$mean_annual_growth_carbon_tons_per_ac_pct)
    ]
  } else {
    unique_growth_rates <- unique(annual_growth_rate)

    unique_s_multipliers <- purrr::map_dbl(
      .x = unique_growth_rates,
      .f = ~ {
        integral <- integrate(
          H,
          gamma = log(1 + .x),
          rho = -log(1 - annual_discount_rate),
          lower = 0,
          upper = 1
        )
        integral$value
      }
    )
    s_multipliers <- unique_s_multipliers[
      match(annual_growth_rate, unique_growth_rates)
    ]
  }

  s <- t0_tCO2 * deferral * s_multipliers

  E_d <- h_b + h_g

  delta_project <- E_0 + E_d - s

  calcs <- tibble::tibble(
    delta_baseline,
    delta_project,
    E_0,
    E_d,
    h_b,
    h_g,
    s,
    gamma = log(1 + annual_growth_rate)
  )

  assertthat::noNA(calcs)
  return(calcs)
}

#' Function to compute credits from emissions
#'
#' @param delta_baseline numeric; emissions under the BAU (no intervention) scenario
#' @param delta_project numeric; the total discounted emissions in the project scenario from harvesting and processing timber into wood products 
#' @param h_g numeric; growth harvest discounted emissions
#' @param s numeric; sequestration due to the growth on component of the aboveground live tree biomass for which harvest was deferred
#' @param l numeric \[0-1\]; deduction to be applied for leakage
#' 
#' @description See full methodology at creditr/vignettes/hwp_emissions.Rmd
#' @export
emissions_to_credits <- function(delta_baseline, delta_project, h_g, s, l) {

  stopifnot(
    l >= 0, l <= 1
  )

  total_credits <- (delta_baseline - delta_project) * (1 - l)
  growth_credits <- (s - h_g) * (1 - l)

  tibble::tibble(
    ncx_credits = total_credits,
    growth_credits = growth_credits
  )

}

#' Composite function to compute and verify boundary of credits
#' @inheritParams compute_emissions
#' @param leakage numeric \[0-1\]; deduction to be applied for leakage
#' @export
compute_raw_credits <- function(
  t0_tCO2,
  annual_growth_rate,
  baseline_intensity,
  loss_intensity,
  supersection,
  annual_discount_rate = 0.03,
  leakage = 0.2
) {
  emissions <- compute_emissions(
    t0_tCO2,
    annual_growth_rate,
    baseline_intensity,
    loss_intensity,
    supersection,
    annual_discount_rate
  )
  credits <- emissions_to_credits(
    delta_baseline = emissions$delta_baseline,
    delta_project = emissions$delta_project,
    h_g = emissions$h_g,
    s = emissions$s,
    l = leakage
  )

  return(credits)
}
