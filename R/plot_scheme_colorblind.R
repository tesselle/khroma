#' Plot Simulated Color Blindness
#'
#' Shows colors in a plot with different types of simulated color blindness.
#' @param x A [`character`] vector of colors.
#' @return
#'  `plot_scheme_colourblind()` is called for its side-effects: it results in a
#'  graphic being displayed (invisibly returns `x`).
#' @example inst/examples/ex-change.R
#' @author N. Frerebeau, V. Arel-Bundock
#' @family diagnostic tools
#' @export
plot_scheme_colourblind <- function(x) {
  # Validation
  if (!is.atomic(x) || !is.character(x))
    stop("x must be a character vector of colors.")

  n <- length(x)
  col <- c(x, anomalize(x, 'deuteranopia'), anomalize(x, 'protanopia'),
           anomalize(x, 'tritanopia'), anomalize(x, 'achromatopsia'))
  xcoord <- seq(0, 1, length.out = n + 1)
  ycoord <- rep(c(.8, .6, .4, .2, 0), each = n)
  grid::grid.newpage()
  grid::grid.rect(
    x = grid::unit(utils::head(xcoord, -1), "npc"),
    y = grid::unit(ycoord, "npc"),
    width = grid::unit(1 / n, "npc"),
    height = grid::unit(0.7 / 5, "npc"),
    hjust = 0,
    vjust = 0,
    gp = grid::gpar(fill = col, col = col)
  )
  grid::grid.text(
    label = c("Palette", "Deuteranopia", "Protanopia", "Tritanopia",
              "Achromatopsia"),
    x = grid::unit(0, 'npc'),
    y = grid::unit(c(0.97, 0.77, 0.57, 0.37, 0.17), "npc"),
    hjust = 0
  )

  invisible(x)
}

#' @rdname plot_scheme_colourblind
#' @export
plot_scheme_colorblind <- plot_scheme_colourblind
