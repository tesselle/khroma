# Paul Tol's colour schemes
#' @include colour.R
NULL

# Discrete =====================================================================
#' Paul Tol's Discrete Colour Schemes for \pkg{ggplot2}
#'
#' Provides qualitative colour scales from Paul Tol's \emph{Colour Schemes}.
#' @param ... Arguments passed to \code{\link[ggplot2]{discrete_scale}}.
#' @param reverse A \code{\link{logical}} scalar. Should the resulting
#'  vector of colours be reversed?
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  The qualitative colour schemes are used as given (no interpolation):
#'  colours are picked up to the maximum number of supported values.
#'
#'  \tabular{ll}{
#'   \strong{Palette} \tab \strong{Max.} \cr
#'   bright \tab 7 \cr
#'   contrast \tab 3 \cr
#'   vibrant \tab 7 \cr
#'   muted \tab 9 \cr
#'   pale \tab 6 \cr
#'   dark \tab 6 \cr
#'   light \tab 9 \cr
#'  }
#' @inheritSection colour Qualitative colour schemes
#' @return A \code{\link[ggplot2:discrete_scale]{discrete}} scale.
#' @references
#'  Tol, P. (2018). \emph{Colour Schemes}. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-discrete.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family qualitative colour schemes
#' @family Paul Tol's colour schemes
#' @name scale_tol_discrete
#' @rdname scale_tol_discrete
NULL

## ---------------------------------------------------------------------- Bright
#' @export
#' @rdname scale_tol_discrete
scale_colour_bright <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "bright", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_bright <- scale_colour_bright

#' @export
#' @rdname scale_tol_discrete
scale_fill_bright <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "bright", reverse, ...)
}

## --------------------------------------------------------------- High contrast
#' @export
#' @rdname scale_tol_discrete
scale_colour_contrast <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "contrast", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_contrast <- scale_colour_contrast

#' @export
#' @rdname scale_tol_discrete
scale_fill_contrast <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "contrast", reverse, ...)
}

## --------------------------------------------------------------------- Vibrant
#' @export
#' @rdname scale_tol_discrete
scale_colour_vibrant <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "vibrant", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_vibrant <- scale_colour_vibrant

#' @export
#' @rdname scale_tol_discrete
scale_fill_vibrant <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "vibrant", reverse, ...)
}

## ----------------------------------------------------------------------- Muted
#' @export
#' @rdname scale_tol_discrete
scale_colour_muted <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "muted", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_muted <- scale_colour_muted

#' @export
#' @rdname scale_tol_discrete
scale_fill_muted <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "muted", reverse, ...)
}

## ------------------------------------------------------------------------ Pale
#' @export
#' @rdname scale_tol_discrete
scale_colour_pale <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "pale", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_pale <- scale_colour_pale

#' @export
#' @rdname scale_tol_discrete
scale_fill_pale <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "pale", reverse, ...)
}

## ------------------------------------------------------------------------ Dark
#' @export
#' @rdname scale_tol_discrete
scale_colour_dark <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "dark", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_dark <- scale_colour_dark

#' @export
#' @rdname scale_tol_discrete
scale_fill_dark <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "dark", reverse, ...)
}

## ----------------------------------------------------------------------- Light
#' @export
#' @rdname scale_tol_discrete
scale_colour_light <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "light", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_light <- scale_colour_light

#' @export
#' @rdname scale_tol_discrete
scale_fill_light <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "light", reverse, ...)
}

# Diverging ====================================================================
#' Paul Tol's Diverging Colour Schemes for \pkg{ggplot2}
#'
#' Provides diverging colour scales from Paul Tol's \emph{Colour Schemes}.
#' @param ... Arguments passed to \code{\link[ggplot2]{continuous_scale}}.
#' @param reverse A \code{\link{logical}} scalar. Should the resulting
#'  vector of colours be reversed?
#' @param range A length-two \code{\link{numeric}} vector specifying the
#' fraction of the scheme's colour domain to keep.
#' @param midpoint A length-one \code{\link{numeric}} vector giving the midpoint
#'  (in data value) of the diverging scale. Defaults to \code{0}.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  If more colours than defined are needed from a given scheme, the colour
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'  Note that the default colour for \code{NA} can be overridden by passing
#'  a value to \code{\link[ggplot2]{continuous_scale}}.
#'
#'  \tabular{lll}{
#'   \strong{Palette} \tab \strong{Max. colours} \tab \strong{NA value} \cr
#'   sunset \tab 11 \tab #FFFFFF \cr
#'   BuRd \tab 9 \tab #FFEE99 \cr
#'   PRGn \tab 9 \tab #FFEE99 \cr
#'  }
#' @return A \code{\link[ggplot2:continuous_scale]{continuous}} scale.
#' @references
#'  Tol, P. (2018). \emph{Colour Schemes}. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-diverging.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family diverging colour schemes
#' @family Paul Tol's colour schemes
#' @name scale_tol_diverging
#' @rdname scale_tol_diverging
NULL

