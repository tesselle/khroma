# Color scales constructor for ggplot2
#' @include color.R
NULL

#' Color Scale Builder
#'
#' Builds a color scale for \pkg{ggplot2} or \pkg{ggraph}.
#' @param palette A [`character`] string giving the name of the color scheme to
#'  be used (see [info()]).
#' @param ... Extra parameters to be passed to the color scale function.
#' @return A [discrete][ggplot2::discrete_scale] or
#'  [continuous][ggplot2::continuous_scale] scale.
#' @example inst/examples/ex-pick.R
#' @author N. Frerebeau
#' @family ggplot2 scales
#' @name scale_picker
#' @rdname scale_picker
NULL

#' @export
#' @rdname scale_picker
scale_colour_picker <- function(..., palette = "YlOrBr") {
  fun <- sprintf("scale_colour_%s", palette)
  do.call(fun, args = list(...))
}

#' @export
#' @rdname scale_picker
scale_color_picker <- scale_colour_picker

#' @export
#' @rdname scale_picker
scale_fill_picker <- function(..., palette = "YlOrBr") {
  fun <- sprintf("scale_fill_%s", palette)
  do.call(fun, args = list(...))
}

#' @export
#' @rdname scale_picker
scale_edge_colour_picker <- function(..., palette = "YlOrBr") {
  fun <- sprintf("scale_edge_colour_%s", palette)
  do.call(fun, args = list(...))
}

#' @export
#' @rdname scale_picker
scale_edge_color_picker <- scale_edge_colour_picker

#' @export
#' @rdname scale_picker
scale_edge_fill_picker <- function(..., palette = "YlOrBr") {
  fun <- sprintf("scale_edge_fill_%s", palette)
  do.call(fun, args = list(...))
}

#' Color Scale Constructors
#'
#' Builds a discrete or continuous scale for \pkg{ggplot2} according to the
#' color scheme used.
#' @param aesthetics The names of the aesthetics that this scale works with.
#' @param scheme A [`character`] string giving the name of the scheme to be
#'  used (see [color()]).
#' @param guide A [`function`] used to create a guide or its name.
#'  See [ggplot2::guides()] for more information.
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
#'  continuous data (forces interpolation; see [color()]).
#' @param midpoint A [`numeric`] value specifying the midpoint (in
#'  data value) of the diverging scale (defaults to \eqn{0}).
#' @param ... Further arguments passed to [ggplot2::discrete_scale()]
#'  or [ggplot2::continuous_scale()], used respectively for qualitative data
#'  and diverging/sequential data.
#' @return A [discrete][ggplot2::discrete_scale()]
#'  or [continuous][ggplot2::continuous_scale()] scale.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
NULL

scale_discrete <- function(aesthetics, scheme, guide = "legend",
                           reverse = FALSE, use_names = FALSE,
                           lang = "en", ...) {
  # Check if ggplot2 is installed
  assert_package("ggplot2")

  # Get color scheme
  palette <- color(scheme, reverse = reverse, names = use_names, lang = lang)

  # Build scale
  scale_args <- list(...)
  scale_args$guide <- guide
  scale_args$na.value <- scale_args$na.value %||% attr(palette, "missing")

  do.call(
    ggplot2::discrete_scale,
    c(aesthetics = aesthetics, palette = palette, scale_args)
  )
}

scale_continuous <- function(aesthetics, scheme, guide = "colourbar",
                             reverse = FALSE, range = c(0, 1), midpoint = 0,
                             lang = "en", ...) {
  # Validation
  assert_package("ggplot2") # Check if ggplot2 is installed
  if (guide == "edge_colourbar") assert_package("ggraph")

  # Get color scheme
  palette <- color(scheme, reverse = reverse, names = FALSE, lang = lang)
  max <- attr(palette, "max")
  type <- attr(palette, "type")

  # Build scale
  scale_args <- list(...)
  scale_args$guide <- guide
  scale_args$na.value <- scale_args$na.value %||% attr(palette, "missing")

  if (type == "diverging") {
    scale_args$rescaler <- rescale_mid(mid = midpoint)
  }

  palette <- scales::gradient_n_pal(palette(max, range = range))
  do.call(
    ggplot2::continuous_scale,
    c(aesthetics = aesthetics, palette = palette, scale_args)
  )
}

rescale_mid <- function(mid) {
  function(x, to = c(0, 1), from = range(x, na.rm = TRUE)) {
    scale_midpoint(x, to = to, from = from, midpoint = mid)
  }
}
