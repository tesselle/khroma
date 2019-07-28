context("Plot")

# Save plots to an object using a null PDF device
test_that("Schemes", {
  for (i in c(TRUE, FALSE)) {
    for (j in c(TRUE, FALSE)) {
      pdf(NULL)
      dev.control(displaylist = "enable")
      plot_scheme(colour("bright")(7), colours = i, names = j)
      plot_scheme_bright <- grDevices::recordPlot()
      invisible(dev.off())
      vdiffr::expect_doppelganger(paste0("scheme_bright_", i, j),
                                  plot_scheme_bright)
    }
  }
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
})
