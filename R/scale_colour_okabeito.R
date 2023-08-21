# Okabe & Ito color scheme
#' @include color.R
NULL

# Discrete =====================================================================
#' Okabe and Ito's Discrete Color Scheme for \pkg{ggplot2} and \pkg{ggraph}
#'
#' Provides the qualitative color scale from Okabe and Ito 2008.
#' @param ... Arguments passed to [ggplot2::discrete_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param black_position A [`character`] string giving the position of the black
#'  color. It must be one of "`first`" or "`last`". Any unambiguous substring
#'  can be given.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  This qualitative color scheme is used as given (no interpolation):
#'  colors are picked up to the maximum number of supported values (8).
#' @return A [discrete][ggplot2::discrete_scale] scale.
#' @references
#'  Okabe, M. & Ito, K. (2008). *Color Universal Design (CUD): How to Make
#'  Figures and Presentations That Are Friendly to Colorblind People*.
#'  URL: \url{https://jfly.uni-koeln.de/color/}.
#' @example inst/examples/ex-okabeito-discrete.R
#' @author N. Frerebeau
#' @family color-blind safe color schemes
#' @family qualitative color schemes
#' @family Okabe and Ito's color scheme
#' @name scale_okabeito_discrete
#' @rdname scale_okabeito_discrete
NULL

#' Get Okabe and Ito's Discrete Color Scheme
#'
#' @param black_position A [`character`] string giving the position of the black
#'  color. It must be one of "`first`" or "`last`". Any unambiguous substring
#'  can be given.
#' @examples
#' get_okabeito_scale("first")
#' get_okabeito_scale("last")
#' @keywords internal
#' @noRd
get_okabeito_scale <- function(black_position = c("first", "last")) {
  black_position <- match.arg(black_position, several.ok = FALSE)
  switch (black_position, first = "okabeito", last = "okabeitoblack")
}

#' @export
#' @rdname scale_okabeito_discrete
scale_colour_okabeito <- function(..., reverse = FALSE,
                                  black_position = c("first", "last"),
                                  aesthetics = "colour") {
  oi_palette <- get_okabeito_scale(black_position)
  scale_discrete(aesthetics, oi_palette, reverse = reverse, ...)
}

#' @export
#' @rdname scale_okabeito_discrete
scale_color_okabeito <- scale_colour_okabeito

#' @export
#' @rdname scale_okabeito_discrete
scale_fill_okabeito <- function(..., reverse = FALSE,
                                black_position = c("first", "last"),
                                aesthetics = "fill") {
  oi_palette <- get_okabeito_scale(black_position)
  scale_discrete(aesthetics, oi_palette, reverse = reverse, ...)
}

#' @export
#' @rdname scale_okabeito_discrete
scale_edge_colour_okabeito <- function(..., reverse = FALSE,
                                       black_position = c("first", "last"),
                                       aesthetics = "edge_colour") {
  oi_palette <- get_okabeito_scale(black_position)
  scale_discrete(aesthetics, oi_palette, reverse = reverse, ...)
}

#' @export
#' @rdname scale_okabeito_discrete
scale_edge_color_okabeito <- scale_edge_colour_okabeito

#' @export
#' @rdname scale_okabeito_discrete
scale_edge_fill_okabeito <- function(..., reverse = FALSE,
                                     black_position = c("first", "last"),
                                     aesthetics = "edge_fill") {
  oi_palette <- get_okabeito_scale(black_position)
  scale_discrete(aesthetics, oi_palette, reverse = reverse, ...)
}
