#' Deprecated Functions in dimensio
#'
#' These functions still work but will be removed (defunct) in the next version.
#' @name khroma-deprecated
#' @rdname khroma-deprecated
#' @keywords internal
NULL

#' @export
#' @rdname khroma-deprecated
palette_size_range <- function(range = c(1, 6), ...) {

  force(range)

  function(x) {
    need_continuous(x)
    x <- scale_range(x)
    scale_range(sqrt(x), to = range(range, na.rm = TRUE))
  }
}

#' @export
#' @rdname khroma-deprecated
convert <- function(x, mode) {
  .Deprecated(new = "change()", old = "convert()")
  change(x, mode)
}

#' @export
#' @rdname khroma-deprecated
ramp <- function(palette, ...) {
  .Deprecated(new = "palette_color_picker()", old = "ramp()")

  fun <- function(x, midpoint = NULL) {
    if (!is.null(midpoint) && is.numeric(midpoint)) {
      z <- scale_midpoint(x, midpoint = midpoint)
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
