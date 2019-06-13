#' Replicate Simulation from an SLR for n times
#'
#' @param n_rep number of replicates
#' @param sim_func function to replicate
#' @param ... additional arguments passed to sim_func()
#'
#' @return tbl_df with `n_runs` rows, containing sample size and coef estimates
#' @export
#' @importFrom tibble tibble
#' @importFrom magrittr "%>%"
#' @import dplyr
#' @import purrr
#' @examples
simulate_nruns = function(n_rep, sim_func, ...) {

  rerun(n_rep, sim_func(...)) %>%
    bind_rows()

}
