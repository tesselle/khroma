if (requireNamespace("ggplot2", quietly = TRUE)) {
  # Stratigraphic scales =======================================================
  expect_inherits(scale_colour_stratigraphy(), "ggproto")
  expect_inherits(scale_colour_stratigraphy(), "ScaleDiscrete")
  expect_equal(
    scale_colour_stratigraphy()$palette(175),
    colour("stratigraphy", names = TRUE)(175)
  )

  expect_inherits(scale_color_stratigraphy(), "ggproto")
  expect_inherits(scale_color_stratigraphy(), "ScaleDiscrete")

  expect_inherits(scale_fill_stratigraphy(), "ggproto")
  expect_inherits(scale_fill_stratigraphy(), "ScaleDiscrete")
  expect_equal(
    scale_fill_stratigraphy()$palette(175),
    colour("stratigraphy", names = TRUE)(175)
  )

  # Land scales ================================================================
  expect_inherits(scale_colour_land(), "ggproto")
  expect_inherits(scale_colour_land(), "ScaleDiscrete")
  expect_equal(
    scale_colour_land()$palette(14),
    colour("land", names = TRUE)(14)
  )

  expect_inherits(scale_color_land(), "ggproto")
  expect_inherits(scale_color_land(), "ScaleDiscrete")

  expect_inherits(scale_fill_land(), "ggproto")
  expect_inherits(scale_fill_land(), "ScaleDiscrete")
  expect_equal(
    scale_fill_land()$palette(14),
    colour("land", names = TRUE)(14)
  )

  # Soil scales ================================================================
  expect_inherits(scale_colour_soil(), "ggproto")
  expect_inherits(scale_colour_soil(), "ScaleDiscrete")
  expect_equal(
    scale_colour_soil()$palette(24),
    colour("soil", names = TRUE)(24)
  )

  expect_inherits(scale_color_soil(), "ggproto")
  expect_inherits(scale_color_soil(), "ScaleDiscrete")

  expect_inherits(scale_fill_soil(), "ggproto")
  expect_inherits(scale_fill_soil(), "ScaleDiscrete")
  expect_equal(
    scale_fill_soil()$palette(24),
    colour("soil", names = TRUE)(24)
  )
}
