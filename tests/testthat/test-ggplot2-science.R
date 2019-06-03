context("ggplot2 science scales")

test_that("Stratigraphic scales", {
  expect_is(scale_colour_stratigraphy(), "ggproto")
  expect_is(scale_colour_stratigraphy(), "ScaleDiscrete")

  expect_is(scale_color_stratigraphy(), "ggproto")
  expect_is(scale_color_stratigraphy(), "ScaleDiscrete")

  expect_is(scale_fill_stratigraphy(), "ggproto")
  expect_is(scale_fill_stratigraphy(), "ScaleDiscrete")
})

test_that("Land scales", {
  expect_is(scale_colour_land(), "ggproto")
  expect_is(scale_colour_land(), "ScaleDiscrete")

  expect_is(scale_color_land(), "ggproto")
  expect_is(scale_color_land(), "ScaleDiscrete")

  expect_is(scale_fill_land(), "ggproto")
  expect_is(scale_fill_land(), "ScaleDiscrete")
})

test_that("Soil scales", {
  expect_is(scale_colour_soil(), "ggproto")
  expect_is(scale_colour_soil(), "ScaleDiscrete")

  expect_is(scale_color_soil(), "ggproto")
  expect_is(scale_color_soil(), "ScaleDiscrete")

  expect_is(scale_fill_soil(), "ggproto")
  expect_is(scale_fill_soil(), "ScaleDiscrete")
})
