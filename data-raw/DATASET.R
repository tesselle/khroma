# How to add a new colour scheme ===============================================
# The color palettes are stored as a named list of lists in a internal data set
# within the package. Each color scheme must be a list with the following
# elements:
#
# type        (mandatory) a character string giving the type of data for which
#             the scheme should be used. It must be one of "qualitative",
#             "diverging" or "sequential".
# interpolate (mandatory) a logical scalar: can the colour palette be
#             interpolated?
# missing     (mandatory) a character string giving the the hexadecimal
#             representation of the colour that should be used for missing
#             values. If no default colour is provided, this element must be
#             set to "NA_character_".
# colours     (mandatory) a character vector giving the the hexadecimal
#             representation of the colours.
# names       (optional) a list of character vectors specifying the color names.
# scheme      (optional) a list of integer vectors giving the indices of
#             colours to be picked for a given number of levels.

# Working Space Matrices =======================================================
# http://www.brucelindbloom.com/index.html?WorkingSpaceInfo.html
## sRGB (reference white: D65)
.sRGB_to_XYZ <- matrix(
  data = c(0.4124564, 0.3575761, 0.1804375,
           0.2126729, 0.7151522, 0.0721750,
           0.0193339, 0.1191920, 0.9503041),
  nrow = 3, ncol = 3, byrow = TRUE
)
.XYZ_to_sRGB <- matrix(
  data = c(3.2404542, -1.5371385, -0.4985314,
           -0.9692660, 1.8760108, 0.0415560,
           0.0556434, -0.2040259, 1.0572252),
  nrow = 3, ncol = 3, byrow = TRUE
)
## Hunt-Pointer-Estevez transformation matrix
.XYZ_to_LMS <- matrix(
  data = c(0.4002, 0.7076, -0.0808,
           -0.2263, 1.1653, 0.0457,
           0.0000, 0.0000, 0.9182),
  nrow = 3, ncol = 3, byrow = TRUE
)

# Save =========================================================================
source("./data-raw/schemes_FabioCrameri.R")
source("./data-raw/schemes_PaulTol.R")
source("./data-raw/schemes_OkabeIto.R")
source("./data-raw/schemes_science.R")
.schemes <- c(schemes_crameri2020, schemes_tol2018, schemes_okabe2008,
              schemes_science)
usethis::use_data(.schemes, .sRGB_to_XYZ, .XYZ_to_sRGB, .XYZ_to_LMS,
                  internal = TRUE, overwrite = TRUE)
