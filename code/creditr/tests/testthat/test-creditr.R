test_that("compute_emissions function returns correct data structure and results", {
    emissions <- compute_emissions(
        t0_tCO2 = 1000,
        annual_growth_rate = 0.0375,
        baseline_intensity = 1,
        loss_intensity = 0,
        supersection = "Snake River Basin",
        annual_discount_rate = 0.03
    )

    expect_vector(
        tibble::as_tibble(emissions),
        tibble::tibble(
            delta_baseline = double(),
            delta_project = double(),
            E_0 = double(),
            E_d = double(),
            h_b = double(),
            h_g = double(),
            s = double(),
            gamma = double()
        )
    )

    expect_equal(
        emissions$delta_baseline, 613.1199, tolerance = 1e-5
    )
    expect_equal(
        emissions$delta_project, 580.0974, tolerance = 1e-5
    )
    expect_equal(
        emissions$E_0, 0, tolerance = 1e-5
    )
    expect_equal(
        emissions$E_d, 617.0286, tolerance = 1e-5
    )
    expect_equal(
        emissions$h_b, 594.7263, tolerance = 1e-5
    )
    expect_equal(
        emissions$h_g, 22.30224, tolerance = 1e-5
    )
    expect_equal(
        emissions$s, 36.93119, tolerance = 1e-5
    )
    expect_equal(
        emissions$gamma, 0.03681397, tolerance = 1e-5
    )

})

test_that("emissions_to_credits function returns correct data structure and results", {
    credits <- emissions_to_credits(
        delta_baseline = 613.1199,
        delta_project = 580.0974, 
        h_g = 22.30224,
        s = 36.93119,
        l = 0.2
    )

    expect_equal(
        credits$ncx_credits, 26.41804, tolerance = 1e-5
    )
    expect_equal(
        credits$growth_credits, 11.70317, tolerance = 1e-5
    )

})

test_that("compute_raw_credits function returns correct data structure and results", {
    creds <- compute_raw_credits(
        t0_tCO2 = 1000,
        annual_growth_rate = 0.0375,
        baseline_intensity = 1,
        loss_intensity = 0,
        supersection = "Snake River Basin",
        annual_discount_rate = 0.03
    )

    expect_vector(
        tibble::as_tibble(creds),
        tibble::tibble(
            "ncx_credits" = double(),
            "growth_credits" = double()
        )
    )

    expect_equal(
        creds$ncx_credits, 26.41804, tolerance = 1e-5
    )

    expect_equal(
        creds$growth_credits, 11.70317, tolerance = 1e-5
    )

})
