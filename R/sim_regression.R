#' Simulate from an SLR
#'
#' Simualtes data from a simple linear regression model with user-defined
#' sample size and regression coefficients. Fits a SLR to the simulated
#' data and returns regression coefficients.
#'
#' @param n sample size
#' @param beta0 intercept
#' @param beta1 slope
#'
#' @return tbl_df with one row, containing sample size and coef estimates
#' @export
#' @importFrom tibble tibble
#' @importFrom magrittr "%>%"
#' @import dplyr
#' @import purrr
#' @examples
#'
#'
sim_regression = function(n, beta0 = 2, beta1 = 3) {

  sim_data = tibble(
    x = rnorm(n, mean = 1, sd = 1),
    y = beta0 + beta1 * x + rnorm(n, 0, 1)
  )

  ls_fit = lm(y ~ x, data = sim_data)

  tibble(
    beta0_hat = coef(ls_fit)[1],
    beta1_hat = coef(ls_fit)[2]
  )
}
