# Colour scales constructor for ggplot2
#' @include colour.R
NULL

#' Color Scale Constructors
#'
#' Builds a discrete or continuous scale for \pkg{ggplot2} according to the
#' color scheme used.
#' @param aesthetics The names of the aesthetics that this scale works with.
#' @param scale_name A [`character`] string giving the name of the palette to be
#'  used (see [colour()]).
#' @param reverse A [`logical`] scalar: should the resulting vector of colors
#'  should be reversed?
#' @param use_names A [`logical`] scalar: should the names of the colors be
#'  preserved?
#' @param lang A [`character`] string specifying the language for the color
#'  names. It must be one of "`en`" (english, the default) or "`fr`" (french).
#' @param type A [`character`] string specifying the scale to be
#'  build. It must be one of "`auto`" (the default), "`discrete`" or
#'  "`continuous`". "`discrete`" allows to use a continuous color scheme with
#'  discrete data. "`continuous`" allows to use a discrete color scheme with
#'  continuous data (forces interpolation; see [colour()]).
#' @param midpoint A [`numeric`] value specifying the midpoint (in
#'  data value) of the diverging scale (defaults to \eqn{0}).
#' @param ... Further arguments passed to [ggplot2::discrete_scale()]
#'  or [ggplot2::continuous_scale()], used respectively for qualitative data
#'  and diverging/sequential data.
#' @return A [discrete][ggplot2::discrete_scale()]
#'  or [continuous][ggplot2:continuous_scale()] scale.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
NULL

scale_discrete <- function(aesthetics, scale_name, reverse = FALSE,
                           use_names = FALSE, lang = "en", ...) {
  # Get colour scheme
  palette <- colour(scale_name, reverse = reverse, names = use_names,
                    lang = lang)

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
