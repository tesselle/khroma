#' Plot
#'
#' \code{plot_scheme} shows colours in a plot.
#'
#' \code{plot_map} produces a diagnostic map for a given colour scheme.
#' @param x A \code{\link{character}} vector of colours.
#' @param colours A \code{\link{logical}} scalar: should the hexadecimal
#' representation of the colours be displayed?
#' @param names A \code{\link{logical}} scalar: should the name of the colours
#' be displayed?
#' @param size A \code{\link{numeric}} value giving the amount by which
#' plotting text should be magnified relative to the default.
#' Works the same as \code{cex} parameter of \code{\link[graphics]{par}}.
#' @example inst/examples/ex-plot.R
#' @author N. Frerebeau
#' @name plot
#' @rdname plot
NULL

#' @rdname plot
#' @export
plot_scheme <- function(x, colours = FALSE, names = FALSE, size = 1) {
  # Validation
  if (!is.atomic(x) || !is.character(x))
    stop("x must be a character vector of colours.")
  # Save and restore graphical parameters
  old_par <- graphics::par(no.readonly = TRUE)
  on.exit(graphics::par(old_par))

  n <- length(x) # Number of colours
  info <- colours && names
  p <- seq(from = 1, by = 0.75, length.out = n)
  q <- 1 - 0.43 * rep(c(0, 1), length.out = n)

  graphics::par(mar = c(0, 0, 0, 0) + 0.1, xaxs = "i", yaxs = "i")
  graphics::plot(
    x = NULL, y = NULL,
    xlim = c(0.5, max(p) + 0.5), ylim = c(0, 1.5),
    xlab = "", ylab = "", axes = FALSE, asp = 1
  )

  for (i in seq_along(x)) {
    even <- i %% 2 == 0
    draw_hexagon(x = p[[i]], y = q[[i]], r = 0.5, border = NULL, fill = x[[i]])
  }
  if (colours) {
    graphics::text(x = p, y = q - 0.1 * info, labels = x, cex = size)
  }
  if (names && !is.null(names(x))) {
    graphics::text(x = p, y = q + 0.1 * info, labels = names(x), cex = size)
  }
}

#' @rdname plot
#' @export
plot_map <- function(x) {
  # Validation
  if (!is.atomic(x) || !is.character(x))
    stop("x must be a character vector of colours.")
  # Save and restore graphical parameters
  old_par <- graphics::par(no.readonly = TRUE)
  on.exit(graphics::par(old_par))

  n <- length(x) # Number of colours
  q <- floor(100 / (n + 1))

  graphics::par(mar = c(0, 0, 0, 0) + 0.1, xaxs = "i", yaxs = "i")
  graphics::plot(
    x = NULL, y = NULL,
    xlim = c(0, (q * (n + 1) / 2) + 1), ylim = c(0, 10.5),
    xlab = "", ylab = "", axes = FALSE, asp = 1
  )

  random_colours <- sample(x, size = 19 * q, replace = TRUE)
  draw_mosaic(columns = q, border = "black", fill = random_colours)

  for (h in seq_len(n)) {
    random_positions <- sample(seq_len(19 * q), size = n, replace = FALSE)
    unique_colour <- rep(x[[h]], length.out = 19 * q)
    unique_colour[random_positions] <- x

    draw_mosaic(columns = q, border = "black", fill = unique_colour, offset = h)
  }
}

#' Mosaic
#'
#' Draws a mosaic of diamonds.
#' @param rows An \code{\link{integer}} giving the number of lines.
#' @param columns An \code{\link{integer}} giving the number of columns.
#' @param border A \code{\link{character}} string giving the color to draw the
#' border (see \code{\link[graphics]{polygon}}).
#' @param fill A \code{\link{character}} string giving the color for filling
#' the polygon (see \code{\link[graphics]{polygon}}).
#' @param offset An \code{\link{numeric}} value giving the \code{x} offset from
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
