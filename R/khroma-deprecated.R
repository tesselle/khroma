#' Deprecated Functions in khroma
#'
#' These functions still work but will be removed (defunct) in the next version.
#' @name khroma-deprecated
#' @rdname khroma-deprecated
#' @keywords internal
NULL

#' @export
#' @rdname khroma-deprecated
palette_size_range <- function(range = c(1, 6), ...) {

  force(range)

  function(x) {
    need_continuous(x)
    x <- scale_range(x)
    scale_range(sqrt(x), to = range(range, na.rm = TRUE))
  }
}
