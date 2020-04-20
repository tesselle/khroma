#' Convex Hull
#'
#' @inheritParams ggplot2::stat_identity
#' @param na.rm A \code{\link{logical}} scalar: should NA values be stripped
#'  before the computation proceeds?
#' @references
#'  Wickham, H. (2016). \emph{ggplot2: Elegant Graphics for Data Analysis}.
#'  New York: Springer-Verlag.
#' @example inst/examples/ex-layer_chull.R
#' @name chull
#' @rdname chull
NULL

#' @export
#' @rdname chull
stat_chull <- function(mapping = NULL, data = NULL, geom = "polygon",
                       position = "identity", na.rm = FALSE, show.legend = NA,
                       inherit.aes = TRUE, ...) {
  ggplot2::layer(
    stat = StatChull, geom = geom, data = data, mapping = mapping,
    position = position, show.legend = show.legend, inherit.aes = inherit.aes,
    params = list(na.rm = na.rm, ...)
  )
}

#' @export
#' @rdname chull
geom_chull <- function(mapping = NULL, data = NULL, position = "identity",
                       na.rm = FALSE, show.legend = NA,
                       inherit.aes = TRUE, ...) {
  ggplot2::layer(
    stat = StatChull, geom = GeomPolygonHollow, data = data, mapping = mapping,
    position = position, show.legend = show.legend, inherit.aes = inherit.aes,
    params = list(na.rm = na.rm, ...)
  )
}

StatChull <- ggplot2::ggproto(
  "StatChull", ggplot2::Stat,
  required_aes = c("x", "y"),
  compute_group = function(data, scales) {
    data[grDevices::chull(data$x, data$y), , drop = FALSE]
  }
)
GeomPolygonHollow <- ggplot2::ggproto(
  "GeomPolygonHollow", ggplot2::GeomPolygon,
  default_aes = ggplot2::aes(colour = "black", fill = NA, size = 0.5,
                             linetype = 1, alpha = NA)
)
