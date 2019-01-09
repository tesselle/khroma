# Save =========================================================================
source("./data-raw/palettes_PaulTol.R")
source("./data-raw/palettes_science.R")
source("./data-raw/schemes.R")
palettes <- c(palettes_tol2018, palettes_science)
usethis::use_data(palettes, schemes, internal = TRUE, overwrite = TRUE)
