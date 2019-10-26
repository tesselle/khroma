#' Colour Palette
#'
#' Provides qualitative, diverging and sequential colour schemes.
#' @param palette A \code{\link{character}} string giving the name of
#'  the palette to be used (see below).
#' @param reverse A \code{\link{logical}} scalar: should the resulting
#'  vector of colours should be reversed?
#' @param names A \code{\link{logical}} scalar: should the names of the
#'  colours should be kept in the resulting vector?
#' @param ... Further arguments passed to
#'  \code{\link[grDevices]{colorRampPalette}}.
#' @section Paul Tol's Colour Schemes:
#'  The following palettes are available. The maximum number of supported
#'  colours is in brackets, this value is only relevant for the qualitative
#'  colour schemes (divergent and sequential schemes are linearly interpolated).
#'  \describe{
#'   \item{Qualitative data}{bright (7), contrast (3), vibrant (7), muted (9),
#'   pale (6), dark (6), light (9).}
#'   \item{Diverging data}{sunset (11), BuRd (9), PRGn (9).}
#'   \item{Sequential data}{YlOrBr (9), iridescent (23), discrete rainbow (23),
#'   smooth rainbow (34).}
#'  }
#' @section Qualitative colour schemes:
#'  According to Paul Tol's technical note, the \code{bright}, \code{contrast},
#'  \code{vibrant} and \code{muted} colour schemes are colour-blind safe.
#'
#'  The \code{light} colour scheme is reasonably distinct for both normal or
#'  colour-blind vision and is intended to fill labelled cells.
#'
#'  The \code{pale} and \code{dark} schemes are not very distinct in either
#'  normal or colour-blind vision and should be used as a text background or
#'  to highlight a cell in a table.
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
#'   \item{discrete rainbow}{This scheme must not be interpolated.}
#'   \item{smooth rainbow}{This scheme does not have to be used over the full
#'   range.}
#'  }
#' @section Scientific Colour Schemes:
#'  The following (qualitative) colour schemes are available:
#'  \describe{
#'   \item{stratigraphy}{International Chronostratigraphic Chart (175 colours).}
#'   \item{land}{AVHRR Global Land Cover Classification (14 colours).}
#'   \item{soil}{FAO Reference Soil Groups (24 colours).}
#'  }
#' @return A palette function with the following attributes, that when called
#'  with a single integer argument (the number of levels) returns a (named)
#'  vector of colours.
#'  \describe{
#'   \item{name}{A \code{\link{character}} string giving the name of the colour
#'   scheme.}
#'   \item{type}{A \code{\link{character}} string giving the corresponding
#'   data type. One of "\code{qualitative}", "\code{diverging}" or
#'   "\code{sequential}".}
#'   \item{interpolate}{A \code{\link{logical}} scalar: can the color palette be
#'   interpolated?}
#'   \item{missing}{A \code{\link{character}} string giving the the hexadecimal
#'   representation of the colour that should be used for \code{NA} values.}
#'   \item{max}{An \code{\link{integer}} giving the maximum number of colour
#'   values. Only relevant for non-interpolated colour schemes.}
#'  }
#' @references
#'  Jones, A., Montanarella, L. & Jones, R. (Ed.) (2005). \emph{Soil atlas of
#'  Europe}. Luxembourg: European Commission, Office for Official Publications
#'  of the European Communities. 128 pp. ISBN: 92-894-8120-X.
#'
#'  Tol, P. (2018). \emph{Colour Schemes}. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#'
#'  \href{https://www.ccgm.org}{Commission for the Geological Map of the World}
#' @example inst/examples/ex-palettes.R
#' @author N. Frerebeau
#' @family colour palettes
#' @keywords color
#' @export
colour <- function(palette, reverse = FALSE, names = TRUE, ...) {
  # Validation
  palette <- match.arg(palette, names(.schemes), several.ok = FALSE)
  # Get colours
  col_scheme <- .schemes[[palette]]
  colours <- col_scheme[["colours"]]
  type <- col_scheme[["type"]]
  interpolate <- col_scheme[["interpolate"]]
  missing <- col_scheme[["missing"]]
  scheme <- col_scheme[["scheme"]]

  k <- if (palette == "discrete rainbow") 23 else length(colours)

  if (reverse) colours <- rev(colours) # Reverse colour order

  if (interpolate) {
    # For colour schemes that can be linearly interpolated
    fun <- function(n) {
      col <- grDevices::colorRampPalette(colours)(n)
      class(col) <- "colour_scheme"
      return(col)
    }
  } else {
    # No interpolation
    fun <- function(n) {
      # Check
      if (n > k)
        stop("You ask for too many colours: ", palette,
             " colour scheme supports up to ", k, " values.", call. = FALSE)
      # Arrange colour schemes
      col <- if (palette == "discrete rainbow") {
        colours[scheme[[n]]]
      } else if (type == "qualitative") {
        colours[seq_len(n)]
      } else {
        colours[seq(from = 1, to = k, length.out = n)]
      }
      col <- if (names) col else unname(col)
      class(col) <- "colour_scheme"
      return(col)
    }
  }
  attr(fun, "name") <- palette
  attr(fun, "type") <- type
  attr(fun, "interpolate") <- as.logical(interpolate)
  attr(fun, "missing") <- missing
  attr(fun, "max") <- as.integer(k)
  return(fun)
}

#' @export
#' @rdname colour
color <- colour

#' @export
print.colour_scheme <- function(x, ...) {
  if (requireNamespace("crayon", quietly = TRUE) &&
      getOption("khroma.crayon")) {
    styled <- vapply(x, FUN = function(x) crayon::make_style(x, bg = TRUE)(x),
                     FUN.VALUE = character(1))
    cat(styled)
  } else {
    print(unclass(x))
  }
}
