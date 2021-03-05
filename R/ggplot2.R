# Colour scales constructor for ggplot2
#' @include colour.R
NULL

#' Colour Scale Constructors
#'
#' Builds a discrete or continuous scale for \pkg{ggplot2} according to the
#' colour scheme used.
#' @param aesthetics The names of the aesthetics that this scale works with.
#' @param scale_name A \code{\link{character}} string giving the name of
#'  the palette to be used (see \code{\link{colour}}).
#' @param reverse A \code{\link{logical}} scalar: should the resulting
#'  vector of colours should be reversed?
#' @param label A \code{\link{logical}} scalar: should the names of the
#'  colours should be kept in the resulting vector?
#' @param lang A \code{\link{character}} string specifying the language for the
#'  colour names. It must be one of "\code{en}" (english, the default) or
#'  "\code{fr}" (french).
#' @param type A \code{\link{character}} string specifying the scale to be
#'  build. It must be one of "\code{auto}" (the default), "\code{discrete}" or
#'  "\code{continuous}". "\code{discrete}" allows to use a continuous colour
#'  scheme with discrete data. "\code{continuous}" allows to use a discrete
#'  colour scheme with continuous data (forces interpolation; see
#'  \code{\link{colour}}).
#' @param midpoint A \code{\link{numeric}} value specifying the midpoint (in
#'  data value) of the diverging scale (defaults to \eqn{0}).
#' @param ... Further arguments passed to \code{\link[ggplot2]{discrete_scale}}
#'  or \code{\link[ggplot2]{continuous_scale}}, used respectively for
#'  qualitative data and diverging/sequential data.
#' @return A \code{\link[ggplot2:discrete_scale]{discrete}}
#'  or \code{\link[ggplot2:continuous_scale]{continuous}} scale.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
NULL

scale_discrete <- function(aesthetics, scale_name, reverse = FALSE,
                           labels = FALSE, lang = "en", ...) {
  # Get colour scheme
  palette <- colour(scale_name, reverse = reverse, names = labels, lang = lang)

  # Build scale
  scale_arguments <- list(...)
  if (!("na.value" %in% names(scale_arguments))) {
    scale_arguments[["na.value"]] <- attr(palette, "missing")
  }
  do.call(
    ggplot2::discrete_scale,
    c(aesthetics, scale_name, palette, scale_arguments)
  )
}

scale_continuous <- function(aesthetics, scale_name, reverse = FALSE,
                             lang = "en", range = c(0, 1), midpoint = 0, ...) {
  # Get colour scheme
  palette <- colour(scale_name, reverse = reverse, names = FALSE, lang = lang)
  max <- attr(palette, "max")
  type <- attr(palette, "type")

  # Build scale
  scale_arguments <- list(...)
  if (!("na.value" %in% names(scale_arguments))) {
    scale_arguments[["na.value"]] <- attr(palette, "missing")
  }
  if (!("guide" %in% names(scale_arguments))) {
    scale_arguments[["guide"]] <- "colourbar"
  }
  if (type == "diverging") {
    scale_arguments[["rescaler"]] <- mid_rescaler(mid = midpoint)
  }

  palette <- scales::gradient_n_pal(palette(max, range = range))
  do.call(
    ggplot2::continuous_scale,
    c(aesthetics, scale_name, palette, scale_arguments)
  )
}

# COPY FROM GGPLOT2 NON-EXPORTS
#' @keywords internal
#' @noRd
mid_rescaler <- function(mid) {
  function(x, to = c(0, 1), from = range(x, na.rm = TRUE)) {
    scales::rescale_mid(x, to, from, mid)
  }
}
