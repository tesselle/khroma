#' Data visualization
#'
#' Visualize multivariate exploratory data analysis results.
#' @param x An object of class \code{\link[FactoMineR]{PCA}}
#' @param axes A length-two \code{\link{numeric}} vector specifying the
#'  components to plot.
#' @param map A string or vector of \code{\link{character}} strings specifying
#'  the graph to plot.
#'  This must be one or more of "\code{individuals}", "\code{variables},
#'  \code{eigenvalues}", "\code{variance}".
#'  Any unambiguous substring can be given.
#' @param extra A string or vector of \code{\link{character}} strings
#'  specifiying the supplementary data to plot.
#'  This must be one or more of "\code{individuals}", "\code{qualitative},
#'  \code{quantitative}".
#'  Any unambiguous substring can be given.
#' @param habillage A \code{\link{character}} vector.
#' @author N. Frerebeau
#' @example inst/examples/ex-visualize.R
#' @export
visualize <- function(x, ...) UseMethod("visualize")

# Utilities
printComponentVar <- function(x, ...) UseMethod("printComponentVar")

# Individuals factor map
plotIndividuals <- function(x, ...) UseMethod("plotIndividuals")

# Variables factor map
plotVariables <- function(x, ...) UseMethod("plotVariables")

# Eigenvalues and cumulative variance
plotEigenvalues <- function(x, ...) UseMethod("plotEigenvalues")
