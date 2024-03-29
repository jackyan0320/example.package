% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_nruns.R
\name{simulate_nruns}
\alias{simulate_nruns}
\title{Replicate Simulation from an SLR for n times}
\usage{
simulate_nruns(n_rep, sim_func, ...)
}
\arguments{
\item{n_rep}{number of replicates}

\item{sim_func}{function to replicate}

\item{...}{additional arguments passed to sim_func()}
}
\value{
tbl_df with `n_runs` rows, containing sample size and coef estimates
}
\description{
Replicate Simulation from an SLR for n times
}
