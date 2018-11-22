#' @include colour.R
NULL

# Geologic Timescale ===========================================================
#' Geologic Timescale Colour Scheme for ggplot2
#'
#' Provides the geologic timescale colour scale.
#' @param ... Arguments passed on to \code{\link[ggplot2]{discrete_scale}}.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details Values will be matched based on the unit names.
#' @references \href{https://www.ccgm.org}{Commission for the Geological Map of the World}
#' @example inst/examples/ex-science-stratigraphy.R
#' @author N. Frerebeau
#' @family colour scales for ggplot2
#' @export
#' @rdname scale_stratigraphy
scale_colour_stratigraphy <- function(..., aesthetics = "colour") {
  # Get palette
  color_palette <- colour("stratigraphy", names = TRUE)
  # Build scale
  ggplot2::scale_color_manual(..., values = color_palette(175),
                              aesthetics = aesthetics)
}

#' @export
#' @rdname scale_stratigraphy
scale_color_stratigraphy <- scale_colour_stratigraphy

#' @export
#' @rdname scale_stratigraphy
scale_fill_stratigraphy <- function(..., aesthetics = "fill") {
  # Get palette
  color_palette <- colour("stratigraphy", names = TRUE)
  # Build scale
  ggplot2::scale_fill_manual(..., values = color_palette(175),
                             aesthetics = aesthetics)
}
