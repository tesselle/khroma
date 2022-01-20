test_that("Okabe Ito", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_okabeito(), "ggproto")
  expect_s3_class(scale_colour_okabeito(), "ScaleDiscrete")
  expect_equal(
    scale_colour_okabeito()$palette(8),
    colour("okabe ito", names = FALSE)(8)
  )

  expect_s3_class(scale_color_okabeito(), "ggproto")
  expect_s3_class(scale_color_okabeito(), "ScaleDiscrete")

  expect_s3_class(scale_fill_okabeito(), "ggproto")
  expect_s3_class(scale_fill_okabeito(), "ScaleDiscrete")
  expect_equal(
    scale_fill_okabeito()$palette(8),
    colour("okabe ito", names = FALSE)(8)
  )
})
