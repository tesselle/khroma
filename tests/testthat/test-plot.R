# Save plots to an object using a null PDF device
test_that("Quick and Dirty Plot", {
  skip_if_not_installed("vdiffr")

  plot_range <- function() plot(colour("smooth rainbow")(256, range = c(0.5, 1)))
  vdiffr::expect_doppelganger("plot_range", plot_range)
})
test_that("Schemes", {
  expect_error(plot_scheme(1:5), "x must be a character vector of colors.")

  skip_if_not_installed("vdiffr")
  for (i in c(TRUE, FALSE)) {
    for (j in c(TRUE, FALSE)) {
      plot_scheme_muted <- function() plot_scheme(colour("muted")(9), colours = i, names = j)
      vdiffr::expect_doppelganger(paste0("scheme_muted_", i, j), plot_scheme_muted)
    }
  }
})
test_that("Diagnostic Map", {
  expect_error(plot_map(1:5), "x must be a character vector of colors.")

  skip_if_not_installed("vdiffr")

  # Keep the results the same for R versions prior to 3.6
  if (getRversion() >= "3.6") {
    # Set sample.kind = "Rounding" to reproduce the old sampling
    # Suppress warning "non-uniform 'Rounding' sampler used"
    suppressWarnings(set.seed(12345, sample.kind = "Rounding"))
  } else {
    set.seed(12345)
  }

  plot_map_bright <- function() plot_map(colour("bright")(7))
  vdiffr::expect_doppelganger("map_bright", plot_map_bright)
})
test_that("Diagnostic Tiles", {
  expect_error(plot_tiles(1:5), "x must be a character vector of colors.")

  skip_if_not_installed("vdiffr")

  plot_tiles_bright <- function() plot_tiles(colour("bright")(7), n = 128)
  vdiffr::expect_doppelganger("tiles_bright", plot_tiles_bright)
})
test_that("Colourblind Schemes", {
  skip_if_not_installed("vdiffr")

  plot_colourblind_bright <- function() plot_scheme_colourblind(colour("bright")(7))
  vdiffr::expect_doppelganger("scheme_colourblind", plot_colourblind_bright)
})
