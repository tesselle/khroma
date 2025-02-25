#' Color Schemes
#'
#' Provides qualitative, diverging and sequential color schemes.
#' @param palette A [`character`] string giving the name of the scheme to be
#'  used (see [info()]).
#' @param reverse A [`logical`] scalar: should the resulting vector of colors
#'  should be reversed?
#' @param names A [`logical`] scalar: should the names of the colors should be
#'  kept in the resulting vector?
#' @param lang A [`character`] string specifying the language for the color
#'  names. It must be one of "`en`" (English, the default) or "`fr`" (French).
#' @param force A [`logical`] scalar. If `TRUE`, forces the color scheme to be
#'  interpolated. It should not be used routinely with qualitative color
#'  schemes, as they are designed to be used as is to remain color-blind safe.
#' @param ... Further arguments passed to
#'  [colorRampPalette][grDevices::colorRamp].
#' @return
#'  A [`function`] function with the following attributes, that when called
#'  with a single argument (an [`integer`] specifying the number of colors)
#'  returns a (named) vector of colors.
#'
#'  \describe{
#'   \item{palette}{A [`character`] string giving the name of the
#'   color scheme.}
#'   \item{type}{A [`character`] string giving the corresponding
#'   data type. One of "`qualitative`", "`diverging`" or "`sequential`".}
#'   \item{interpolate}{A [`logical`] scalar: can the color palette be
#'   interpolated?}
#'   \item{missing}{A [`character`] string giving the the hexadecimal
#'   representation of the color that should be used for `NA` values.}
#'   \item{max}{An [`integer`] giving the maximum number of color values.
#'   Only relevant for non-interpolated color schemes.}
#'  }
#'
#'  For color schemes that can be interpolated (diverging and sequential data),
#'  the color range can be limited with an additional argument. `range` allows
#'  to remove a fraction of the color domain (before being interpolated; see
#'  examples).
#' @references
#'  Crameri, F. (2018). Geodynamic diagnostics, scientific visualisation and
#'  StagLab 3.0. *Geosci. Model Dev.*, 11, 2541-2562.
#'  \doi{10.5194/gmd-11-2541-2018}
#'
#'  Crameri, F., Shephard, G. E. & Heron, P. J. (2020). The misuse of colour in
#'  science communication. *Nature Communications*, 11, 5444.
#'  \doi{10.1038/s41467-020-19160-7}
#'
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
#'  \href{https://ccgm.org/}{Commission for the Geological Map of the World}
#' @example inst/examples/ex-palettes.R
#' @author N. Frerebeau
#' @family color schemes
#' @keywords color
#' @export
colour <- function(palette, reverse = FALSE, names = FALSE, lang = "en",
                   force = FALSE, ...) {
  ## Validation
  palette <- gsub(pattern = "[[:blank:]]", replacement = "", x = palette)
  palette <- match.arg(palette, names(.schemes), several.ok = FALSE)
  lang <- match.arg(lang, c("en", "fr"), several.ok = FALSE)

  ## Get colors
  col_palette <- .schemes[[palette]]
  col_colors <- col_palette[["colours"]]
  col_names <- col_palette[["names"]][[lang]]
  col_type <- col_palette[["type"]]
  col_interpolate <- col_palette[["interpolate"]]
  col_missing <- col_palette[["missing"]]
  col_scheme <- col_palette[["scheme"]]
  k <- col_palette[["max"]]

  ## Reverse color order
  if (reverse) col_colors <- rev(col_colors)

  if (col_interpolate || force) {

    ## For color schemes that can be linearly interpolated
    fun <- function(n, range = c(0, 1)) {
      if (missing(n)) n <- k
      # Validate
      if (any(range > 1) || any(range < 0)) {
        msg <- tr_("%s values must be in [0,1].")
        stop(sprintf(msg, sQuote("range")), call. = FALSE)
      }
      # Remove starting colors
      col_colors <- utils::tail(col_colors, k * (1 - range[[1]]))
      # Remove ending colors
      col_colors <- utils::head(col_colors, k * range[[2]])
      # Interpolate
      col <- grDevices::colorRampPalette(col_colors)(n)
      # Set attributes
      col <- structure(
        col,
        missing = col_missing,
        class = c("color_scheme", "color_continuous")
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
      if (n > k) {
        msg <- tr_("%s color scheme supports up to %d values.")
        stop(sprintf(msg, sQuote(palette), k), call. = FALSE)
      }
      # Arrange color schemes
      if (!is.null(col_scheme)) {
        m <- col_scheme[[n]]
        if (reverse) {
          m <- rev(m)
          col_colors <- rev(col_colors)
        }
        col <- col_colors[m]
      } else if (col_type == "qualitative") {
        m <- seq_len(n)
        col <- col_colors[m]
      } else {
        m <- seq(from = 1, to = k, length.out = n)
        col <- col_colors[m]
      }
      # Keep names?
      if (names) names(col) <- col_names[m] else col <- unname(col)
      # Set attributes
      col <- structure(
        col,
        missing = col_missing,
        class = c("color_scheme", "color_discrete")
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
