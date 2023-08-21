if (requireNamespace("ggplot2", quietly = TRUE)) {
  # Okabe Ito ==================================================================
  expect_inherits(scale_colour_okabeito(), "ggproto")
  expect_inherits(scale_colour_okabeito(), "ScaleDiscrete")
  expect_equal(
    scale_colour_okabeito(black_position = "first")$palette(8),
    colour("okabe ito", names = FALSE)(8)
  )
  expect_equal(
    scale_colour_okabeito(black_position = "last")$palette(8),
    colour("okabe ito black", names = FALSE)(8)
  )

  expect_inherits(scale_color_okabeito(), "ggproto")
  expect_inherits(scale_color_okabeito(), "ScaleDiscrete")

  expect_inherits(scale_fill_okabeito(), "ggproto")
  expect_inherits(scale_fill_okabeito(), "ScaleDiscrete")
  expect_equal(
    scale_fill_okabeito()$palette(8),
    colour("okabe ito", names = FALSE)(8)
  )
}
