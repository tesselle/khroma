# Other color schemes
#' @include color.R
NULL

# Discrete =====================================================================
#' Binary Discrete Color Schemes for \pkg{ggplot2} and \pkg{ggraph}
#'
#' Provides a color scale for [`logical`] values.
#' @param ... Arguments passed to [ggplot2::discrete_scale()].
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @return A [discrete][ggplot2::discrete_scale] scale.
# @example inst/examples/ex-other-discrete.R
#' @family qualitative color schemes
#' @author N. Frerebeau
#' @name scale_logical_discrete
#' @rdname scale_logical_discrete
NULL

#' @export
#' @rdname scale_logical_discrete
scale_colour_logical <- function(..., aesthetics = "colour") {
  ggplot2::scale_color_manual(
    ...,
    values = c(`TRUE` = "black", `FALSE` = "white"),
    aesthetics = aesthetics
  )
}

#' @export
#' @rdname scale_logical_discrete
scale_color_logical <- scale_colour_logical

#' @export
#' @rdname scale_logical_discrete
scale_fill_logical <- function(..., aesthetics = "fill") {
  ggplot2::scale_fill_manual(
    ...,
    values = c(`TRUE` = "black", `FALSE` = "white"),
    aesthetics = aesthetics
  )
}
