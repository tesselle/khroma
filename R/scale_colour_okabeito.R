# Okabe & Ito colour scheme
#' @include colour.R
NULL

# Discrete =====================================================================
#' Okabe and Ito's Discrete Colour Scheme for \pkg{ggplot2}
#'
#' Provides the qualitative colour scale from Okabe and Ito 2008.
#' @param ... Arguments passed to \code{\link[ggplot2]{discrete_scale}}.
#' @param reverse A \code{\link{logical}} scalar. Should the resulting
#'  vector of colours be reversed?
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  This qualitative colour scheme is used as given (no interpolation):
#'  colours are picked up to the maximum number of supported values (8).
#' @return A \code{\link[ggplot2:discrete_scale]{discrete}} scale.
#' @references
#'  Okabe, M. & Ito, K. (2008). \emph{Color Universal Design (CUD): How to Make
#'  Figures and Presentations That Are Friendly to Colorblind People}.
#'  URL: \url{https://jfly.uni-koeln.de/color/}.
#' @example inst/examples/ex-okabeito-discrete.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family qualitative colour schemes
#' @family Okabe and Ito's colour scheme
#' @name scale_okabeito_discrete
#' @rdname scale_okabeito_discrete
NULL

#' @export
#' @rdname scale_okabeito_discrete
scale_colour_okabeito <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale_discrete(aesthetics, "okabe ito", reverse, ...)
}

#' @export
#' @rdname scale_okabeito_discrete
scale_color_okabeito <- scale_colour_okabeito

#' @export
#' @rdname scale_okabeito_discrete
scale_fill_okabeito <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale_discrete(aesthetics, "okabe ito", reverse, ...)
}