## ---------------------------------------------------------------------- Sunset
#' @export
#' @rdname scale_tol_diverging
scale_colour_sunset <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, aesthetics = "colour") {
  scale(aesthetics, "sunset", reverse = reverse, range = range,
        midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_tol_diverging
scale_color_sunset <- scale_colour_sunset

#' @export
#' @rdname scale_tol_diverging
scale_fill_sunset <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, aesthetics = "fill") {
  scale(aesthetics, "sunset", reverse = reverse, range = range,
        midpoint = midpoint, ...)
}

## ------------------------------------------------------------------------ BuRd
#' @export
#' @rdname scale_tol_diverging
scale_colour_BuRd <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, aesthetics = "colour") {
  scale(aesthetics, "BuRd", reverse = reverse, range = range,
        midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_tol_diverging
scale_color_BuRd <- scale_colour_BuRd

#' @export
#' @rdname scale_tol_diverging
scale_fill_BuRd <- function(..., reverse = FALSE, range = c(0, 1),
                            midpoint = 0, aesthetics = "fill") {
  scale(aesthetics, "BuRd", reverse = reverse, range = range,
        midpoint = midpoint, ...)
}

## ------------------------------------------------------------------------ PRGn
#' @export
#' @rdname scale_tol_diverging
scale_colour_PRGn <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, aesthetics = "colour") {
  scale(aesthetics, "PRGn", reverse = reverse, range = range,
        midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_tol_diverging
scale_color_PRGn <- scale_colour_PRGn

#' @export
#' @rdname scale_tol_diverging
scale_fill_PRGn <- function(..., reverse = FALSE, range = c(0, 1),
                            midpoint = 0, aesthetics = "fill") {
  scale(aesthetics, "PRGn", reverse = reverse, range = range,
        midpoint = midpoint, ...)
}

# Sequential ===================================================================
#' Paul Tol's Sequential Colour Schemes for \pkg{ggplot2}
#'
#' Provides sequential colour scales from Paul Tol's \emph{Colour Schemes}.
#' @param ... Arguments passed to \code{\link[ggplot2]{continuous_scale}}.
#' @param reverse A \code{\link{logical}} scalar. Should the resulting
#'  vector of colours be reversed?
#' @param range A length-two \code{\link{numeric}} vector specifying the
#' fraction of the scheme's colour domain to keep.
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  If more colours than defined are needed from a given scheme, the colour
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme, with the exception of the \code{discrete rainbow} scheme (see
#'  below).
#'  Note that the default colour for \code{NA} can be overridden by passing
#'  a value to \code{\link[ggplot2]{continuous_scale}}.
#'
#'  \tabular{lll}{
#'   \strong{Palette} \tab \strong{Max. colours} \tab \strong{NA value} \cr
#'   YlOrBr \tab 9 \tab #888888 \cr
#'   iridescent \tab 23 \tab #999999 \cr
#'   discrete rainbow \tab 23 \tab #777777 \cr
#'   smooth rainbow \tab 34 \tab #666666 \cr
#'  }
#' @inheritSection colour Rainbow colour scheme
#' @return A \code{\link[ggplot2:continuous_scale]{continuous}} scale.
#' @references
#'  Tol, P. (2018). \emph{Colour Schemes}. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-sequential.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family sequential colour schemes
#' @family Paul Tol's colour schemes
#' @name scale_tol_sequential
#' @rdname scale_tol_sequential
NULL

## ---------------------------------------------------------------------- YlOrBr
#' @export
#' @rdname scale_tol_sequential
scale_colour_YlOrBr <- function(..., reverse = FALSE, range = c(0, 1),
                                aesthetics = "colour") {
  scale(aesthetics, "YlOrBr", reverse = reverse, range = range, ...)
}

#' @export
#' @rdname scale_tol_sequential
scale_color_YlOrBr <- scale_colour_YlOrBr

#' @export
#' @rdname scale_tol_sequential
scale_fill_YlOrBr <- function(..., reverse = FALSE, range = c(0, 1),
                              aesthetics = "fill") {
  scale(aesthetics, "YlOrBr", reverse = reverse, range = range, ...)
}

## ------------------------------------------------------------------ Iridescent
#' @export
#' @rdname scale_tol_sequential
scale_colour_iridescent <- function(..., reverse = FALSE, range = c(0, 1),
                                    aesthetics = "colour") {
  scale(aesthetics, "iridescent", reverse = reverse, range = range, ...)
}

#' @export
#' @rdname scale_tol_sequential
scale_color_iridescent <- scale_colour_iridescent

#' @export
#' @rdname scale_tol_sequential
scale_fill_iridescent <- function(..., reverse = FALSE, range = c(0, 1),
                                  aesthetics = "fill") {
  scale(aesthetics, "iridescent", reverse = reverse, range = range, ...)
}

## ------------------------------------------------------------ Discrete Rainbow
#' @export
#' @rdname scale_tol_sequential
scale_colour_discreterainbow <- function(..., reverse = FALSE,
                                         aesthetics = "colour") {
  scale(aesthetics, "discrete rainbow", reverse, ...)
}

#' @export
#' @rdname scale_tol_sequential
scale_color_discreterainbow <- scale_colour_discreterainbow

#' @export
#' @rdname scale_tol_sequential
scale_fill_discreterainbow <- function(..., reverse = FALSE,
                                       aesthetics = "fill") {
  scale(aesthetics, "discrete rainbow", reverse, ...)
}

## -------------------------------------------------------------- Smooth Rainbow
#' @export
#' @rdname scale_tol_sequential
scale_colour_smoothrainbow <- function(..., reverse = FALSE, range = c(0, 1),
                                       aesthetics = "colour") {
  scale(aesthetics, "smooth rainbow", reverse = reverse, range = range, ...)
}

#' @export
#' @rdname scale_tol_sequential
scale_color_smoothrainbow <- scale_colour_smoothrainbow

#' @export
#' @rdname scale_tol_sequential
scale_fill_smoothrainbow <- function(..., reverse = FALSE, range = c(0, 1),
                                     aesthetics = "fill") {
  scale(aesthetics, "smooth rainbow", reverse = reverse, range = range, ...)
}
