#' @include colour.R
NULL

# Paul Tol's discrete colour schemes ===========================================
#' Paul Tol's discrete colour schemes for ggplot2
#'
#' Provides qualitative colour scales from Paul Tol's \emph{Colour Schemes}.
#' @param ... Arguments passed to \code{\link[ggplot2]{discrete_scale}}.
#' @param reverse A \code{\link{logical}} scalar. Should the resulting
#'  vector of colours be reversed?
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  The qualitative colour schemes are used as given: colours are picked up to
#'  the maximum number of supported values.
#'  \tabular{ll}{
#'   \strong{Palette} \tab \strong{Max.} \cr
#'   bright \tab 7 \cr
#'   vibrant \tab 7 \cr
#'   muted \tab 9 \cr
#'   light \tab 9 \cr
#'   rainbow \tab 23
#'  }
#' @references Tol, Paul (2018). \emph{Colour Schemes.} SRON. Technical Note No.
#'  SRON/EPS/TN/09-002. URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-discrete.R
#' @author N. Frerebeau
#' @family Paul Tol's colour schemes
#' @name scale_tol_discrete
#' @rdname scale_tol_discrete
NULL

## Bright ----------------------------------------------------------------------
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

## Vibrant ---------------------------------------------------------------------
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

## Muted -----------------------------------------------------------------------
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

## Light -----------------------------------------------------------------------
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

## Rainbow ---------------------------------------------------------------------
#' @export
#' @rdname scale_tol_discrete
scale_colour_rainbow <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "rainbow", reverse, ...)
}

#' @export
#' @rdname scale_tol_discrete
scale_color_rainbow <- scale_colour_rainbow

#' @export
#' @rdname scale_tol_discrete
scale_fill_rainbow <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "rainbow", reverse, ...)
}

# Paul Tol's diverging colour schemes ==========================================
#' Paul Tol's diverging colour schemes for ggplot2
#'
#' Provides diverging colour scales from Paul Tol's \emph{Colour Schemes}.
#' @param ... Arguments passed to \code{\link[ggplot2]{continuous_scale}}.
#' @param reverse A \code{\link{logical}} scalar. Should the resulting
#'  vector of colours be reversed?
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  Diverging colour schemes are linearly interpolated.
#'  \tabular{ll}{
#'   \strong{Palette} \tab \strong{Max.} \cr
#'   sunset \tab 11 \cr
#'   BuRd \tab 9 \cr
#'   PRGn \tab 9
#'  }
#' @references Tol, Paul (2018). \emph{Colour Schemes.} SRON. Technical Note No.
#'  SRON/EPS/TN/09-002. URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-diverging.R
#' @author N. Frerebeau
#' @family Paul Tol's colour schemes
#' @name scale_tol_diverging
#' @rdname scale_tol_diverging
NULL

## Sunset ----------------------------------------------------------------------
#' @export
#' @rdname scale_tol_diverging
scale_colour_sunset <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "sunset", reverse, ...)
}

#' @export
#' @rdname scale_tol_diverging
scale_color_sunset <- scale_colour_sunset

#' @export
#' @rdname scale_tol_diverging
scale_fill_sunset <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "sunset", reverse, ...)
}

## BuRd ------------------------------------------------------------------------
#' @export
#' @rdname scale_tol_diverging
scale_colour_BuRd <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "BuRd", reverse, ...)
}

#' @export
#' @rdname scale_tol_diverging
scale_color_BuRd <- scale_colour_BuRd

#' @export
#' @rdname scale_tol_diverging
scale_fill_BuRd <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "BuRd", reverse, ...)
}

## PRGn ------------------------------------------------------------------------
#' @export
#' @rdname scale_tol_diverging
scale_colour_PRGn <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "PRGn", reverse, ...)
}

#' @export
#' @rdname scale_tol_diverging
scale_color_PRGn <- scale_colour_PRGn

#' @export
#' @rdname scale_tol_diverging
scale_fill_PRGn <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "PRGn", reverse, ...)
}

# Paul Tol's sequential colour schemes =========================================
#' Paul Tol's sequential colour schemes for ggplot2
#'
#' Provides sequential colour scales from Paul Tol's \emph{Colour Schemes}.
#' @param ... Arguments passed to \code{\link[ggplot2]{continuous_scale}}.
#' @param reverse A \code{\link{logical}} scalar. Should the resulting
#'  vector of colours be reversed?
#' @param aesthetics A \code{\link{character}} string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  Sequential colour schemes are linearly interpolated.
#'  \tabular{ll}{
#'   \strong{Palette} \tab \strong{Max.} \cr
#'   YlOrBr \tab 9 \cr
#'   smooth rainbow \tab 34
#'  }
#' @references Tol, Paul (2018). \emph{Colour Schemes.} SRON. Technical Note No.
#'  SRON/EPS/TN/09-002. URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-tol-sequential.R
#' @author N. Frerebeau
#' @family Paul Tol's colour schemes
#' @name scale_tol_sequential
#' @rdname scale_tol_sequential
NULL

## YlOrBr ----------------------------------------------------------------------
#' @export
#' @rdname scale_tol_diverging
scale_colour_YlOrBr <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "YlOrBr", reverse, ...)
}

#' @export
#' @rdname scale_tol_diverging
scale_color_YlOrBr <- scale_colour_YlOrBr

#' @export
#' @rdname scale_tol_diverging
scale_fill_YlOrBr <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "YlOrBr", reverse, ...)
}

## smooth rainbow --------------------------------------------------------------
#' @export
#' @rdname scale_tol_diverging
scale_colour_smoothrainbow <- function(..., reverse = FALSE, aesthetics = "colour") {
  scale(aesthetics, "smooth rainbow", reverse, ...)
}

#' @export
#' @rdname scale_tol_diverging
scale_color_smoothrainbow <- scale_colour_smoothrainbow

#' @export
#' @rdname scale_tol_diverging
scale_fill_smoothrainbow <- function(..., reverse = FALSE, aesthetics = "fill") {
  scale(aesthetics, "smooth rainbow", reverse, ...)
}
