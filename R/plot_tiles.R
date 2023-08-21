#' Diagnostic Map
#'
#' Produces a diagnostic map for a given color scheme.
#' @param x A [`character`] vector of colors.
#' @param n An [`integer`] specifying the size of the grid (defaults to
#'  \eqn{512}).
#' @example inst/examples/ex-plot.R
#' @author N. Frerebeau
#' @family diagnostic tools
#' @export
plot_tiles <- function(x, n = 512) {
  # Validation
  if (!is.atomic(x) || !is.character(x))
    stop("x must be a character vector of colors.")
  # Save and restore graphical parameters
  old_par <- graphics::par(no.readonly = TRUE)
  on.exit(graphics::par(old_par))

  g <- expand.grid(
    x = seq_len(n),
    y = seq_len(n)
  )
  noise <- sin(g$x / 16) + cos(g$y / 16) +
    stats::dnorm(sqrt((g$x - 0.75 * n)^2 + (g$y - 0.33 * n)^2) / n * 20)
  z <- matrix(data = noise, nrow = n, ncol = n)

  graphics::par(mar = c(0, 0, 0, 0) + 0.1, xaxs = "i", yaxs = "i")
  graphics::image(x = seq_len(n), y = seq_len(n), z = z, col = x,
                  axes = FALSE, asp = 1)
}
