#' Simulate Colour-Blindness
#'
#' @param x A palette \code{\link{function}} that when called with a single
#'  integer argument (the number of levels) returns a vector of colours
#'  (see \code{\link{colour}}).
#' @param mode A \code{\link{character}} string giving the colour-blind vision
#'  to be used. It must be one of "\code{deuteranopia}", "\code{protanopia}",
#'  "\code{tritanopia}" or "\code{achromatopsia}".
#'  Any unambiguous substring can be given.
#' @return A palette \code{\link{function}} that returns a vector of anomalized
#'  colours. All the attributes of the initial palette function are inherited,
#'  with a supplementary attribute "\code{mode}" giving the corresponding
#'  colour-blind vision.
#' @example inst/examples/ex-anomalize.R
#' @references
#'  Brettel, H., Viénot, F. and Mollon, J. D. (1997). Computerized Simulation of
#'  Color Appearance for Dichromats. \emph{Journal of the Optical Society of
#'  America A}, 14(10), p. 2647-2655.
#'  DOI: \href{https://doi.org/10.1364/JOSAA.14.002647}{10.1364/JOSAA.14.002647}.
#'
#'  Tol, P. (2018). \emph{Colour Schemes}. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#'
#'  Viénot, F., Brettel, H. and Mollon, J. D. (1999). Digital Video
#'  Colourmaps for Checking the Legibility of Displays by Dichromats.
#'  \emph{Color Research & Application}, 24(4), p. 243-52.
#'  DOI: \href{https://doi.org/10.1002/(SICI)1520-6378(199908)24:4<243::AID-COL5>3.0.CO;2-3}{10.1002/(SICI)1520-6378(199908)24:4<243::AID-COL5>3.0.CO;2-3}.
#' @author N. Frerebeau
#' @family diagnostic tools
#' @export
convert <- function(x, mode) {
  fun <- function(n) { anomalize(x(n), mode = mode) }
  attributes(fun) <- attributes(x)
  attr(fun, "mode") <- mode
  return(fun)
}

#' Anomalize
#'
#' @param x A \code{\link{character}} vector of colour codes.
#' @param mode A \code{\link{character}} string giving the colour-blind vision
#'  to be used. It must be one of "\code{deuteranopia}", "\code{protanopia}",
#'  "\code{tritanopia}" or "\code{achromatopsia}". Any unambiguous substring
#'  can be given.
#' @return A \code{\link{character}} vector of colour codes.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
anomalize <- function(x, mode = c("deuteranopia", "protanopia", "tritanopia",
                                  "achromatopsia")) {
  # Validation
  mode <- match.arg(mode, several.ok = FALSE)

  # Convert to RGB colour code
  RGB1 <- t(grDevices::col2rgb(x, alpha = FALSE))

  # Dichromat
  S <- switch (
    mode,
    # Green-blindness
    deuteranopia = rbind(
      # Red, Green, Blue
      c(1, 0, 0),
      c(0.9513092, 0, 0.04866992),
      c(0, 0, 1)
    ),
    # Red-blindness
    protanopia = rbind(
      # Red, Green, Blue
      c(0, 1.05118294, -0.05116099),
      c(0, 1, 0),
      c(0, 0, 1)
    ),
    # Blue-blindness
    tritanopia = rbind(
      # Red, Green, Blue
      c(1, 0, 0),
      c(0, 1, 0),
      c(-0.86744736, 1.86727089, 0)
    ),
    # Achromatopsia
    achromatopsia = rbind(
      # Red, Green, Blue
      c(0, 0, 1),
      c(0, 0, 1),
      c(0, 0, 1)
    )
  )

  # Convert colours from the RGB color space to the LMS color space
  # RGB_to_LMS <- .XYZ_to_LMS %*% .sRGB_to_XYZ
  # RGB2 <- solve(RGB_to_LMS) %*% S %*% RGB_to_LMS %*% RGB1

  # Conversion
  LMS <- RGB2LMS(RGB1) %*% t(S)
  RGB2 <- LMS2RGB(LMS)

  # RGB constraints
  for (i in 1:nrow(RGB2)) {
    RGB2[i, ] <- pmin(RGB2[i, ], rep(255, 3))
    RGB2[i, ] <- pmax(RGB2[i, ], rep(0, 3))
  }

  # Convert to Hex colour code
  grDevices::rgb(RGB2, names = names(x), maxColorValue = 255)
}
