# HELPERS

`%||%` <- function(x, y) {
  if (!is.null(x)) x else y
}

check_package <- function(x) {
  if (!requireNamespace(x, quietly = TRUE)) {
    msg <- "Package %s needed for this function to work. Please install it."
    stop(sprintf(msg, x), call. = FALSE)
  }
  invisible(NULL)
}

#' Rescale Vector to Have Specified Midpoint
#'
#' @param mid A length-one [`numeric`] vector specifying the midpoint of input.
#' @return A [`function`] that when called with a single integer argument
#'  (values to be rescaled) returns a vector of values with the specified
#'  midpoint.
#' @keywords internal
#' @noRd
rescale_mid <- function(mid) {
  function(x, to = c(0, 1), from = range(x, na.rm = TRUE)) {
    extent <- 2 * max(abs(from - mid))
    (x - mid) / extent * diff(to) + mean(to)
  }
}
