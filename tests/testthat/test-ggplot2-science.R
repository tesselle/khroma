context("ggplot2 science scales")

test_that("Stratigraphic scales", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_stratigraphy(), "ggproto")
  expect_s3_class(scale_colour_stratigraphy(), "ScaleDiscrete")
  expect_equal(
    scale_colour_stratigraphy()$palette(175),
    colour("stratigraphy", names = TRUE)(175)
  )

  expect_s3_class(scale_color_stratigraphy(), "ggproto")
  expect_s3_class(scale_color_stratigraphy(), "ScaleDiscrete")

  expect_s3_class(scale_fill_stratigraphy(), "ggproto")
  expect_s3_class(scale_fill_stratigraphy(), "ScaleDiscrete")
  expect_equal(
    scale_fill_stratigraphy()$palette(175),
    colour("stratigraphy", names = TRUE)(175)
  )
})

test_that("Land scales", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_land(), "ggproto")
  expect_s3_class(scale_colour_land(), "ScaleDiscrete")
  expect_equal(
    scale_colour_land()$palette(14),
    colour("land", names = TRUE)(14)
  )

  expect_s3_class(scale_color_land(), "ggproto")
  expect_s3_class(scale_color_land(), "ScaleDiscrete")

  expect_s3_class(scale_fill_land(), "ggproto")
  expect_s3_class(scale_fill_land(), "ScaleDiscrete")
  expect_equal(
    scale_fill_land()$palette(14),
    colour("land", names = TRUE)(14)
  )
})

test_that("Soil scales", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_soil(), "ggproto")
  expect_s3_class(scale_colour_soil(), "ScaleDiscrete")
  expect_equal(
    scale_colour_soil()$palette(24),
    colour("soil", names = TRUE)(24)
  )

  expect_s3_class(scale_color_soil(), "ggproto")
  expect_s3_class(scale_color_soil(), "ScaleDiscrete")

  expect_s3_class(scale_fill_soil(), "ggproto")
  expect_s3_class(scale_fill_soil(), "ScaleDiscrete")
  expect_equal(
    scale_fill_soil()$palette(24),
    colour("soil", names = TRUE)(24)
  )
})
