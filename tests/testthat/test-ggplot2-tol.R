context("ggplot2 Paul Tol scales")

# Deprecated functions =========================================================
test_that("Deprecated", {
  expect_warning(scale_colour_rainbow(), "deprecated")
  expect_warning(scale_color_rainbow(), "deprecated")
  expect_warning(scale_fill_rainbow(), "deprecated")
})

# Qualitative color schemes ====================================================
test_that("Bright", {
  expect_s3_class(scale_colour_bright(), "ggproto")
  expect_s3_class(scale_colour_bright(), "ScaleDiscrete")

  expect_s3_class(scale_color_bright(), "ggproto")
  expect_s3_class(scale_color_bright(), "ScaleDiscrete")

  expect_s3_class(scale_fill_bright(), "ggproto")
  expect_s3_class(scale_fill_bright(), "ScaleDiscrete")
})

test_that("Contrast", {
  expect_s3_class(scale_colour_contrast(), "ggproto")
  expect_s3_class(scale_colour_contrast(), "ScaleDiscrete")

  expect_s3_class(scale_color_contrast(), "ggproto")
  expect_s3_class(scale_color_contrast(), "ScaleDiscrete")

  expect_s3_class(scale_fill_contrast(), "ggproto")
  expect_s3_class(scale_fill_contrast(), "ScaleDiscrete")
})

test_that("Vibrant", {
  expect_s3_class(scale_colour_vibrant(), "ggproto")
  expect_s3_class(scale_colour_vibrant(), "ScaleDiscrete")

  expect_s3_class(scale_color_vibrant(), "ggproto")
  expect_s3_class(scale_color_vibrant(), "ScaleDiscrete")

  expect_s3_class(scale_fill_vibrant(), "ggproto")
  expect_s3_class(scale_fill_vibrant(), "ScaleDiscrete")
})

test_that("Muted", {
  expect_s3_class(scale_colour_muted(), "ggproto")
  expect_s3_class(scale_colour_muted(), "ScaleDiscrete")

  expect_s3_class(scale_color_muted(), "ggproto")
  expect_s3_class(scale_color_muted(), "ScaleDiscrete")

  expect_s3_class(scale_fill_muted(), "ggproto")
  expect_s3_class(scale_fill_muted(), "ScaleDiscrete")
})

test_that("Pale", {
  expect_s3_class(scale_colour_pale(), "ggproto")
  expect_s3_class(scale_colour_pale(), "ScaleDiscrete")

  expect_s3_class(scale_color_pale(), "ggproto")
  expect_s3_class(scale_color_pale(), "ScaleDiscrete")

  expect_s3_class(scale_fill_pale(), "ggproto")
  expect_s3_class(scale_fill_pale(), "ScaleDiscrete")
})

test_that("Dark", {
  expect_s3_class(scale_colour_dark(), "ggproto")
  expect_s3_class(scale_colour_dark(), "ScaleDiscrete")

  expect_s3_class(scale_color_dark(), "ggproto")
  expect_s3_class(scale_color_dark(), "ScaleDiscrete")

  expect_s3_class(scale_fill_dark(), "ggproto")
  expect_s3_class(scale_fill_dark(), "ScaleDiscrete")
})

test_that("Light", {
  expect_s3_class(scale_colour_light(), "ggproto")
  expect_s3_class(scale_colour_light(), "ScaleDiscrete")

  expect_s3_class(scale_color_light(), "ggproto")
  expect_s3_class(scale_color_light(), "ScaleDiscrete")

  expect_s3_class(scale_fill_light(), "ggproto")
  expect_s3_class(scale_fill_light(), "ScaleDiscrete")
})

# Diverging color schemes ======================================================
test_that("Sunset", {
  expect_s3_class(scale_colour_sunset(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_sunset(), "ggproto")
  expect_s3_class(scale_colour_sunset(), "ScaleContinuous")

  expect_s3_class(scale_color_sunset(), "ggproto")
  expect_s3_class(scale_color_sunset(), "ScaleContinuous")

  expect_s3_class(scale_fill_sunset(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_sunset(), "ggproto")
  expect_s3_class(scale_fill_sunset(), "ScaleContinuous")
})

test_that("BuRd", {
  expect_s3_class(scale_colour_BuRd(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_BuRd(), "ggproto")
  expect_s3_class(scale_colour_BuRd(), "ScaleContinuous")

  expect_s3_class(scale_color_BuRd(), "ggproto")
  expect_s3_class(scale_color_BuRd(), "ScaleContinuous")

  expect_s3_class(scale_fill_BuRd(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_BuRd(), "ggproto")
  expect_s3_class(scale_fill_BuRd(), "ScaleContinuous")
})

test_that("PRGn", {
  expect_s3_class(scale_colour_PRGn(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_PRGn(), "ggproto")
  expect_s3_class(scale_colour_PRGn(), "ScaleContinuous")

  expect_s3_class(scale_color_PRGn(), "ggproto")
  expect_s3_class(scale_color_PRGn(), "ScaleContinuous")

  expect_s3_class(scale_fill_PRGn(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_PRGn(), "ggproto")
  expect_s3_class(scale_fill_PRGn(), "ScaleContinuous")
})

# Sequential schemes ===========================================================
test_that("YlOrBr", {
  expect_s3_class(scale_colour_YlOrBr(), "ggproto")
  expect_s3_class(scale_colour_YlOrBr(), "ScaleContinuous")

  expect_s3_class(scale_color_YlOrBr(), "ggproto")
  expect_s3_class(scale_color_YlOrBr(), "ScaleContinuous")

  expect_s3_class(scale_fill_YlOrBr(), "ggproto")
  expect_s3_class(scale_fill_YlOrBr(), "ScaleContinuous")
})

test_that("Iridescent", {
  expect_s3_class(scale_colour_iridescent(), "ggproto")
  expect_s3_class(scale_colour_iridescent(), "ScaleContinuous")

  expect_s3_class(scale_color_iridescent(), "ggproto")
  expect_s3_class(scale_color_iridescent(), "ScaleContinuous")

  expect_s3_class(scale_fill_iridescent(), "ggproto")
  expect_s3_class(scale_fill_iridescent(), "ScaleContinuous")
})

test_that("Discrete rainbow", {
  expect_s3_class(scale_colour_discreterainbow(), "ggproto")
  expect_s3_class(scale_colour_discreterainbow(), "ScaleDiscrete")

  expect_s3_class(scale_color_discreterainbow(), "ggproto")
  expect_s3_class(scale_color_discreterainbow(), "ScaleDiscrete")

  expect_s3_class(scale_fill_discreterainbow(), "ggproto")
  expect_s3_class(scale_fill_discreterainbow(), "ScaleDiscrete")
})

test_that("Smooth rainbow", {
  expect_s3_class(scale_colour_smoothrainbow(), "ggproto")
  expect_s3_class(scale_colour_smoothrainbow(), "ScaleContinuous")

  expect_s3_class(scale_color_smoothrainbow(), "ggproto")
  expect_s3_class(scale_color_smoothrainbow(), "ScaleContinuous")

  expect_s3_class(scale_fill_smoothrainbow(), "ggproto")
  expect_s3_class(scale_fill_smoothrainbow(), "ScaleContinuous")
})
