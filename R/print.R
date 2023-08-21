# Print

#' @export
print.color_scheme <- function(x, ...) {
  if (requireNamespace("crayon", quietly = TRUE) &&
      getOption("crayon.enabled", default = FALSE)) {
    styled <- vapply(
      X = x,
      FUN = function(x) crayon::make_style(x, bg = TRUE)(x),
      FUN.VALUE = character(1)
    )
    cat(styled)
  } else {
    print(unclass(x))
  }
}
