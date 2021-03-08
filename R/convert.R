# Colour Conversion

#' CMYK to/from RGB Colour Conversion
#'
#' @param cyan,magenta,yellow,black,red,blue,green A [`numeric`] vector with
#'  values in \eqn{[0, max]}.
#' @param max A [`numeric`] value giving the maximum of the colour values range.
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

#' RGB to/from XYZ Colour Conversion
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
