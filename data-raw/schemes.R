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
#             representation of the colours. Names are optional but recommended.
# scheme      (optional) a list of integer vectors giving the indices of
#             colours to be picked for a given number of levels.

# Save =========================================================================
source("./data-raw/schemes_PaulTol.R")
source("./data-raw/schemes_science.R")
.schemes <- c(schemes_tol2018, schemes_science)
usethis::use_data(.schemes, internal = TRUE, overwrite = TRUE)
