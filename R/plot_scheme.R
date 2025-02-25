#' Plot Color Scheme
#'
#' Shows colors in a plot.
#' @param x A [`character`] vector of colors.
#' @param colours A [`logical`] scalar: should the hexadecimal representation of
#'  the colors be displayed?
#' @param names A [`logical`] scalar: should the name of the colors be
#'  displayed?
#' @param size A [`numeric`] value giving the amount by which plotting text
#'  should be magnified relative to the default. Works the same as `cex`
#'  parameter of [graphics::par()].
#' @return
#'  `plot_scheme()` is called for its side-effects: it results in a graphic
#'   being displayed (invisibly returns `x`).
#' @example inst/examples/ex-plot.R
#' @author N. Frerebeau
#' @family diagnostic tools
#' @export
plot_scheme <- function(x, colours = FALSE, names = FALSE, size = 1) {
  # Validation
  assert_color(x)

  # Save and restore graphical parameters
  old_par <- graphics::par(no.readonly = TRUE)
  on.exit(graphics::par(old_par))

  info <- colours && names
  missing <- attr(x, "missing")
  bad_data <- !is.null(missing) && !is.na(missing)
  if (bad_data) x <- c(x, missing)

  n <- length(x) # Number of colors
  p <- seq(from = 1, by = 0.75, length.out = n)
  q <- 1 - 0.43 * rep(c(0, 1), length.out = n)

  graphics::par(mar = c(0, 0, 0, 0) + 0.1, xaxs = "i", yaxs = "i")
  graphics::plot(
    x = NULL, y = NULL,
    xlim = c(0.5, max(p) + 0.5 + bad_data / 2), ylim = c(0, 1.5),
    xlab = "", ylab = "", axes = FALSE, asp = 1
  )

  for (i in seq_len(n - bad_data)) {
    #even <- i %% 2 == 0
    draw_hexagon(x = p[[i]], y = q[[i]], r = 0.5, border = NULL, fill = x[[i]])
  }
  if (bad_data) {
    draw_circle(x = p[[n]] + 0.5, y = q[[n]], r = 0.5, n = 200,
                border = NULL, fill = missing)
  }
  delta <- ifelse(colours && names && !is.null(names(x)), 0.1, 0)
  if (colours) {
    if (bad_data) {
      graphics::text(x = p[[n]] + 0.5, y = q[[n]], labels = missing, cex = size)
      x <- utils::head(x, -1)
      p <- utils::head(p, -1)
      q <- utils::head(q, -1)
    }
    graphics::text(x = p, y = q - delta * info, labels = x, cex = size)
  }
  if (names && !is.null(names(x))) {
    graphics::text(x = p, y = q + delta * info, labels = names(x), cex = size)
  }

  invisible(x)
}

draw_hexagon <- function(x = 0, y = 0, r = 0.5, border = NULL, fill = NA) {
  vertices <- seq_len(6)
  graphics::polygon(
    x = x + r * cos(vertices * 2 * pi / 6),
    y = y + r * sin(vertices * 2 * pi / 6),
    border = border,
    col = fill
  )
}
draw_circle <- function(x = 0, y = 0, r = 0.5, n = 200,
                        border = NULL, fill = NA) {
  theta <- seq(0, 2 * pi, length.out = n)
  graphics::polygon(
    x = r * cos(theta) + x,
    y = r * sin(theta) + y,
    border = border,
    col = fill
  )
}
