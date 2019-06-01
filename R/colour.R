#' Colour palette
#'
#' Provides qualitative, diverging and sequential colour palettes.
#' @param palette A \code{\link{character}} string giving the name of
#'  the palette to be used (see below).
#' @param reverse A \code{\link{logical}} scalar specifying if the resulting
#'  vector of colours should be reversed.
#' @param names A \code{\link{logical}} scalar specifying if the names of the
#'  colours should be kept in the resulting vector.
#' @param ... Further arguments passed to \code{\link[grDevices]{colorRampPalette}}.
#' @section Paul Tol's Colour Schemes:
#'  The following palettes are available (maximum supported colours in brackets):
#'  \describe{
#'   \item{Qualitative data}{bright (7), contrast (3),vibrant (7), muted (9),
#'   light (9).}
#'   \item{Diverging data}{sunset (11), BuRd (9), PRGn (9).}
#'   \item{Sequential data}{YlOrBr (9), discrete rainbow (23),
#'   smooth rainbow (34).}
#'  }
#' @section Scientific Colour Schemes:
#'  The following palettes are available:
#'  \describe{
#'   \item{stratigraphy}{International Chronostratigraphic Chart}
#'   \item{soil}{FAO Reference Soil Groups}
#'  }
#' @return A palette function that when called with a single integer argument
#'  (the number of levels) returns a vector of colours.
#' @references
#'  Jones, A., Montanarella, L. & Jones, R. (Ed.) (2005). \emph{Soil atlas of
#'  Europe}. Luxembourg: European Commission, Office for Official Publications
#'  of the European Communities. 128 pp. ISBN: 92-894-8120-X.
#'
#'  Tol, Paul (2018). \emph{Colour Schemes}. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002. URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#'
#'  \href{https://www.ccgm.org}{Commission for the Geological Map of the World}
#' @example inst/examples/ex-palettes.R
#' @author N. Frerebeau
#' @keywords color
#' @export
colour <- function(palette, reverse = FALSE, names = TRUE, ...) {
  # Validation
  palette <- match.arg(palette, names(palettes), several.ok = FALSE)
  # Get colours
  col_scheme <- palettes[[palette]]
  colours <- col_scheme[["colours"]]
  type <- col_scheme[["type"]]
  interpolate <- col_scheme[["interpolate"]]
  missing <- col_scheme[["missing"]]
  scheme <- col_scheme[["scheme"]]

  k <- if (palette == "rainbow") 23 else length(colours)

  if (reverse) colours <- rev(colours) # Reverse colour order
  if (interpolate) {
    # For colour schemes that can be linearly interpolated
    fun <- grDevices::colorRampPalette(colours, ...)
  } else {
    # No interpolation
    fun <- function(n) {
      # Check
      if (n > k)
        stop("You ask for too many colours: ", palette,
             " colour scheme supports up to ", k, " values.", call. = FALSE)
      # Arrange colour schemes
      col <- if (palette == "rainbow") colours[scheme[[n]]] else colours
      col <- if (names) col else unname(col)
      return(col)
    }
  }
  attr(fun, "type") <- type
  attr(fun, "interpolate") <- as.logical(interpolate)
  attr(fun, "missing") <- as.logical(missing)
  attr(fun, "max") <- as.integer(k)
  return(fun)
}

#' @export
#' @rdname colour
color <- colour
