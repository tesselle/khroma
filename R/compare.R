#' Colour Difference
#'
#' Computes CIELAB distance metric.
#' @param x A [`character`] vector of colors.
#' @param metric An [`integer`] value giving the year the metric was
#'  recommended by the CIE. It must be one of "`1976`", "`1994`", or
#'  "`2000`" (default; see [spacesXYZ::DeltaE()]).
#' @param diag A [`logical`] scalar: should the diagonal of the distance matrix
#'  be printed?
#' @param upper	A [`logical`] scalar: should the upper triangle of the distance
#'  matrix should be printed?
#' @return A [distance matrix][stats::dist].
#' @example inst/examples/ex-compare.R
#' @author N. Frerebeau
#' @family diagnostic tools
#' @export
compare <- function(x, metric = 2000, diag = FALSE, upper = FALSE) {
  # Validation
  if (!is.atomic(x) || !is.character(x))
    stop("x must be a character vector of colours.", call. = FALSE)

  # Hex to RGB
  RGB <- t(grDevices::col2rgb(x, alpha = FALSE))
  # RGB to Lab
  Lab <- XYZ2Lab(RGB2XYZ(RGB))

  # Colour comparisons
  delta_E <- apply(
    X = Lab,
    MARGIN = 1,
    FUN = spacesXYZ::DeltaE,
    Lab2 = Lab,
    metric = metric[[1L]]
  )

  stats::as.dist(delta_E, diag = diag, upper = upper)
}
