% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/creditr.R
\name{emissions_to_credits}
\alias{emissions_to_credits}
\title{Function to compute credits from emissions}
\usage{
emissions_to_credits(delta_baseline, delta_project, h_g, s, l)
}
\arguments{
\item{delta_baseline}{numeric; emissions under the BAU (no intervention) scenario}

\item{delta_project}{numeric; the total discounted emissions in the project scenario from harvesting and processing timber into wood products}

\item{h_g}{numeric; growth harvest discounted emissions}

\item{s}{numeric; sequestration due to the growth on component of the aboveground live tree biomass for which harvest was deferred}

\item{l}{numeric [0-1]; deduction to be applied for leakage}
}
\description{
See full methodology at creditr/vignettes/hwp_emissions.Rmd
}
