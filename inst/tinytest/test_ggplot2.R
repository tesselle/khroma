if (requireNamespace("ggplot2", quietly = TRUE)) {
  # Scale builder ==============================================================
  pal_colour <- scale_colour_picker(palette = "okabeito")
  expect_equal(pal_colour, scale_colour_okabeito())

  pal_colour_rev <- scale_colour_picker(reverse = TRUE, palette = "okabeito")
  expect_equal(pal_colour_rev, scale_colour_okabeito(reverse = TRUE))

  pal_colour <- scale_colour_picker(black_position = "last", palette = "okabeito")
  expect_equal(pal_colour, scale_colour_okabeito(black_position = "last"))

  pal_colour_rev <- scale_colour_picker(reverse = TRUE, black_position = "last", palette = "okabeito")
  expect_equal(pal_colour_rev, scale_colour_okabeito(reverse = TRUE, black_position = "last"))

  pal_fill <- scale_fill_picker(palette = "YlOrBr")
  expect_equal(pal_fill, scale_fill_YlOrBr())
}
if (requireNamespace("ggraph", quietly = TRUE)) {
  pal_edge_colour <- scale_edge_colour_picker(palette = "okabeito")
  expect_equal(pal_edge_colour, scale_edge_colour_okabeito())

  pal_edge_fill <- scale_edge_fill_picker(palette = "YlOrBr")
  expect_equal(pal_edge_fill, scale_edge_fill_YlOrBr())
}
