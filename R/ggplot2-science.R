#' @include colour.R
NULL

# =========================================================== Geologic Timescale
#' Geologic Timescale Colour Scheme for \pkg{ggplot2}
#'
#' Provides the geologic timescale colour scheme.
#' @param ... Arguments passed on to \code{\link[ggplot2]{discrete_scale}}.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details Values will be matched based on the unit names.
#' @references
#'  \href{https://www.ccgm.org}{Commission for the Geological Map of the World}.
#' @return A \code{\link[ggplot2:discrete_scale]{discrete}} scale.
#' @example inst/examples/ex-science-stratigraphy.R
#' @author N. Frerebeau
#' @family Themed colour schemes
#' @export
#' @rdname scale_stratigraphy
scale_colour_stratigraphy <- function(..., aesthetics = "colour") {
  require_ggplot2()
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
  require_ggplot2()
  # Get palette
  color_palette <- colour("stratigraphy", names = TRUE)
  # Build scale
  ggplot2::scale_fill_manual(..., values = color_palette(175),
                             aesthetics = aesthetics)
}

# ========================================================================= Land
#' AVHRR Global Land Cover Classification Colour Scheme for \pkg{ggplot2}
#'
#' Provides the AVHRR Global Land Cover classification as modified by
#' Paul Tol (colour-blind safe).
#' @param ... Arguments passed on to \code{\link[ggplot2]{discrete_scale}}.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details Values will be matched based on the soil names.
#' @return A \code{\link[ggplot2:discrete_scale]{discrete}} scale.
#' @references
#'  Tol, P. (2018). \emph{Colour Schemes.} SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-science-land.R
#' @author N. Frerebeau
#' @family Themed colour schemes
#' @export
#' @rdname scale_land
scale_colour_land <- function(..., aesthetics = "colour") {
  require_ggplot2()
  # Get palette
  color_palette <- colour("land", names = TRUE)
  # Build scale
  ggplot2::scale_color_manual(..., values = color_palette(14),
                              aesthetics = aesthetics)
}

#' @export
#' @rdname scale_land
scale_color_land <- scale_colour_land

#' @export
#' @rdname scale_land
scale_fill_land <- function(..., aesthetics = "fill") {
  require_ggplot2()
  # Get palette
  color_palette <- colour("land", names = TRUE)
  # Build scale
  ggplot2::scale_fill_manual(..., values = color_palette(14),
                             aesthetics = aesthetics)
}

# ========================================================================= Soil
#' FAO Soil Reference Groups Colour Scheme for \pkg{ggplot2}
#'
#' Provides the FAO Soil Reference Groups colour scheme.
#' @param ... Arguments passed on to \code{\link[ggplot2]{discrete_scale}}.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details Values will be matched based on the soil names.
#' @references
#'  Jones, A., Montanarella, L. & Jones, R. (Ed.) (2005). \emph{Soil atlas of
#'  Europe}. Luxembourg: European Commission, Office for Official Publications
#'  of the European Communities. 128 pp. ISBN: 92-894-8120-X.
#' @return A \code{\link[ggplot2:discrete_scale]{discrete}} scale.
#' @example inst/examples/ex-science-soil.R
#' @author N. Frerebeau
#' @family Themed colour schemes
#' @export
#' @rdname scale_soil
scale_colour_soil <- function(..., aesthetics = "colour") {
  require_ggplot2()
  # Get palette
  color_palette <- colour("soil", names = TRUE)
  # Build scale
  ggplot2::scale_color_manual(..., values = color_palette(24),
                              aesthetics = aesthetics)
}

#' @export
#' @rdname scale_soil
scale_color_soil <- scale_colour_soil

#' @export
#' @rdname scale_soil
scale_fill_soil <- function(..., aesthetics = "fill") {
  require_ggplot2()
  # Get palette
  color_palette <- colour("soil", names = TRUE)
  # Build scale
  ggplot2::scale_fill_manual(..., values = color_palette(24),
                             aesthetics = aesthetics)
}
