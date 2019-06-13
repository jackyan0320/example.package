#' Simulate from a Bernoulli distribution
#'
#'The sim_bern_mean function has the same general structure as sim_regression()
#'but simulates data from a Bernoulli distribution and returns the sample average.
#' @param n number of observations. If length(n) > 1, the length is taken to be the number required.
#' @param prob probability of success on each trial.
#'
#' @return
#' @export
#' @importFrom tibble tibble
#' @importFrom magrittr "%>%"
#' @import dplyr
#' @import purrr
#' @examples
sim_bern_mean = function(n, prob) {

  sim_data = tibble(
    y = rbinom(n, 1, prob)
  )

  tibble(
    samp_avg = mean(sim_data %>% pull(y))
  )
}
