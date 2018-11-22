#' Data visualization
#'
#' Visualize multivariate exploratory data analysis results.
#' @param x An object of class \code{\link[FactoMineR]{PCA}}
#' @param axes A length-two \code{\link{numeric}} vector specifying the
#'  components to plot.
#' @param map A \code{\link{character}} string or vector of strings specifying
#'  the graph to plot. This must be one of "\code{individuals}",
#'  "\code{variables}", "\code{eigenvalues}" or "\code{variance}".
#'  Any unambiguous substring can be given.
#' @param extra A string or vector of \code{\link{character}} strings
#'  specifiying the supplementary data to plot.
#'  This must be one or more of "\code{individuals}", "\code{qualitative}",
#'  "\code{quantitative}". Any unambiguous substring can be given.
#' @param group A \code{\link{character}} vector of categories from which
#'  to color the individuals.
#'  The elements are coerced to characters by \code{\link{as.character}}.
#' @param ... Further arguments passed to other methods.
#' @seealso \link[FactoMineR]{PCA}, \link[FactoMineR]{CA}
#' @author N. Frerebeau
#' @example inst/examples/ex-visualize.R
#' @export
#' @name visualize
#' @rdname visualize
NULL

visualize <- function(x, ...) UseMethod("visualize")

# Utilities
printComponentVar <- function(x, ...) UseMethod("printComponentVar")

# Individuals factor map
plotIndividuals <- function(x, ...) UseMethod("plotIndividuals")

# Variables factor map
plotVariables <- function(x, ...) UseMethod("plotVariables")

# Eigenvalues and cumulative variance
plotEigenvalues <- function(x, ...) UseMethod("plotEigenvalues")
