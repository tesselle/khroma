.onLoad <- function(libname, pkgname) {
  op <- options()
  op.khroma <- list(
    khroma.crayon = TRUE
  )
  toset <- !(names(op.khroma) %in% names(op))
  if(any(toset)) options(op.khroma[toset])

  invisible()
}
