# HELPERS

`%||%` <- function(x, y) {
  if (!is.null(x)) x else y
}

check_package <- function(x) {
  if (!requireNamespace(x, quietly = TRUE)) {
    msg <- "Package %s needed for this function to work. Please install it."
    stop(sprintf(msg, x), call. = FALSE)
  }
  invisible(NULL)
}
