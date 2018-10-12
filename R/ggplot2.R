#' @include colour.R utils.R
NULL
# Colour scales constructor for ggplot2 ========================================
#' Colour scale constructor
#'
#' Builds discrete or continuous scale for ggplot2 according to the color
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
scale <- function(aesthetics, palette, reverse = FALSE, ...) {
  # Check required package
  checkPackage("ggplot2")
  # Get palette
  scheme <- colour(palette, reverse, names = FALSE)
  type <- attr(scheme, "type")
  interpolate <- attr(scheme, "interpolate")
  missing <- attr(scheme, "missing")
  max <- attr(scheme, "max")
  # Build scale
  scale_arguments <- list(...)
  if (!("na.value" %in% names(scale_arguments))) {
    scale_arguments[["na.value"]] <- missing
  }
  if (!("guide" %in% names(scale_arguments))) {
    scale_arguments[["guide"]] <- if(interpolate) "colourbar" else "legend"
  }
  if (type == "qualitative") {
    do.call(
      ggplot2::discrete_scale,
      c(aesthetics, palette, scheme, scale_arguments)
    )
  } else {
    do.call(
      ggplot2::continuous_scale,
      c(aesthetics, palette, scales::gradient_n_pal(scheme(max)), scale_arguments)
    )
  }
}
# Discrete and gradient colour scales for ggplot2 ==============================
#' Paul Tol's Colour Schemes for ggplot2
#'
#' Provides qualitative, diverging and sequential colour scales from Paul Tol's
#'  \emph{Colour Schemes}.
#' @param ... Arguments passed to \code{\link[ggplot2]{discrete_scale}}
#'  or \code{\link[ggplot2]{continuous_scale}}, used respectively for
#'  qualitative data and diverging/sequential data.
#' @param palette A \code{\link{character}} string giving the name of
#'  the palette to be used (see \code{\link{colour}}).
#' @param reverse A \code{\link{logical}} scalar specifying if the resulting
#'  vector of colours should be reversed.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  Paul Tol provides colour schemes ready for each type of data, with colours
#'  that are :
#'  \itemize{
#'   \item distinct for all people, including colour-blind readers;
#'   \item distinct from black and white;
#'   \item distinct on screen and paper;
#'   \item matching well together.
#'  }
#'  The qualitative colour schemes are used as given: colours are picked at
#'  random up to the maximum number of supported values (in brackets). Diverging
#'  and sequential colour schemes are linearly interpolated.
#'  The following palettes are available:
#'  \describe{
#'   \item{Qualitative data}{bright (7), vibrant (7), muted (9), light (9), rainbow (23)}
#'   \item{Diverging data}{sunset (11), BuRd (9), PRGn (9)}
#'   \item{Sequential data}{YlOrBr (9), smooth rainbow (34)}
#'  }
#' @references Tol, Paul (2018). \emph{Colour Schemes.} SRON. Technical Note No.
#'  SRON/EPS/TN/09-002. URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/tol.R
#' @author N. Frerebeau
#' @family colour scales for ggplot2
#' @export
#' @rdname scale_tol
scale_colour_tol <- function(..., palette, reverse = FALSE, aesthetics = "colour") {
  # Check required package
  checkPackage("ggplot2")
  # Build scale
  scale(aesthetics, palette, reverse, ...)
}
#' @export
#' @rdname scale_tol
scale_color_tol <- scale_colour_tol
#' @export
#' @rdname scale_tol
scale_fill_tol <- function(..., palette, reverse = FALSE, aesthetics = "fill") {
  # Check required package
  checkPackage("ggplot2")
  # Build scale
  scale(aesthetics, palette, reverse, ...)
}
# ------------------------------------------------------------------------------
#' Geologic Timescale Colour Scheme for ggplot2
#'
#' Provides the geologic timescale colour scale.
#' @param ... Arguments passed on to \code{\link[ggplot2]{discrete_scale}}.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details Values will be matched based on the unit names.
#' @references \href{Commission for the Geological Map of the World}{https://www.ccgm.org}
#' @example inst/examples/stratigraphy.R
#' @author N. Frerebeau
#' @family colour scales for ggplot2
#' @export
#' @rdname scale_stratigraphy
scale_colour_stratigraphy <- function(..., aesthetics = "colour") {
  # Check required package
  checkPackage("ggplot2")
  # Get palette
  colour_palette <- colour("stratigraphy", names = TRUE)
  # Build scale
  ggplot2::scale_color_manual(..., values = colour_palette(175),
                              aesthetics = aesthetics)
}
#' @export
#' @rdname scale_stratigraphy
scale_color_stratigraphy <- scale_colour_stratigraphy
#' @export
#' @rdname scale_stratigraphy
scale_fill_stratigraphy <- function(..., aesthetics = "fill") {
  # Check required package
  checkPackage("ggplot2")
  # Get palette
  colour_palette <- colour("stratigraphy", names = TRUE)
  # Build scale
  ggplot2::scale_fill_manual(..., values = colour_palette(175),
                             aesthetics = aesthetics)
}
