context("Plot")

# Save plots to an object using a null PDF device
test_that("Quick and Dirty Plot", {
  pdf(NULL)
  dev.control(displaylist = "enable")
  plot(colour("smooth rainbow")(256, range = c(0.5, 1)))
  plot_range <- grDevices::recordPlot()
  invisible(dev.off())

  vdiffr::expect_doppelganger("plot_range", plot_range)
})
test_that("Schemes", {
  for (i in c(TRUE, FALSE)) {
    for (j in c(TRUE, FALSE)) {
      pdf(NULL)
      dev.control(displaylist = "enable")
      plot_scheme(colour("muted")(9), colours = i, names = j)
      plot_scheme_muted <- grDevices::recordPlot()
      invisible(dev.off())

      vdiffr::expect_doppelganger(paste0("scheme_muted_", i, j),
                                  plot_scheme_muted)
    }
  }

  expect_error(plot_scheme(1:5), "x must be a character vector of colours.")
})
test_that("Diagnostic Map", {
  pdf(NULL)
  dev.control(displaylist = "enable")
  # Keep the results the same for R versions prior to 3.6
  if (getRversion() >= "3.6") {
    # Set sample.kind = "Rounding" to reproduce the old sampling
    # Suppress warning "non-uniform 'Rounding' sampler used"
    suppressWarnings(set.seed(12345, sample.kind = "Rounding"))
  } else {
    set.seed(12345)
  }
  plot_map(colour("bright")(7))
  plot_map_bright <- grDevices::recordPlot()
  invisible(dev.off())

  vdiffr::expect_doppelganger("map_bright", plot_map_bright)

  expect_error(plot_map(1:5), "x must be a character vector of colours.")
})
test_that("Colourblind Schemes", {
  pdf(NULL)
  dev.control(displaylist = "enable")
  plot_scheme_colourblind(colour("bright")(7))
  plot_colourblind_bright <- grDevices::recordPlot()
  invisible(dev.off())

  vdiffr::expect_doppelganger("scheme_colourblind", plot_colourblind_bright)
})
