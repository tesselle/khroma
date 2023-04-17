test_that("Okabe Ito", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_okabeito(), "ggproto")
  expect_s3_class(scale_edge_colour_okabeito(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_okabeito(black_position = "first")$palette(8),
    colour("okabe ito", names = FALSE)(8)
  )
  expect_equal(
    scale_edge_colour_okabeito(black_position = "last")$palette(8),
    colour("okabe ito black", names = FALSE)(8)
  )

  expect_s3_class(scale_edge_color_okabeito(), "ggproto")
  expect_s3_class(scale_edge_color_okabeito(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_okabeito(), "ggproto")
  expect_s3_class(scale_edge_fill_okabeito(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_okabeito()$palette(8),
    colour("okabe ito", names = FALSE)(8)
  )
})
