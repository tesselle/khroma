context("ggplot2 Paul Tol scales")

# Qualitative color schemes
test_that("Bright", {
  expect_is(scale_colour_bright(), "ggproto")
  expect_is(scale_colour_bright(), "ScaleDiscrete")

  expect_is(scale_color_bright(), "ggproto")
  expect_is(scale_color_bright(), "ScaleDiscrete")

  expect_is(scale_fill_bright(), "ggproto")
  expect_is(scale_fill_bright(), "ScaleDiscrete")
})

test_that("Vibrant", {
  expect_is(scale_colour_vibrant(), "ggproto")
  expect_is(scale_colour_vibrant(), "ScaleDiscrete")

  expect_is(scale_color_vibrant(), "ggproto")
  expect_is(scale_color_vibrant(), "ScaleDiscrete")

  expect_is(scale_fill_vibrant(), "ggproto")
  expect_is(scale_fill_vibrant(), "ScaleDiscrete")
})

test_that("Muted", {
  expect_is(scale_colour_muted(), "ggproto")
  expect_is(scale_colour_muted(), "ScaleDiscrete")

  expect_is(scale_color_muted(), "ggproto")
  expect_is(scale_color_muted(), "ScaleDiscrete")

  expect_is(scale_fill_muted(), "ggproto")
  expect_is(scale_fill_muted(), "ScaleDiscrete")
})

test_that("Light", {
  expect_is(scale_colour_light(), "ggproto")
  expect_is(scale_colour_light(), "ScaleDiscrete")

  expect_is(scale_color_light(), "ggproto")
  expect_is(scale_color_light(), "ScaleDiscrete")

  expect_is(scale_fill_light(), "ggproto")
  expect_is(scale_fill_light(), "ScaleDiscrete")
})

test_that("Rainbow", {
  expect_is(scale_colour_rainbow(), "ggproto")
  expect_is(scale_colour_rainbow(), "ScaleDiscrete")

  expect_is(scale_color_rainbow(), "ggproto")
  expect_is(scale_color_rainbow(), "ScaleDiscrete")

  expect_is(scale_fill_rainbow(), "ggproto")
  expect_is(scale_fill_rainbow(), "ScaleDiscrete")
})

# Diverging color schemes
test_that("Sunset", {
  expect_is(scale_colour_sunset(midpoint = 10), "ggproto")
  expect_is(scale_colour_sunset(), "ggproto")
  expect_is(scale_colour_sunset(), "ScaleContinuous")

  expect_is(scale_color_sunset(), "ggproto")
  expect_is(scale_color_sunset(), "ScaleContinuous")

  expect_is(scale_fill_sunset(midpoint = 10), "ggproto")
  expect_is(scale_fill_sunset(), "ggproto")
  expect_is(scale_fill_sunset(), "ScaleContinuous")
})

test_that("BuRd", {
  expect_is(scale_colour_BuRd(midpoint = 10), "ggproto")
  expect_is(scale_colour_BuRd(), "ggproto")
  expect_is(scale_colour_BuRd(), "ScaleContinuous")

  expect_is(scale_color_BuRd(), "ggproto")
  expect_is(scale_color_BuRd(), "ScaleContinuous")

  expect_is(scale_fill_BuRd(midpoint = 10), "ggproto")
  expect_is(scale_fill_BuRd(), "ggproto")
  expect_is(scale_fill_BuRd(), "ScaleContinuous")
})

test_that("PRGn", {
  expect_is(scale_colour_PRGn(midpoint = 10), "ggproto")
  expect_is(scale_colour_PRGn(), "ggproto")
  expect_is(scale_colour_PRGn(), "ScaleContinuous")

  expect_is(scale_color_PRGn(), "ggproto")
  expect_is(scale_color_PRGn(), "ScaleContinuous")

  expect_is(scale_fill_PRGn(midpoint = 10), "ggproto")
  expect_is(scale_fill_PRGn(), "ggproto")
  expect_is(scale_fill_PRGn(), "ScaleContinuous")
})

# Sequential schemes
test_that("YlOrBr", {
  expect_is(scale_colour_YlOrBr(), "ggproto")
  expect_is(scale_colour_YlOrBr(), "ScaleContinuous")

  expect_is(scale_color_YlOrBr(), "ggproto")
  expect_is(scale_color_YlOrBr(), "ScaleContinuous")

  expect_is(scale_fill_YlOrBr(), "ggproto")
  expect_is(scale_fill_YlOrBr(), "ScaleContinuous")
})

test_that("Smooth rainbow", {
  expect_is(scale_colour_smoothrainbow(), "ggproto")
  expect_is(scale_colour_smoothrainbow(), "ScaleContinuous")

  expect_is(scale_color_smoothrainbow(), "ggproto")
  expect_is(scale_color_smoothrainbow(), "ScaleContinuous")

  expect_is(scale_fill_smoothrainbow(), "ggproto")
  expect_is(scale_fill_smoothrainbow(), "ScaleContinuous")
})
