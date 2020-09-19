#' Colour Difference
#'
#' Computes CIELAB distance metric (\eqn{\DeltaE*}).
#' @param x A \code{\link{character}} vector of colours.
#' @param metric An \code{\link{integer}} value giving the year the metric was
#'  recommended by the CIE. It must be one of "\code{1976}", "\code{1994}", or
#'  "\code{2000}".
#' @param diag A \code{\link{logical}} scalar: should the diagonal of the
#'  distance matrix be printed?
#' @param upper	A \code{\link{logical}} scalar: should the upper triangle of the
#'  distance matrix should be printed?
#' @return A \code{\link[stats:dist]{distance matrix}}.
#' @example inst/examples/ex-compare.R
#' @author N. Frerebeau
#' @family diagnostic tools
#' @export
compare <- function(x, metric = 2000, diag = FALSE, upper = FALSE) {
  # Validation
  if (!is.atomic(x) || !is.character(x))
    stop("x must be a character vector of colours.")

  # Hex to RGB
  RGB <- t(grDevices::col2rgb(x, alpha = FALSE))
  # RGB to Lab
  Lab <- XYZ2Lab(RGB2XYZ(RGB))

  # Colour comparisons
  Lab_list = lapply(seq_along(x), function(i) Lab[i, ])
  delta_E <- lapply(Lab_list, spacesXYZ::DeltaE, Lab, metric = metric[[1L]])
  delta_E <- do.call(rbind, delta_E)
  delta_E <- stats::as.dist(delta_E, diag = diag, upper = upper)

  return(delta_E)
}
