#' Colour Palette
#'
#' Provides qualitative, diverging and sequential colour schemes.
#' @param palette A [`character`] string giving the name of the palette to be
#'  used (see below).
#' @param reverse A [`logical`] scalar: should the resulting vector of colours
#'  should be reversed?
#' @param names A [`logical`] scalar: should the names of the colours should be
#'  kept in the resulting vector?
#' @param lang A [`character`] string specifying the language for the colour
#'  names. It must be one of "`en`" (English, the default) or "`fr`" (French).
#' @param force A [`logical`] scalar. If `TRUE`, forces the colour scheme to be
#'  interpolated. It should not be used routinely with qualitative colour
#'  schemes, as they are designed to be used as is to remain colour-blind safe.
#' @param ... Further arguments passed to
#'  [colorRampPalette][grDevices::colorRamp].
#' @section Paul Tol's Colour Schemes:
#'  The following palettes are available. The maximum number of supported
#'  colours is in brackets, this value is only relevant for the qualitative
#'  colour schemes (divergent and sequential schemes are linearly interpolated).
#'  \describe{
#'   \item{Qualitative data}{`bright` (7), `high contrast` (3), `vibrant` (7),
#'   `muted` (9), `medium contrast` (6), `pale` (6), `dark` (6), `light` (9).}
#'   \item{Diverging data}{`sunset` (11), `BuRd` (9), `PRGn` (9).}
#'   \item{Sequential data}{`YlOrBr` (9), `iridescent` (23), `discrete rainbow`
#'   (23), `smooth rainbow` (34).}
#'  }
#' @section Qualitative colour schemes:
#'  According to Paul Tol's technical note, the `bright`, `highcontrast`,
#'  `vibrant` and `muted` colour schemes are colour-blind safe. The
#'  `mediumcontrast` colour scheme is designed for situations needing colour
#'  pairs.
#'
#'  The `light` colour scheme is reasonably distinct for both normal or
#'  colourblind vision and is intended to fill labeled cells.
#'
#'  The `pale` and `dark` schemes are not very distinct in either normal or
#'  colourblind vision and should be used as a text background or to highlight
#'  a cell in a table.
#'
#'  Refer to the original document for details about the recommended uses (see
#'  references).
#' @section Rainbow colour scheme:
#'  As a general rule, ordered data should not be represented using a rainbow
#'  scheme. There are three main arguments against such use (Tol 2018):
#'  \itemize{
#'   \item{The spectral order of visible light carries no inherent magnitude
#'   message.}
#'   \item{Some bands of almost constant hue with sharp transitions between
#'   them, can be perceived as jumps in the data.}
#'   \item{Colour-blind people have difficulty distinguishing some colours of
#'   the rainbow.}
#'  }
#'  If such use cannot be avoided, Paul Tol's technical note provides two colour
#'  schemes that are reasonably clear in colour-blind vision. To remain
#'  colour-blind safe, these two schemes must comply with the following
#'  conditions:
#'  \describe{
#'   \item{`discreterainbow`}{This scheme must not be interpolated.}
#'   \item{`smoothrainbow`}{This scheme does not have to be used over the full
#'   range.}
#'  }
#' @section Okabe and Ito Colour Scheme:
#'  The following (qualitative) colour scheme is available:
#'  \describe{
#'   \item{`okabeito`}{Up to 8 colours.}
#'  }
#' @section Scientific Colour Schemes:
#'  The following (qualitative) color schemes are available:
#'  \describe{
#'   \item{`stratigraphy`}{International Chronostratigraphic Chart (175
#'   colours).}
#'   \item{`land`}{AVHRR Global Land Cover Classification (14 colours).}
#'   \item{`soil`}{FAO Reference Soil Groups (24 colours).}
#'  }
#' @return A palette function with the following attributes, that when called
#'  with a single integer argument (the number of levels) returns a (named)
#'  vector of colours.
#'  \describe{
#'   \item{palette}{A [`character`] string giving the name of the
#'   color scheme.}
#'   \item{type}{A [`character`] string giving the corresponding
#'   data type. One of "`qualitative`", "`diverging`" or "`sequential`".}
#'   \item{interpolate}{A [`logical`] scalar: can the color palette be
#'   interpolated?}
#'   \item{missing}{A [`character`] string giving the the hexadecimal
#'   representation of the colour that should be used for `NA` values.}
#'   \item{max}{An [`integer`] giving the maximum number of colour values.
#'   Only relevant for non-interpolated colour schemes.}
#'  }
#'
#'  For colour schemes that can be interpolated (diverging and sequential data),
#'  the colour range can be limited with an additional argument. `range` allows
#'  to remove a fraction of the colour domain (before being interpolated; see
#'  examples).
#' @references
#'  Jones, A., Montanarella, L. & Jones, R. (Ed.) (2005). *Soil atlas of
#'  Europe*. Luxembourg: European Commission, Office for Official Publications
#'  of the European Communities. 128 pp. ISBN: 92-894-8120-X.
#'
#'  Okabe, M. & Ito, K. (2008). *Color Universal Design (CUD): How to Make
#'  Figures and Presentations That Are Friendly to Colorblind People*.
#'  URL: \url{https://jfly.uni-koeln.de/color/}.
#'
#'  Tol, P. (2021). *Colour Schemes*. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.2.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#'
#'  \href{https://www.ccgm.org}{Commission for the Geological Map of the World}
#' @example inst/examples/ex-palettes.R
#' @author N. Frerebeau
#' @family colour palettes
#' @keywords color
#' @export
colour <- function(palette, reverse = FALSE, names = TRUE, lang = "en",
                   force = FALSE, ...) {
  ## Validation
  palette <- gsub(pattern = "[[:blank:]]", replacement = "", x = palette)
  palette <- match.arg(palette, names(.schemes), several.ok = FALSE)
  lang <- match.arg(lang, c("en", "fr"), several.ok = FALSE)

  ## Get colours
  col_palette <- .schemes[[palette]]
  col_colours <- col_palette[["colours"]]
  col_names <- col_palette[["names"]][[lang]]
  col_type <- col_palette[["type"]]
  col_interpolate <- col_palette[["interpolate"]]
  col_missing <- col_palette[["missing"]]
  col_scheme <- col_palette[["scheme"]]
  k <- col_palette[["max"]]

  ## Reverse colour order
  if (reverse) col_colours <- rev(col_colours)

  if (col_interpolate || force) {
    ## For colour schemes that can be linearly interpolated
    fun <- function(n, range = c(0, 1)) {
      if (missing(n)) n <- k
      # Validate
      if (any(range > 1) | any(range < 0))
        stop(sQuote("range"), " values must be in [0,1].", call. = FALSE)
      # Remove starting colours
      col_colours <- utils::tail(col_colours, k * (1 - range[[1]]))
      # Remove ending colours
      col_colours <- utils::head(col_colours, k * range[[2]])
      # Interpolate
      col <- grDevices::colorRampPalette(col_colours)(n)
      # Set attributes
      col <- structure(
        col,
        missing = col_missing,
        class = c("colour_scheme", "colour_continuous")
      )
      return(col)
    }
  } else {
    ## No interpolation
    ## FIXME: add 'range = c(0, 1)' to prevent "multiple local function
    ## definitions" note in R CMD check
    fun <- function(n, range = c(0, 1)) {
      if (missing(n)) n <- k
      # Validate
      if (n > k)
        stop(
          sprintf("%s colour scheme supports up to %d values.",
                  sQuote(palette), k),
          call. = FALSE
        )
      # Arrange colour schemes
      if (!is.null(col_scheme)) {
        m <- col_scheme[[n]]
        col <- col_colours[m]
      } else if (col_type == "qualitative") {
        m <- seq_len(n)
        col <- col_colours[m]
      } else {
        m <- seq(from = 1, to = k, length.out = n)
        col <- col_colours[m]
      }
      # Keep names?
      if (names) names(col) <- col_names[m] else col <- unname(col)
      # Set attributes
      col <- structure(
        col,
        missing = col_missing,
        class = c("colour_scheme", "colour_discrete")
      )
      return(col)
    }
  }
  ## Set attributes
  fun <- structure(
    fun,
    palette = palette,
    type = col_type,
    missing = col_missing,
    interpolate = col_interpolate || force,
    max = as.integer(k)
  )
  return(fun)
}

