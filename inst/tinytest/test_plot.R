Sys.setenv(LANGUAGE = "en") # Force locale

using("tinysnapshot")
source("helpers.R")

# Quick and Dirty Plot =========================================================
plot_range <- function() plot(colour("smooth rainbow")(256, range = c(0.5, 1)))
expect_snapshot_plot(plot_range, "plot_range")

# Schemes ======================================================================
expect_error(plot_scheme(1:5), "must be a character vector of colors.")

for (i in c(TRUE, FALSE)) {
  for (j in c(TRUE, FALSE)) {
    plot_scheme_muted <- function() plot_scheme(colour("muted", names = TRUE)(9), colours = i, names = j)
    expect_snapshot_plot(plot_scheme_muted, paste0("scheme_muted_", i, j))
  }
}

# Diagnostic Map ===============================================================
expect_error(plot_map(1:5), "must be a character vector of colors.")

# Keep the results the same for R versions prior to 3.6
if (getRversion() >= "3.6") {
  # Set sample.kind = "Rounding" to reproduce the old sampling
  # Suppress warning "non-uniform 'Rounding' sampler used"
  suppressWarnings(set.seed(12345, sample.kind = "Rounding"))
} else {
  set.seed(12345)
}

plot_map_bright <- function() plot_map(colour("bright")(7))
expect_snapshot_plot(plot_map_bright, "plot_map_bright")

# Diagnostic Tiles", {
expect_error(plot_tiles(1:5), "must be a character vector of colors.")

plot_tiles_bright <- function() plot_tiles(colour("bright")(7), n = 32)
expect_snapshot_plot(plot_tiles_bright, "plot_tiles_bright")

# Colourblind Schemes ==========================================================

plot_colorblind_bright <- function() plot_scheme_colorblind(colour("bright")(7))
expect_snapshot_plot(plot_colorblind_bright, "plot_colorblind_bright")
