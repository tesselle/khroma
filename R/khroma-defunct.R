#' Defunct Functions in khroma
#'
#' These functions are defunct and have been replaced.
#' @param ... Not used.
#' @name khroma-defunct
#' @rdname khroma-defunct
#' @keywords internal
NULL

#' @export
#' @rdname khroma-defunct
scale_colour_logical <- function(..., aesthetics = "colour") {
  .Defunct("scale_color_manual", package = "ggplot2")
}

#' @export
#' @rdname khroma-defunct
scale_color_logical <- scale_colour_logical

#' @export
#' @rdname khroma-defunct
scale_fill_logical <- function(..., aesthetics = "fill") {
  .Defunct("scale_color_manual", package = "ggplot2")
}