#' @export
#' @rdname colour
color <- colour

#' @export
print.colour_scheme <- function(x, ...) {
  if (requireNamespace("crayon", quietly = TRUE) &&
      getOption("crayon.enabled", default = FALSE)) {
    styled <- vapply(
      X = x,
      FUN = function(x) crayon::make_style(x, bg = TRUE)(x),
      FUN.VALUE = character(1)
    )
    cat(styled)
  } else {
    print(unclass(x))
  }
}

#' Colour Ramp
#'
#' Provides a colour scheme that map a `numeric` vector to colours.
#' @param x A [`numeric`] vector to be mapped to colours.
#' @param palette A [`character`] string giving the name of the palette to be
#'  used (see [colour()]).
#' @param midpoint A [`numeric`] value specifying the midpoint of `x`. If not
#'  `NULL`, `x` will be rescaled to have the specified `midpoint`.
#' @param ... Further arguments passed to [colour()].
#' @return A palette function with the following attributes, that when called
#'  with a single argument (the number of levels, e.g. the `breaks` returned by
#'  [hist()]) returns a vector of colours.
#' @example inst/examples/ex-ramp.R
#' @author N. Frerebeau
#' @family colour palettes
#' @keywords color
#' @export
ramp <- function(x, palette, midpoint = NULL, ...) {

  fun <- function(n) {

    if (!is.null(midpoint) && is.numeric(midpoint)) {
      to <- c(0, 1)
      from <- range(x, na.rm = TRUE)
      extent <- 2 * max(abs(from - midpoint))
      z <- (x - midpoint) / extent * diff(to) + mean(to)
    } else {
      z <- (x - min(x)) / (max(x) - min(x))
    }

    col <- colour(palette, ...)
    ramp <- grDevices::colorRamp(col(n))(z)

    ## Set attributes
    structure(
      grDevices::rgb(ramp[, 1], ramp[, 2], ramp[, 3], maxColorValue = 255),
      breaks = x,
      class = c("colour_scheme")
    )
  }
  return(fun)
}

#' Information
#'
#' Returns information about the available palettes.
#' @return
#'  A [`data.frame`] with the following columns:
#'  \describe{
#'   \item{`palette`}{Names of palette.}
#'   \item{`type`}{Types of palettes: sequential, diverging or qualitative.}
#'   \item{`max`}{Maximum number of colours that are contained in each
#'   palette. Only relevant for qualitative palettes.}
#'   \item{`missing`}{The hexadecimal color value for mapping missing values.}
#'  }
#' @example inst/examples/ex-info.R
#' @author N. Frerebeau
#' @family colour palettes
#' @export
info <- function() {
  meta <- lapply(
    X = .schemes,
    FUN = function(x) {
      list(type = x$type, max = x$max, missing = x$missing)
    }
  )
  meta <- do.call(rbind.data.frame, meta)
  rownames(meta) <- NULL
  colnames(meta) <- c("type", "max", "missing")
  meta$palette <- names(.schemes)
  meta[, c(4, 1, 2, 3)]
}
