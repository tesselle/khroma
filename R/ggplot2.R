# Colour scales constructor for ggplot2
#' @include colour.R
NULL

#' Colour scale constructor
#'
#' Builds discrete or continuous scale for 'ggplot2' according to the color
#'  scheme used.
#' @param aesthetics The names of the aesthetics that this scale works with.
#' @param palette A \code{\link{character}} string giving the name of
#'  the palette to be used (see \code{\link{colour}}).
#' @param reverse A \code{\link{logical}} scalar specifying if the resulting
#'  vector of colours should be reversed.
#' @param ... Further arguments passed to \code{\link[ggplot2]{discrete_scale}}
#'  or \code{\link[ggplot2]{continuous_scale}}, used respectively for
#'  qualitative data and diverging/sequential data.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
scale <- function(aesthetics, scale_name, reverse = FALSE, midpoint = 0, ...) {
  # Get colour palette and scheme information
  palette <- colour(scale_name, reverse, names = FALSE)
  type <- attr(palette, "type")
  interpolate <- attr(palette, "interpolate")
  missing <- attr(palette, "missing")
  max <- attr(palette, "max")

  # Build scale
  scale_arguments <- list(...)
  if (!("na.value" %in% names(scale_arguments))) {
    scale_arguments[["na.value"]] <- missing
  }
  if (!("guide" %in% names(scale_arguments))) {
    scale_arguments[["guide"]] <- if(interpolate) "colourbar" else "legend"
  }

  if (!interpolate) {
    do.call(ggplot2::discrete_scale,
            c(aesthetics, scale_name, palette, scale_arguments))
  } else {
    palette <- scales::gradient_n_pal(palette(max))
    if (type == "diverging") {
      scale_arguments[["rescaler"]] <- mid_rescaler(mid = midpoint)
    }

    do.call(
      ggplot2::continuous_scale,
      c(aesthetics, scale_name, palette, scale_arguments)
    )
  }
}

# COPY FROM GGPLOT2 NON-EXPORTS
#' @importFrom scales rescale_mid
#' @keywords internal
#' @noRd
mid_rescaler <- function(mid) {
  function(x, to = c(0, 1), from = range(x, na.rm = TRUE)) {
    scales::rescale_mid(x, to, from, mid)
  }
}
