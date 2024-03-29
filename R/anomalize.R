#' Simulate Color-Blindness
#'
#' @param x A palette [`function`] that when called with a single
#'  integer argument (the number of levels) returns a vector of colors
#'  (see [color()]).
#' @param mode A [`character`] string giving the colorblind vision
#'  to be used. It must be one of "`deuteranopia`", "`protanopia`",
#'  "`tritanopia`" or "`achromatopsia`". Any unambiguous substring can be given.
#' @return A palette [`function`] that returns a vector of anomalized
#'  colors. All the attributes of the initial palette function are inherited,
#'  with a supplementary attribute "`mode`" giving the corresponding
#'  color-blind vision.
#' @example inst/examples/ex-anomalize.R
#' @references
#'  Brettel, H., Viénot, F. and Mollon, J. D. (1997). Computerized Simulation of
#'  Color Appearance for Dichromats. *Journal of the Optical Society of America
#'  A*, 14(10), p. 2647-2655. \doi{10.1364/JOSAA.14.002647}.
#'
#'  Tol, P. (2018). *Colour Schemes*. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#'
#'  Viénot, F., Brettel, H. and Mollon, J. D. (1999). Digital Video
#'  Colourmaps for Checking the Legibility of Displays by Dichromats.
#'  *Color Research & Application*, 24(4), p. 243-52.
#'  \doi{10.1002/(SICI)1520-6378(199908)24:4<243::AID-COL5>3.0.CO;2-3}.
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
#' @param x A [`character`] vector of color codes.
#' @param mode A [`character`] string giving the colorblind vision
#'  to be used. It must be one of "`deuteranopia`", "`protanopia`",
#'  "`tritanopia`" or "`achromatopsia`". Any unambiguous substring can be given.
#' @return A [`character`] vector of color codes.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
anomalize <- function(x, mode = c("deuteranopia", "protanopia", "tritanopia",
                                  "achromatopsia")) {
  # Validation
  mode <- match.arg(mode, several.ok = FALSE)

  # Convert to RGB color code
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

  # Convert colors from the RGB color space to the LMS color space
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

  # Convert to Hex color code
  grDevices::rgb(RGB2, names = names(x), maxColorValue = 255)
}
