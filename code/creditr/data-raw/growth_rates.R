# Generate data object from growth rates, including precomputed integral

library(vroom)
library(dplyr)
annual_discount_rate <- 0.03

growth_rates <- vroom::vroom(
    system.file("extdata/growth_by_fldgrpcd.csv", package = "creditr")
)
    
s_multipliers <- purrr::map_dbl(
    .x = growth_rates$mean_annual_growth_carbon_tons_per_ac_prop,
    .f = ~ {
    integral <- integrate(
        creditr:::H,
        gamma = log(1 + .x),
        rho = -log(1 - annual_discount_rate),
        lower = 0,
        upper = 1
    )
    integral$value
    }
)

growth_rates <- growth_rates |>
    dplyr::transmute(
        fldgrpcd,
        mean_annual_growth_carbon_tons_per_ac_pct,
        s_multiplier = s_multipliers
    )

assertthat::assert_that(
    !any(duplicated(growth_rates$fldgrpcd))
)
assertthat::assert_that(
    !any(duplicated(growth_rates))
)

usethis::use_data(growth_rates, overwrite = TRUE, compress = "xz")
