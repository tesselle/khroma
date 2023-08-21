#' Plot Color Scheme
#'
#' * `plot()` allows to quickly display a color scheme returned by [color()].
#' * `plot_scheme()` shows colors in a plot.
#' * `plot_map()` and `plot_tiles()` produce a diagnostic map for a given color
#'   scheme.
#' * `plot_scheme_colorblind()` shows colors in a plot with different types
#'   of simulated color blindness.
#' @param x A [`character`] vector of colors.
#' @param colours A [`logical`] scalar: should the hexadecimal representation of
#'  the colors be displayed?
#' @param names A [`logical`] scalar: should the name of the colors be
#'  displayed?
#' @param size A [`numeric`] value giving the amount by which plotting text
#'  should be magnified relative to the default. Works the same as `cex`
#'  parameter of [graphics::par()].
#' @param n An [`integer`] specifying the size of the grid (defaults to
#'  \eqn{512}).
#' @param ... Currently not used.
#' @example inst/examples/ex-plot.R
#' @author N. Frerebeau, V. Arel-Bundock
#' @family diagnostic tools
#' @name plot
#' @rdname plot
NULL

#' @rdname plot
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
}

#' @rdname plot
#' @export
plot_scheme <- function(x, colours = FALSE, names = FALSE, size = 1) {
  # Validation
  if (!is.atomic(x) || !is.character(x))
    stop("x must be a character vector of colors.")

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
}

#' @rdname plot
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
}

#' @rdname plot
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

#' @rdname plot
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
}

#' @rdname plot
#' @export
plot_scheme_colorblind <- plot_scheme_colourblind
