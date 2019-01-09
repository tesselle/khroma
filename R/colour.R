#' Colour palette
#'
#' Provides qualitative, diverging and sequential colour palettes.
#' @param palette A \code{\link{character}} string giving the name of
#'  the palette to be used (see below).
#' @param reverse  A \code{\link{logical}} scalar specifying if the resulting
#'  vector of colours should be reversed.
#' @param names  A \code{\link{logical}} scalar specifying if the names of the
#'  colours should be kept in the resulting vector.
#' @param ... Further arguments passed to \code{\link[grDevices]{colorRampPalette}}.
#' @section Paul Tol's Colour Schemes:
#'  The following palettes are available (maximum supported colours in brackets):
#'  \describe{
#'   \item{Qualitative data}{bright (7), vibrant (7), muted (9), light (9)}
#'   \item{Diverging data}{sunset (11), BuRd (9), PRGn (9)}
#'   \item{Sequential data}{YlOrBr (9), rainbow (23), smooth rainbow (34)}
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
#' @export
colour <- function(palette, reverse = FALSE, names = TRUE, ...) {
  # Validation
  palette <- match.arg(palette, names(palettes), several.ok = FALSE)
  # Get colours
  scheme <- palettes[[palette]]
  colours <- scheme[["colours"]]
  type <- scheme[["type"]]
  interpolate <- scheme[["interpolate"]]
  missing <- scheme[["missing"]]
  k <- if (palette == "rainbow") 23 else length(colours)
  # Reverse colour order
  if (reverse) colours <- rev(colours)
  if (interpolate) {
    # For colour schemes that can be linearly interpolated
    fun <- grDevices::colorRampPalette(colours, ...)
  } else {
    # No interpolation
    fun <- function(n) {
      # Check
      if (n > k) stop(paste("you ask for too many colours:", palette,
                            "colour scheme supports up to", k, "values", sep = " "))
      # Adjust colour schemes
      col <- adjust(colours, palette, n)
      col <- if (names) col else unname(col)
      return(col)
    }
  }
  attr(fun, "type") <- type
  attr(fun, "interpolate") <- interpolate
  attr(fun, "missing") <- missing
  attr(fun, "max") <- k
  return(fun)
}

#' @export
#' @rdname colour
color <- colour

# Adjust colour palette
#
# Adjusts a color palette according to specific rules.
# @param colours A \code{\link{character}} vector of colours.
# @param palette A \code{\link{character}} string giving the name of
#  the palette to be used (see \code{\link{colour}}).
# @param n A \code{\link{numeric}} scalar giving the number of colours to
#  select.
# @details If there is no rule for the palette, \code{n} colours are
#  randomly selected.
# @return A character vector of colours.
# @author N. Frerebeau
adjust <- function(colours, palette, n = length(colours)) {
  random <- colours[base::sample(1:length(colours), n, FALSE)]
  scheme <- schemes[[palette]]
  switch(
    palette,
    bright = colours[scheme][1:n],
    vibrant = colours[scheme][1:n],
    muted = colours[scheme][1:n],
    light = colours[scheme][1:n],
    rainbow = colours[scheme[[n]]],
    random
  )
}
