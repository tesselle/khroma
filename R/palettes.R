# PALETTES

# Palettes =====================================================================
## Color -----------------------------------------------------------------------
#' Color Mapping
#'
#' Maps values to colors.
#' @param scheme A [`character`] string giving the name of the scheme to be
#'  used (see [color()]).
#' @param domain A [`numeric`] range or a vector of categorical data specifying
#'  the possible values that can be mapped.
#' @param midpoint A length-one [`numeric`] vector specifying the mid-point of
#'  input range.
#' @param ordered A [`logical`] scalar: should the levels be treated as already
#'  in the correct order?
#' @param missing The color to return for `NA` values.
#' @param ... Further parameters to be passed to [color()].
#' @details
#'  A wrapper around `palette_color_continuous()` and
#'  `palette_color_discrete()`.
#' @return
#'  A palette [`function`] that when called with a single argument returns
#'  a [`character`] vector of colors.
#' @example inst/examples/ex-palette-color.R
#' @family palettes
#' @export
palette_color_picker <- function(scheme, domain = NULL, midpoint = NULL,
                                 ordered = FALSE, missing = NULL, ...) {

  scheme <- color(scheme, ...)
  col <- scheme()
  miss <- missing %||% attr(scheme, "missing")
  if (is.na(miss)) miss <- "#DDDDDD"

  quali <- attr(scheme, "type") == "qualitative"
  if (quali) {
    fun <- palette_color_discrete(
      colors = col,
      domain = domain,
      ordered = ordered,
      missing = miss
    )
  } else {
    fun <- palette_color_continuous(
      colors = col,
      domain = domain,
      midpoint = midpoint,
      missing = miss
    )
  }

  fun
}

#' @export
#' @rdname palette_color_picker
palette_colour_picker <- palette_color_picker

#' Color Mapping (continuous)
#'
#' Maps continuous values to an interpolated colors gradient.
#' @param colors A vector of colors that values will be mapped to. If `NULL`
#'  (the default), uses *YlOrRd* (see [grDevices::hcl.colors()]).
#' @param domain A [`numeric`] range specifying the possible values that can be
#'  mapped.
#' @param midpoint A length-one [`numeric`] vector specifying the mid-point of
#'  input range.
#' @param missing The color to return for `NA` values.
#' @return
#'  A palette [`function`] that when called with a single argument
#'  (a [`numeric`] vector of continuous values) returns a [`character`] vector
#'  of colors.
#' @example inst/examples/ex-palette-continuous.R
#' @family palettes
#' @export
palette_color_continuous <- function(colors = NULL, domain = NULL,
                                     midpoint = NULL, missing = "#DDDDDD") {

  force(colors)
  force(domain)
  force(midpoint)
  force(missing)

  function(x, ...) {
    need_continuous(x)

    rng <- if (!is.null(domain)) range(domain, finite = TRUE) else range(x, finite = TRUE)
    if (!is.null(midpoint) && is.numeric(midpoint)) {
      x <- scale_midpoint(x, to = c(0, 1), from = rng, midpoint = midpoint)
    } else {
      x <- scale_range(x, to = c(0, 1), from = rng)
    }

    out <- x < 0 | x > 1
    if (any(out, na.rm = TRUE)) {
      x[out] <- NA
      warning("Some values were outside the color scale.", call. = FALSE)
    }

    OK <- !is.na(x)
    if (is.null(colors)) {
      colors <- grDevices::hcl.colors(12, "YlOrRd", rev = TRUE)
    }
    colors <- grDevices::colorRamp(colors)(x[OK], ...)

    col <- rep(missing, length(x))
    col[OK] <- grDevices::rgb(colors, maxColorValue = 255)
    col
  }
}

#' @export
#' @rdname palette_color_continuous
palette_colour_continuous <- palette_color_continuous

#' Color Mapping (discrete)
#'
#' Maps categorical values to colors.
#' @param colors A vector of colors that values will be mapped to. If `NULL`
#'  (the default), uses *viridis* (see [grDevices::hcl.colors()]).
#' @param domain A vector of categorical data specifying the possible values
#'  that can be mapped.
#' @param ordered A [`logical`] scalar: should the levels be treated as already
#'  in the correct order?
#' @param missing The color to return for `NA` values.
#' @return
#'  A palette [`function`] that when called with a single argument
#'  (a vector of categorical values) returns a [`character`] vector of colors.
#' @example inst/examples/ex-palette-discrete.R
#' @family palettes
#' @export
palette_color_discrete <- function(colors = NULL, domain = NULL,
                                   ordered = FALSE, missing = "#DDDDDD") {

  force(colors)
  force(domain)
  force(ordered)
  force(missing)

  ## If named colors, override user settings
  if (!is.null(names(colors))) {
    domain <- names(colors)
    ordered <- TRUE
  }

  function(x, ...) {
    need_discrete(x)

    domain <- make_levels(x, levels = domain, ordered = ordered)
    n <- length(domain)
    x <- match(as.character(x), domain)

    OK <- !is.na(x)
    if (is.null(colors)) {
      colors <- grDevices::hcl.colors(n, "viridis")
    }

    if (length(colors) < n) {
      msg <- "Only %d colors were specified (%d are required)."
      warning(sprintf(msg, length(colors), n), call. = FALSE)
    }
    col <- colors[x]
    col[!OK] <- missing
    col
  }
}

