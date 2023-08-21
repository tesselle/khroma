#' Available Palettes
#'
#' Returns information about the available palettes.
#' @return
#'  A [`data.frame`] with the following columns:
#'  \describe{
#'   \item{`palette`}{Names of palette.}
#'   \item{`type`}{Types of palettes: sequential, diverging or qualitative.}
#'   \item{`max`}{Maximum number of colors that are contained in each
#'   palette. Only relevant for qualitative palettes.}
#'   \item{`missing`}{The hexadecimal color value for mapping missing values.}
#'  }
#' @example inst/examples/ex-info.R
#' @author N. Frerebeau
#' @family color palettes
#' @export
info <- function() {
  meta <- lapply(
    X = .schemes,
    FUN = function(x) {
      list(type = x$type, max = x$max, missing = x$missing)
    }
  )
  meta <- do.call(rbind.data.frame, meta)
  rownames(meta) <- NULL
  colnames(meta) <- c("type", "max", "missing")
  meta$palette <- names(.schemes)
  meta[, c(4, 1, 2, 3)]
}
