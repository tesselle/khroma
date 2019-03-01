context("ggplot2 scales - DEPRECATED")

# Qualitative color schemes
test_that("Paul Tol's colour schemes", {
  paul_tol <- c("bright", "vibrant", "muted", "light", "rainbow",
                "sunset", "BuRd", "PRGn", "YlOrBr", "smooth rainbow")
  for (i in 1:length(paul_tol)) {
    expect_warning(scale_colour_tol(palette = paul_tol[i]))
    expect_warning(scale_color_tol(palette = paul_tol[i]))
    expect_warning(scale_fill_tol(palette = paul_tol[i]))
  }
})
