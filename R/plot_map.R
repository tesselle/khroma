#' Diagnostic Map
#'
#' Produces a diagnostic map for a given color scheme.
#' @param x A [`character`] vector of colors.
#' @return
#'  `plot_map()` is called for its side-effects: it results in a graphic
#'   being displayed (invisibly returns `x`).
#' @example inst/examples/ex-plot.R
#' @author N. Frerebeau, V. Arel-Bundock
#' @family diagnostic tools
#' @export
plot_map <- function(x) {
  # Validation
  if (!is.atomic(x) || !is.character(x))
    stop("x must be a character vector of colors.")
  # Save and restore graphical parameters
  old_par <- graphics::par(no.readonly = TRUE)
  on.exit(graphics::par(old_par))

  n <- length(x) # Number of colors
  q <- floor(100 / (n + 1))

  graphics::par(mar = c(0, 0, 0, 0) + 0.1, xaxs = "i", yaxs = "i")
  graphics::plot(
    x = NULL, y = NULL,
    xlim = c(0, (q * (n + 1) / 2) + 1), ylim = c(0, 10.5),
    xlab = "", ylab = "", axes = FALSE, asp = 1
  )

  random_colors <- sample(x, size = 19 * q, replace = TRUE)
  draw_mosaic(columns = q, border = "black", fill = random_colors)

  for (h in seq_len(n)) {
    random_positions <- sample(seq_len(19 * q), size = n, replace = FALSE)
    unique_color <- rep(x[[h]], length.out = 19 * q)
    unique_color[random_positions] <- x

    draw_mosaic(columns = q, border = "black", fill = unique_color, offset = h)
  }

  invisible(x)
}

#' Mosaic
#'
#' Draws a mosaic of diamonds.
#' @param rows An [`integer`] giving the number of lines.
#' @param columns An [`integer`] giving the number of columns.
#' @param border A [`character`] string giving the color to draw the
#' border (see \code{\link[graphics]{polygon}}).
#' @param fill A [`character`] string giving the color for filling
#' the polygon (see \code{\link[graphics]{polygon}}).
#' @param offset An [`numeric`] value giving the \code{x} offset from
#' zero of the mosaic.
#' @keywords internal
#' @noRd
draw_mosaic <- function(rows = 19, columns = 10, border = NULL, fill = NA,
                        offset = 0) {
  fill <- rep(fill, length.out = rows * columns)
  k <- 1
  for (i in seq_len(rows)) { # Loop over lines
    even <- i %% 2 == 0
    for (j in seq_len(columns)) { # Loop over columns
      graphics::polygon(
        x = c(0, 0.25, 0.5, 0.25) +
          j * 0.5 + 0.25 * even +
          columns * offset / 2,
        y = c(0.5, 1, 0.5, 0) + i * 0.5,
        border = border,
        col = fill[[k]]
      )
      k <- k + 1
    }
  }
}

# draw_diamond <- function(x = 0, y = 0, width = 0.5, height = 1,
#                          border = NULL, fill = NA) {
#   half_width <- width / 2
#   half_height <- height / 2
#   graphics::polygon(
#     x = c(x - half_width, x, x + half_width, x),
#     y = c(y, y + half_height, y, y - half_height),
#     border = border,
#     col = fill
#   )
# }
