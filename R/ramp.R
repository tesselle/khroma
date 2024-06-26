#' Color Ramp
#'
#' Provides a color scheme that map a `numeric` vector to colors.
#' @param palette A [`character`] string giving the name of the palette to be
#'  used (see [color()]).
#' @param ... Further arguments to be passed to [color()].
#' @return
#'  A palette [`function`] with argument a vector of values that are mapped to
#'  colors. The data midpoint can be specified with an additional `midpoint`
#'  argument (see examples).
#' @example inst/examples/ex-ramp.R
#' @author N. Frerebeau
#' @family color schemes
#' @keywords color
#' @export
ramp <- function(palette, ...) {

  fun <- function(x, midpoint = NULL) {
    if (!is.null(midpoint) && is.numeric(midpoint)) {
      z <- rescale_mid(midpoint)(x)
    } else {
      z <- (x - min(x)) / (max(x) - min(x))
    }

    col <- color(palette, ...)
    ramp <- grDevices::colorRamp(col(255))(z)

    ## Set attributes
    structure(
      grDevices::rgb(ramp[, 1], ramp[, 2], ramp[, 3], maxColorValue = 255),
      breaks = x,
      class = c("color_scheme")
    )
  }

  return(fun)
}
