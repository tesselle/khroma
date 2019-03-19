#' @include colour.R
NULL

## Colour scales constructor for ggplot2 =======================================
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

  if (type == "qualitative") {
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

## COPY FROM GGPLOT2 NON-EXPORTS ===============================================
#' @importFrom scales rescale_mid
#' @keywords internal
#' @noRd
mid_rescaler <- function(mid) {
  function(x, to = c(0, 1), from = range(x, na.rm = TRUE)) {
    scales::rescale_mid(x, to, from, mid)
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
#'  the palette to be used (see details).
#' @param reverse A \code{\link{logical}} scalar specifying if the resulting
#'  vector of colours should be reversed.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  \strong{These methods are deprecated, use \code{\link{scale_tol_discrete}},
#'  \code{\link{scale_tol_diverging}} or \code{\link{scale_tol_sequential}}
#'  instead.}
#'
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
  # Deprecate
  .Deprecated()

  paul_tol <- c("bright", "vibrant", "muted", "light", "rainbow",
                "sunset", "BuRd", "PRGn", "YlOrBr", "smooth rainbow")
  palette <- match.arg(palette, paul_tol, several.ok = FALSE)
  # Build scale
  scale(aesthetics, palette, reverse, ...)
}
#' @export
#' @rdname scale_tol
scale_color_tol <- scale_colour_tol
#' @export
#' @rdname scale_tol
scale_fill_tol <- function(..., palette, reverse = FALSE, aesthetics = "fill") {
  # Deprecate
  .Deprecated()

  paul_tol <- c("bright", "vibrant", "muted", "light", "rainbow",
                "sunset", "BuRd", "PRGn", "YlOrBr", "smooth rainbow")
  palette <- match.arg(palette, paul_tol, several.ok = FALSE)
  # Build scale
  scale(aesthetics, palette, reverse, ...)
}
