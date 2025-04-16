#' Simulate Color-Blindness
#'
#' @param x A palette [`function`] that when called with a single
#'  integer argument (the number of levels) returns a vector of colors
#'  (see [color()]).
#' @param mode A [`character`] string giving the colorblind vision
#'  to be used. It must be one of "`deuteranopia`", "`protanopia`",
#'  "`tritanopia`" or "`achromatopsia`". Any unambiguous substring can be given.
#' @return
#'  A palette [`function`] that returns a vector of anomalized
#'  colors. All the attributes of the initial palette function are inherited,
#'  with a supplementary attribute "`mode`" giving the corresponding
#'  color-blind vision.
#' @example inst/examples/ex-change.R
#' @references
#'  Brettel, H., Viénot, F. and Mollon, J. D. (1997). Computerized Simulation of
#'  Color Appearance for Dichromats. *Journal of the Optical Society of America
#'  A*, 14(10), p. 2647-2655. \doi{10.1364/JOSAA.14.002647}.
#'
#'  Tol, P. (2018). *Colour Schemes*. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://sronpersonalpages.nl/~pault/data/colourschemes.pdf}
#'
#'  Viénot, F., Brettel, H. and Mollon, J. D. (1999). Digital Video
#'  Colourmaps for Checking the Legibility of Displays by Dichromats.
#'  *Color Research & Application*, 24(4), p. 243-52.
#'  \doi{10.1002/(SICI)1520-6378(199908)24:4<243::AID-COL5>3.0.CO;2-3}.
#' @author N. Frerebeau
#' @family diagnostic tools
#' @export
change <- function(x, mode) {
  fun <- function(n) { anomalize(x(n), mode = mode) }
  attributes(fun) <- attributes(x)
  attr(fun, "mode") <- mode
  fun
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

# Color Conversion

#' CMYK to/from RGB Color Conversion
#'
#' @param cyan,magenta,yellow,black,red,blue,green A [`numeric`] vector with
#'  values in \eqn{[0, max]}.
#' @param max A [`numeric`] value giving the maximum of the color values range.
#' @return An integer matrix with three or four columns.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
NULL

CMYK2RGB <- function(cyan, magenta, yellow, black, max = 1) {
  if (missing(magenta) && missing(yellow) && missing(black)) {
    if (is.matrix(cyan) || is.data.frame(cyan)) {
      if (ncol(cyan) < 4L) stop("At least 4 columns needed.", call. = FALSE)
      cyan <- data.matrix(cyan)
      CMY <- cyan[, -4]
      black <- cyan[, 4]
    }
  } else {
    CMY <- cbind(cyan, magenta, yellow)
  }
  CMY <- CMY / max
  K <- black / max

  RGB <- 255 * (1 - CMY) * (1 - K)
  colnames(RGB) <- c("R", "G", "B")
  return(RGB)
}

RGB2CMYB <- function(red, green, blue, max = 255) {
  if (missing(green) && missing(blue)) {
    if (is.matrix(red) || is.data.frame(red)) {
      if (ncol(red) < 3L) stop("At least 3 columns needed.", call. = FALSE)
      RGB <- data.matrix(red)
    }
  } else {
    RGB <- cbind(red, green, blue)
  }
  RGB <- RGB / max
  K <- 1 - apply(X = RGB, MARGIN = 1, FUN = max)
  CMY <- (1 - RGB - K) / (1 - K)
  CMYK <- cbind(CMY, K)
  CMYK[is.na(CMYK)] <- 0 # Fix zero division
  colnames(CMYK) <- c("C", "M", "Y", "K")
  return(CMYK)
}

#' RGB to/from XYZ Color Conversion
#'
#' @param red,blue,green A [`numeric`] vector with values in \eqn{[0, max]}.
#' @param x,y,z A [`numeric`] vector of color coordinates.
#' @param max A [`numeric`] value giving the maximum of the color values range.
#' @return A numeric matrix with three columns.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
NULL

gamma_expand <- function(RGB) {
  u <- RGB > 0.04045
  sRGB <- RGB / 12.92
  sRGB[u] <- ((200 * RGB[u] + 11) / 211)^(12 / 5)
  return(sRGB)
}
gamma_compress <- function(sRGB) {
  u <- sRGB > 0.0031308
  RGB <- sRGB * 12.92
  RGB[u] <- (211 * sRGB[u]^(5 / 12) - 11) / 200
  return(RGB)
}

XYZ2RGB <- function(x, y, z, max_rgb = 255) {
  if (missing(y) && missing(z)) {
    if (is.matrix(x) || is.data.frame(x)) {
      if (ncol(x) < 3L) stop("At least 3 columns needed.", call. = FALSE)
      XYZ <- data.matrix(x)
    }
  } else {
    XYZ <- cbind(x, y, z)
  }
  sRGB <- XYZ %*% t(.XYZ_to_sRGB)
  colnames(sRGB) <- c("R", "G", "B")

  # gamma-compressed values
  RGB <- gamma_compress(sRGB)

  return(RGB * max_rgb)
}

RGB2XYZ <- function(red, green, blue, max_rgb = 255) {
  if (missing(green) && missing(blue)) {
    if (is.matrix(red) || is.data.frame(red)) {
      if (ncol(red) < 3L) stop("At least 3 columns needed.", call. = FALSE)
      RGB <- data.matrix(red)
    }
  } else {
    RGB <- cbind(red, green, blue)
  }
  RGB <- RGB / max_rgb

  # gamma-expanded values
  sRGB <- gamma_expand(RGB)

  XYZ <- sRGB %*% t(.sRGB_to_XYZ)
  colnames(XYZ) <- c("X", "Y", "Z")
  return(XYZ)
}

#' RGB to/from LMS Lab Color Conversion
#'
#' @param red,blue,green A [`numeric`] vector with values in \eqn{[0, max]}.
#' @param max A [`numeric`] value giving the maximum of the color values range.
#' @return A numeric matrix with three rows.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
NULL

RGB2LMS <- function(red, green, blue, max = 255) {
  if (missing(green) && missing(blue)) {
    if (is.matrix(red) || is.data.frame(red)) {
      if (ncol(red) < 3L) stop("At least 3 columns needed.", call. = FALSE)
      RGB <- data.matrix(red)
    }
  } else {
    RGB <- cbind(red, green, blue)
  }
  RGB <- RGB / max

  # gamma-expanded values
  sRGB <- gamma_expand(RGB)

  LMS <- sRGB %*% t(.XYZ_to_LMS %*% .sRGB_to_XYZ)
  colnames(LMS) <- c("L", "M", "S")
  return(LMS)
}

LMS2RGB <- function(long, medium, short, max = 255) {
  if (missing(medium) && missing(short)) {
    if (is.matrix(long) || is.data.frame(long)) {
      if (ncol(long) < 3L) stop("At least 3 columns needed.", call. = FALSE)
      LMS <- data.matrix(long)
    }
  } else {
    LMS <- cbind(long, medium, short)
  }

  sRGB <- LMS %*% t(solve(.XYZ_to_LMS %*% .sRGB_to_XYZ))
  colnames(sRGB) <- c("R", "G", "B")

  # gamma-compressed values
  RGB <- gamma_compress(sRGB)

  return(RGB * max)
}

#' XYZ to CIE Lab Color Conversion
#'
#' @param x,y,z A [`numeric`] vector of color coordinates.
#' @param white A length-three [`numeric`] vector giving a reference white
#'  coordinates (default to D65).
#' @return A numeric matrix with three columns.
#' @author N. Frerebeau
#' @keywords internal
#' @noRd
NULL

XYZ2Lab <- function(x, y, z, white = c(x = 0.95047, y = 1.00000, z = 1.08883)) {
  if (missing(y) && missing(z)) {
    if (is.matrix(x) || is.data.frame(x)) {
      if (ncol(x) < 3L) stop("At least 3 columns needed.", call. = FALSE)
      XYZ <- data.matrix(x)
      x <- XYZ[, 1]
      y <- XYZ[, 2]
      z <- XYZ[, 3]
    }
  }

  # Actual CIE standards
  f <- function(a, e = 0.008856, k = 903.3) {
    a_e <- a <= e
    b <- a^(1/3)
    b[a_e] <- (k * a[a_e] + 16) / 116
    b
  }

  x <- x / white[[1L]]
  y <- y / white[[2L]]
  z <- z / white[[3L]]

  Lab <- cbind(
    L = 116 * f(y) - 16,
    a = 500 * (f(x) - f(y)),
    b = 200 * (f(y) - f(z))
  )
  return(Lab)
}
