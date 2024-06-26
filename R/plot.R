#' Plot Color Scheme
#'
#' Quickly displays a color scheme returned by [color()].
#' @param x A [`character`] vector of colors.
#' @param ... Currently not used.
#' @return
#'  `plot()` is called for its side-effects: it results in a graphic
#'   being displayed (invisibly returns `x`).
#' @example inst/examples/ex-plot.R
#' @author N. Frerebeau
#' @family diagnostic tools
#' @export
plot.color_scheme <- function(x, ...) {
  # Save and restore graphical parameters
  old_par <- graphics::par(no.readonly = TRUE)
  on.exit(graphics::par(old_par))

  n <- length(x)
  graphics::par(mar = c(0, 0, 0, 0) + 0.1, xaxs = "i", yaxs = "i")
  graphics::plot(
    x = NULL, y = NULL,
    xlim = c(0, n), ylim = c(0, 1),
    xlab = "", ylab = "", axes = FALSE
  )
  graphics::rect(xleft = seq(0, n - 1), xright = seq(1, n),
                 ybottom = 0.25, ytop = 0.75, col = x, border = NA)
  if (n < 25) graphics::abline(v = seq(1, n), col = "#D3D3D3", lwd = 0.25)

  invisible(x)
}
