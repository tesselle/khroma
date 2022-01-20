#' @details
#'  \tabular{ll}{
#'   **Package:** \tab khroma \cr
#'   **Type:** \tab Package \cr
#'   **Version:** \tab 1.8.0 \cr
#'   **License:** \tab GPL-3 \cr
#'   **Zenodo:** \tab \doi{10.5281/zenodo.1472077} \cr
#'  }
#'
#' @author
#'  **Full list of authors and contributors** (alphabetic order)
#'  \tabular{ll}{
#'   Vincent Arel-Bundock \tab *Université de Montréal, Canada* \cr
#'   Nicolas Frerebeau \tab *Université Bordeaux Montaigne, France* \cr
#'   Brice Lebrun \tab *Université Bordeaux Montaigne, France*
#'  }
#'
#'  **Package maintainer**
#'
#' Nicolas Frerebeau\cr
#' \email{nicolas.frerebeau@@u-bordeaux-montaigne.fr}
#'
#' IRAMAT-CRP2A (UMR 5060)\cr
#' Maison de l'Archéologie\cr
#' Université Bordeaux Montaigne\cr
#' F-33607 Pessac cedex\cr
#' France
#' @name khroma-package
#' @aliases khroma
#' @docType package
#' @keywords internal
"_PACKAGE"

# @importFrom ggplot2 aes continuous_scale discrete_scale scale_color_manual
# scale_fill_manual
# @importFrom scales alpha gradient_n_pal rescale_mid
# @importFrom spacesXYZ DeltaE
#' @importFrom grDevices col2rgb colorRampPalette
#' @importFrom grid gpar grid.newpage grid.rect grid.text unit
NULL

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
