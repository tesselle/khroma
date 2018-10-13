# #' Check package import
# #'
# #' Checks if the required package is available.
# #' @param package A \code{\link{character}} string giving the name of
# #'  the needed package.
# #' @details An error is signaled if the required package is not available.
# #' @author N. Frerebeau
checkPackage <- function(package) {
  if (!requireNamespace(package, quietly = TRUE)) {
    stop(paste(package, "needed for this function to work. Please intall it.",
               sep = " "))
  }
}
