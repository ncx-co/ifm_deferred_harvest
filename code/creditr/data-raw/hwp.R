library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)
library(broom)
library(purrr)
library(vroom)

hwp_mix_raw <- vroom::vroom(system.file("extdata/HWP_supersection_mixtures.csv", package = "creditr"))

# rows don't sum to exactly 1, so need to normalize
norm_vec <- apply(hwp_mix_raw[2:length(hwp_mix_raw)], 1, sum)

mix_mat_raw <- as.matrix(hwp_mix_raw[, 2:length(hwp_mix_raw)])

hwp_mix_norm <- sweep(mix_mat_raw, 1, norm_vec, FUN = "/") |>
  as_tibble() |>
  tibble::add_column(supersection = hwp_mix_raw$supersection, .before = 1)

nonmerch_ss <- hwp_mix_raw$supersection[norm_vec == 0]
nonmerch_ss

hwp_mix_wide <- hwp_mix_norm |>
  filter(!supersection %in% c(nonmerch_ss, "TOTAL")) |>
  mutate(
    # assume 45% goes to harvested wood products, 25 % goes to slash, 30% goes
    # to mill residue (chips, etc.)
    across(.cols = !supersection, .fns = ~ .x * 0.45),
    slash = 0.25,
    residue = 0.3
  )
  
assertthat::assert_that(
  all.equal(rowSums(hwp_mix_wide[2:length(hwp_mix_wide)]), rep_len(1, nrow(hwp_mix_wide)))
)

hwp_mix <- hwp_mix_wide |>
  pivot_longer(
    cols = !supersection, names_to = "product", values_to = "mix_prop"
  )

usethis::use_data(hwp_mix, overwrite = TRUE, compress = "xz")

hwp_decay <- vroom::vroom(system.file("extdata/HWP_decay_profiles.csv", package = "creditr")) |>
  pivot_longer(
    cols = c(!year),
    names_to = "product",
    values_to = "prop_remaining"
  ) |>
  mutate(
    prop_emitted = 1 - prop_remaining
  )

usethis::use_data(hwp_decay, overwrite = TRUE)

ggplot(hwp_decay) +
  geom_line(aes(x = year, y = prop_remaining)) +
  facet_wrap(~product) +
  ylab("remaining") +
  ggtitle("Decay profile by product")

# mill residue coefficient
t <- seq(from = 0.01, to = 5, by = 0.01)
residue_lambda <- -log(0.01) # 99% annual decay
residue <- exp(-residue_lambda * t)
plot(residue ~ t, type = "l")

# slash residue coefficient
t <- seq(from = 0.01, to = 100, by = 0.01)
slash_lambda <- -log(0.95) # 5% annual decay
slash <- exp(-slash_lambda * t)
plot(slash ~ t, type = "l")

missing_ones <- tibble(
  product = unique(hwp_decay$product),
  year = 0,
  prop_remaining = 1
)

model_data <- hwp_decay |>
  bind_rows(missing_ones) |>
  filter(
    prop_remaining > 0
  ) |>
  mutate(
    log_res = log(prop_remaining)
  )

decay_coefs <- model_data |>
  nest(data = !product) |>
  mutate(
    fit = map(data, ~ lm(log_res ~ 0 + year, data = .x)),
    tidied = map(fit, tidy)
  ) |>
  unnest(tidied) |>
  select(product, term, estimate) |>
  pivot_wider(
    names_from = "term",
    values_from = "estimate",
    # linear regression makes them additive, so we need to reverse the sign
    values_fn = ~ -.x
  ) |>
  setNames(c("product", "lambda")) |>
  add_row(product = "residue", lambda = residue_lambda) |>
  add_row(product = "slash", lambda = slash_lambda)

model_test <- left_join(model_data, decay_coefs, by = "product") |>
  mutate(preds = exp(-lambda * year))

ggplot(model_test) +
  geom_line(aes(x = year, y = preds)) +
  geom_point(aes(x = year, y = prop_remaining)) +
  facet_wrap(~product)

usethis::use_data(decay_coefs, overwrite = TRUE, compress = "xz")

# Generate supersection multipliers
rho <- -log(1 - 0.03)
baseline_emission_multipliers <- purrr::map_dbl(
  decay_coefs$lambda,
  ~ integrate(
    creditr:::F,
    lambda = .x,
    rho = rho,
    lower = 0,
    upper = Inf)$value
)
project_emission_multipliers <- purrr::map_dbl(
  decay_coefs$lambda,
  ~ integrate(
    creditr:::F,
    lambda = .x,
    rho = rho,
    start = 1,
    lower = 1,
    upper = Inf)$value
)
assertthat::assert_that(
  all(
    abs(project_emission_multipliers / baseline_emission_multipliers - exp(-rho)) < 1e-6
  )
)
mix_wide <- hwp_mix |>
  pivot_wider(
    id_cols = supersection, names_from = "product",
    values_from = mix_prop
  ) |>
  select(supersection, decay_coefs$product)
mix_matrix <- as.matrix(select(mix_wide, -supersection))
supersection_multipliers <- tibble(
  supersection = mix_wide$supersection,
  baseline_emission_multipliers = as.numeric(
    mix_matrix %*% baseline_emission_multipliers
  ),
  project_emission_multipliers = as.numeric(
    mix_matrix %*% project_emission_multipliers
  )
)

# Fix supersections to match names
supersection_multipliers <- supersection_multipliers |>
    dplyr::mutate(
      supersection = dplyr::case_when(
        supersection == "Andirondacks & Green Mountains" ~ "Adirondacks & Green Mountains",
        supersection == "Arizona-Nevada Mountains" ~ "Nevada Mountains",
        supersection == "Aroostook-Maine-New Brunswick Hills and Lowlands" ~ "Aroostook Hills and Lowlands",
        supersection == "Central Interior Broadleaf Forest Central Till Plains" ~ "MW Broadleaf Forest Central Till Plains",
        supersection == "Central Interior Broadleaf Forest Eastern Low Plateau" ~ "Central Interior Broadleaf Forest Eastern Low",
        supersection == "Central Interior Broadleaf Forest Western Low Plateau" ~ "Central Interior Broadleaf Forest Western Low",
        supersection == "Eastern Broadleaf Forest Cumberland Plateau & Valley" ~ "Eastern Broadleaf Forest Cumberland Plateau",
        supersection == "Laurentian Mixed Forest Western Superior & Lake Plains" ~ "Laurentian Mixed Forest Western Superior & Lake",
        supersection == "MW Broadleaf Forest SC Great Lakes & Lake Whittlesey" ~ "MW Broadleaf Forest SC Great Lakes & Lake Whittles",
        supersection == "Prairie Parkland Central Till Plains & Grand Prairies" ~ "Prairie Parkland Central Till Plains & Grand",
        TRUE ~ supersection
      )
    )

# There is a duplicate in supersection_multipliers
# supersection_multipliers$supersection[duplicated(supersection_multipliers$supersection)]
# [47] "MW Broadleaf Forest Central Till Plains"
usethis::use_data(supersection_multipliers, overwrite = TRUE, compress = "xz")
