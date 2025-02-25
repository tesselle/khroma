# HELPERS

## https://michaelchirico.github.io/potools/articles/developers.html
tr_ <- function(...) {
  enc2utf8(gettext(paste0(...), domain = "R-khroma"))
}

`%||%` <- function(x, y) {
  if (!is.null(x)) x else y
}

assert_package <- function(x) {
  if (!requireNamespace(x, quietly = TRUE)) {
    msg <- tr_("Package %s needed for this function to work. Please install it.")
    stop(sprintf(msg, sQuote(x)), call. = FALSE)
  }
  invisible(NULL)
}

assert_color <- function(x) {
  if (!is.atomic(x) || !is.character(x)) {
    msg <- tr_("%s must be a character vector of colors.")
    stop(sprintf(msg, sQuote("x")), call. = FALSE)
  }
  invisible(NULL)
}
