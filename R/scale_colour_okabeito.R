# Okabe & Ito colour scheme
#' @include colour.R
NULL

# ===================================================================== Discrete
#' Okabe and Ito Discrete Colour Scheme for \pkg{ggplot2}
#'
#' Provides qualitative colour scales from Okabe and Ito 2008.
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
#'  URL: \url{http://jfly.iam.u-tokyo.ac.jp/color/}.
#' @example inst/examples/ex-okabeito-discrete.R
#' @author N. Frerebeau
#' @family Okabe and Ito's colour scheme
#' @name scale_tol_okabeito
#' @rdname scale_tol_okabeito
NULL

#' @export
#' @rdname scale_tol_okabeito
scale_colour_okabeito <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "okabe ito", reverse, ...)
}

#' @export
#' @rdname scale_tol_okabeito
scale_color_okabeito <- scale_colour_okabeito

#' @export
#' @rdname scale_tol_okabeito
scale_fill_okabeito <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "okabe ito", reverse, ...)
}
