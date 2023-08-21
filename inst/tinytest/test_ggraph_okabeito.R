if (requireNamespace("ggraph", quietly = TRUE)) {
  # Okabe Ito ==================================================================
  expect_inherits(scale_edge_colour_okabeito(), "ggproto")
  expect_inherits(scale_edge_colour_okabeito(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_okabeito(black_position = "first")$palette(8),
    colour("okabe ito", names = FALSE)(8)
  )
  expect_equal(
    scale_edge_colour_okabeito(black_position = "last")$palette(8),
    colour("okabe ito black", names = FALSE)(8)
  )

  expect_inherits(scale_edge_color_okabeito(), "ggproto")
  expect_inherits(scale_edge_color_okabeito(), "ScaleDiscrete")

  expect_inherits(scale_edge_fill_okabeito(), "ggproto")
  expect_inherits(scale_edge_fill_okabeito(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_okabeito()$palette(8),
    colour("okabe ito", names = FALSE)(8)
  )
}