#' @export
#' @rdname palette_color_discrete
palette_colour_discrete <- palette_color_discrete

## Symbol ----------------------------------------------------------------------
#' Symbol Mapping
#'
#' @param symbols,types A vector of symbols or line types.
#' @param domain A vector of categorical data specifying the possible values
#'  that can be mapped.
#' @param ordered A [`logical`] scalar: should the levels be treated as already
#'  in the correct order?
#' @param ... Currently not used.
#' @return
#'  A palette [`function`] that when called with a single argument
#'  (a [`character`] vector of categorical values) returns a vector of symbols.
#' @family palettes
#' @export
palette_shape <- function(symbols = NULL, domain = NULL, ordered = FALSE, ...) {

  force(symbols)
  force(domain)
  force(ordered)

  ## If named symbol, override user settings
  if (!is.null(names(symbols))) {
    domain <- names(symbols)
    ordered <- TRUE
  }

  function(x) {
    need_discrete(x)

    domain <- make_levels(x, levels = domain, ordered = ordered)
    x <- match(as.character(x), domain)

    if (is.null(symbols)) {
      n <- length(domain)
      if (n > 6) {
        warning("Consider specifying symbols manually: ",
                "more than 6 becomes difficult to discriminate.", call. = FALSE)
      }
      symbols <- c(16, 17, 15, 3, 7, 8)[seq_len(n)]
    }
    symbols[x]
  }
}

#' @export
#' @rdname palette_shape
palette_line <- function(types = NULL, domain = NULL, ordered = FALSE, ...) {
  if (is.null(types)) {
    types <- c("solid", "22", "42", "44", "13", "1343", "73", "2262",
               "12223242", "F282", "F4448444", "224282F2", "F1")
  }
  palette_shape(symbols = types, domain = domain, ordered = ordered, ...)
}

## Size ------------------------------------------------------------------------
#' Symbol Size Mapping
#'
#' @param range A length-two [`numeric`] vector giving range of possible sizes
#' (greater than 0).
#' @param ... Currently not used.
#' @return
#'  A palette [`function`] that when called with a single argument
#'  (a [`numeric`] vector of continuous values) returns a [`numeric`] vector
#'  giving the amount by which plotting text and symbols should be magnified
#'  relative to the default.
#' @family palettes
#' @export
palette_size_range <- function(range = c(1, 6), ...) {

  force(range)

  function(x) {
    need_continuous(x)
    scale_range(sqrt(x), to = range(range, na.rm = TRUE), from = c(0, 1))
  }
}

# Scales =======================================================================
#' Rescale Continuous Vector (minimum, maximum)
#'
#' Rescales continuous vector to have specified minimum and maximum.
#' @param x A [`numeric`] vector.
#' @param to A length-two [`numeric`] vector specifying the output range.
#' @param from A length-two [`numeric`] vector specifying the input range.
#' @return A [`numeric`] vector.
#' @family scales
#' @keywords internal
#' @noRd
scale_range <- function(x, to = c(0, 1), from = range(x, finite = TRUE)) {
  if (is_zero(to) || is_zero(from)) return(ifelse(is.na(x), NA, mean(to)))
  (x - from[1L]) / diff(from) * diff(to) + to[1L]
}

#' Rescale Continuous Vector (minimum, midpoint, maximum)
#'
#' Rescales continuous vector to have specified minimum, midpoint and maximum.
#' @param x A [`numeric`] vector.
#' @param to A length-two [`numeric`] vector specifying the output range.
#' @param from A length-two [`numeric`] vector specifying the input range.
#' @param midpoint A length-one [`numeric`] vector specifying the mid-point of
#'  input range.
#' @return A [`numeric`] vector.
#' @family scales
#' @keywords internal
#' @noRd
scale_midpoint <- function(x, to = c(0, 1), from = range(x, finite = TRUE), midpoint = 0) {
  if (is_zero(to) || is_zero(from)) return(ifelse(is.na(x), NA, mean(to)))
  extent <- 2 * max(abs(from - midpoint))
  (x - midpoint) / extent * diff(to) + mean(to)
}

# Helpers ======================================================================
need_continuous <- function(x) {
  if (!is.numeric(x)) {
    stop("Discrete value supplied to continuous scale.", call. = FALSE)
  }
  invisible(x)
}

need_discrete <- function(x) {
  if (is.double(x)) {
    warning("Continuous value supplied to discrete scale.", call. = FALSE)
  }
  invisible(x)
}

is_zero <- function(x, tolerance = sqrt(.Machine$double.eps)) {
  diff(range(x)) <= tolerance
}

make_levels <- function(x, levels = NULL, ordered = FALSE) {
  if (!is.null(levels)) return(make_levels(x = levels, ordered = ordered))

  if (is.null(x)) levels <- NULL
  else if (is.factor(x)) levels <- levels(x)
  else if (ordered) levels <- unique(x)
  else levels <- sort(unique(x))
  levels
}
