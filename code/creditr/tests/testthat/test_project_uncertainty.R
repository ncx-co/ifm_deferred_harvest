test_that("calculate_uncertainty_deduction works", {
  deductions <- calculate_uncertainty_deduction(
    c(0, 0.5, 1, 10),
    c(0, 0.5, 1, 10)
  )

  expect_true(
    deductions[1] < deductions[2], 
    deductions[2] < deductions[3],
  )
  expect_equal(min(deductions), 0.015)
  expect_equal(max(deductions), 1)

  # find where deductions crossover 0.015 min deduction
  # 0.015 > sqrt(u1^2 + u2^2) + 0.015 + 0.1
  # assume u1 == u2
  # 0.015 > sqrt(2u^2) + 0.015 + 0.1
  # 0.015 - 0.015 + 0.1 > sqrt(2u^2)
  # sqrt((0.015 - 0.015 + 0.1)^2 / 2)
  min_uncertainty <- sqrt((0.015 - 0.015 + 0.1)^2 / 2)
  
  half_widths <- seq(0, 1, by = 0.001) 
  deds <- purrr::map_dbl(
    half_widths,
    ~ calculate_uncertainty_deduction(.x, .x)
  )

  ix <- max(which(deds == 0.015))
  expect_equal(half_widths[ix], round(min_uncertainty, 2))

  # from methodology static worked example
  expected_deduc <- 0.0281370849898476
  calc_deduc <- calculate_uncertainty_deduction(0.08, 0.08)
  expect_equal(expected_deduc, calc_deduc)
})

test_that("calc_uncertainty_multipler works", {
  hw_int_prop <- 0.5
  uncert_mutlitplier <- calc_uncertainty_multiplier(hw_int_prop)
  expect_equal(uncert_mutlitplier, 0.828723, tolerance = 1e-3)
})

test_that("apply_uncertainty_deduction works properly", {
  ty_draws <- seq(0.8, 3, length.out = 200)
  minted_creds <- apply_uncertainty_deduction(ty_draws)
  expect_equal(minted_creds, 1.519308, tolerance = 1e-3)
})
