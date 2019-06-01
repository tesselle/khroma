# Save =========================================================================
source("./data-raw/palettes_PaulTol.R")
source("./data-raw/palettes_science.R")
palettes <- c(palettes_tol2018, palettes_science)
usethis::use_data(palettes, internal = TRUE, overwrite = TRUE)
