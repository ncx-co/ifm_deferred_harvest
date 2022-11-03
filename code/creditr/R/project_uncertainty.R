#' Calculate Uncertainty Deduction
#' 
#' Calculate the project uncertainty deduction fom the T0 and T1 uncertainty estimates
#' 
#' @param t0_half_width_ratio range(90% CI) / 2 / C_t0
#' @param t1_half_width_ratio range(90% CI) / 2 / C_t1
#' 
#' @return uncertainty deduction
#' 
calculate_uncertainty_deduction <- function(t0_half_width_ratio, t1_half_width_ratio){
  base_uncertainty <- sqrt(t1_half_width_ratio^2 + t0_half_width_ratio^2)
  uncertainty_deduction <- base_uncertainty - 0.1 + 0.015
  dplyr::case_when(
    uncertainty_deduction < 0.015 ~ 0.015, # lower bound
    uncertainty_deduction > 1.0 ~ 1.0, # upper bound
    TRUE ~ uncertainty_deduction
  )
}

#' Calculate uncertainty mutliplier
#' 
#' Calculate the uncertainity multiplier based on the logistic uncertainty loss
#' function that was fit to IPCC data. The logistic uncertainty is developed 
#' and explained in `cyclops/vignettes/uncertainty_curve.Rmd`, in that file, we 
#' determine the logistic parameters (`b0` and `b1`).
#' 
#' @param halfwidth_interval_prop the proportional halfwidth interval of the
#' posterior distribution of tonne years
#' 
#' @return the uncertainty multiplier for this distribution
#' 
calc_uncertainty_multiplier <- function(halfwidth_interval_prop) {
  b0 <- 3.502478
  b1 <- -3.851745
  denominator <- (1 + exp(-(b0 + b1 * halfwidth_interval_prop)))
  return(1 / denominator)
}

#' Use uncertainty multiplier to deduct
#' 
#' Use the posterior distribution of ton year draws from a property or project
#' and calculate the number of credits to mint based on the uncertainty
#' multiplier
#' 
#' @param posterior_draws posterior draws for some unit
#' 
#' @return the number of credits to mint
#' 
#' @export 
apply_uncertainty_deduction <- function(posterior_draws) {
  median_draws <- stats::median(posterior_draws)
  upper <- as.numeric(stats::quantile(posterior_draws, 0.975))
  lower <- as.numeric(stats::quantile(posterior_draws, 0.025))
  halfwidth_interval <- (upper - lower) / 2
  halfwidth_interval_prop <- halfwidth_interval / median_draws
  credits <- calc_uncertainty_multiplier(halfwidth_interval_prop) *
             median_draws
  return(credits)
}
