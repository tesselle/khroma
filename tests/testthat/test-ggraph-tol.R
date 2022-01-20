# Qualitative color schemes ====================================================
test_that("Bright", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_bright(), "ggproto")
  expect_s3_class(scale_edge_colour_bright(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_bright()$palette(7),
    colour("bright", names = FALSE)(7)
  )

  expect_s3_class(scale_edge_color_bright(), "ggproto")
  expect_s3_class(scale_edge_color_bright(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_bright(), "ggproto")
  expect_s3_class(scale_edge_fill_bright(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_bright()$palette(7),
    colour("bright", names = FALSE)(7)
  )
})

test_that("High-contrast", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_highcontrast(), "ggproto")
  expect_s3_class(scale_edge_colour_highcontrast(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_highcontrast()$palette(3),
    colour("high contrast", names = FALSE)(3)
  )

  expect_s3_class(scale_edge_color_highcontrast(), "ggproto")
  expect_s3_class(scale_edge_color_highcontrast(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_highcontrast(), "ggproto")
  expect_s3_class(scale_edge_fill_highcontrast(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_highcontrast()$palette(3),
    colour("high contrast", names = FALSE)(3)
  )
})

test_that("Vibrant", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_vibrant(), "ggproto")
  expect_s3_class(scale_edge_colour_vibrant(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_vibrant()$palette(7),
    colour("vibrant", names = FALSE)(7)
  )

  expect_s3_class(scale_edge_color_vibrant(), "ggproto")
  expect_s3_class(scale_edge_color_vibrant(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_vibrant(), "ggproto")
  expect_s3_class(scale_edge_fill_vibrant(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_vibrant()$palette(7),
    colour("vibrant", names = FALSE)(7)
  )
})

test_that("Muted", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_muted(), "ggproto")
  expect_s3_class(scale_edge_colour_muted(), "ScaleDiscrete")
  expect_equal(scale_edge_colour_muted()$na.value, "#DDDDDD")
  expect_equal(scale_edge_colour_muted(na.value = "#FFFFFF")$na.value, "#FFFFFF")
  expect_equal(
    scale_edge_colour_muted()$palette(9),
    colour("muted", names = FALSE)(9)
  )
  expect_equal(
    unclass(scale_edge_colour_muted(reverse = TRUE)$palette(9)),
    rev(colour("muted", names = FALSE, reverse = FALSE)(9)),
    ignore_attr = TRUE
  )

  expect_s3_class(scale_edge_color_muted(), "ggproto")
  expect_s3_class(scale_edge_color_muted(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_muted(), "ggproto")
  expect_s3_class(scale_edge_fill_muted(), "ScaleDiscrete")
  expect_equal(scale_edge_fill_muted()$na.value, "#DDDDDD")
  expect_equal(
    scale_edge_fill_muted()$palette(9),
    colour("muted", names = FALSE)(9)
  )
})

test_that("Medium-contrast", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_mediumcontrast(), "ggproto")
  expect_s3_class(scale_edge_colour_mediumcontrast(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_mediumcontrast()$palette(3),
    colour("medium contrast", names = FALSE)(3)
  )

  expect_s3_class(scale_edge_color_mediumcontrast(), "ggproto")
  expect_s3_class(scale_edge_color_mediumcontrast(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_mediumcontrast(), "ggproto")
  expect_s3_class(scale_edge_fill_mediumcontrast(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_mediumcontrast()$palette(3),
    colour("medium contrast", names = FALSE)(3)
  )
})

test_that("Pale", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_pale(), "ggproto")
  expect_s3_class(scale_edge_colour_pale(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_pale()$palette(6),
    colour("pale", names = FALSE)(6)
  )

  expect_s3_class(scale_edge_color_pale(), "ggproto")
  expect_s3_class(scale_edge_color_pale(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_pale(), "ggproto")
  expect_s3_class(scale_edge_fill_pale(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_pale()$palette(6),
    colour("pale", names = FALSE)(6)
  )
})

test_that("Dark", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_dark(), "ggproto")
  expect_s3_class(scale_edge_colour_dark(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_dark()$palette(6),
    colour("dark", names = FALSE)(6)
  )

  expect_s3_class(scale_edge_color_dark(), "ggproto")
  expect_s3_class(scale_edge_color_dark(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_dark(), "ggproto")
  expect_s3_class(scale_edge_fill_dark(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_dark()$palette(6),
    colour("dark", names = FALSE)(6)
  )
})

test_that("Light", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_light(), "ggproto")
  expect_s3_class(scale_edge_colour_light(), "ScaleDiscrete")
  expect_equal(
    scale_edge_colour_light()$palette(9),
    colour("light", names = FALSE)(9)
  )

  expect_s3_class(scale_edge_color_light(), "ggproto")
  expect_s3_class(scale_edge_color_light(), "ScaleDiscrete")

  expect_s3_class(scale_edge_fill_light(), "ggproto")
  expect_s3_class(scale_edge_fill_light(), "ScaleDiscrete")
  expect_equal(
    scale_edge_fill_light()$palette(9),
    colour("light", names = FALSE)(9)
  )
})

# Diverging color schemes ======================================================
test_that("Sunset", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_sunset(midpoint = 10), "ggproto")
  expect_s3_class(scale_edge_colour_sunset(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_edge_colour_sunset(), "ggproto")
  expect_s3_class(scale_edge_colour_sunset(), "ScaleContinuous")
  expect_equal(scale_edge_colour_sunset()$na.value, "#FFFFFF")

  expect_s3_class(scale_edge_color_sunset(), "ggproto")
  expect_s3_class(scale_edge_color_sunset(), "ScaleContinuous")

  expect_s3_class(scale_edge_fill_sunset(midpoint = 10), "ggproto")
  expect_s3_class(scale_edge_fill_sunset(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_edge_fill_sunset(), "ggproto")
  expect_s3_class(scale_edge_fill_sunset(), "ScaleContinuous")
  expect_equal(scale_edge_fill_sunset()$na.value, "#FFFFFF")
})

test_that("BuRd", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_BuRd(midpoint = 10), "ggproto")
  expect_s3_class(scale_edge_colour_BuRd(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_edge_colour_BuRd(), "ggproto")
  expect_s3_class(scale_edge_colour_BuRd(), "ScaleContinuous")
  expect_equal(scale_edge_colour_BuRd()$na.value, "#FFEE99")

  expect_s3_class(scale_edge_color_BuRd(), "ggproto")
  expect_s3_class(scale_edge_color_BuRd(), "ScaleContinuous")
  expect_equal(scale_edge_color_BuRd()$na.value, "#FFEE99")

  expect_s3_class(scale_edge_fill_BuRd(midpoint = 10), "ggproto")
  expect_s3_class(scale_edge_fill_BuRd(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_edge_fill_BuRd(), "ggproto")
  expect_s3_class(scale_edge_fill_BuRd(), "ScaleContinuous")
  expect_equal(scale_edge_fill_BuRd()$na.value, "#FFEE99")
})

test_that("PRGn", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_PRGn(midpoint = 10), "ggproto")
  expect_s3_class(scale_edge_colour_PRGn(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_edge_colour_PRGn(), "ggproto")
  expect_s3_class(scale_edge_colour_PRGn(), "ScaleContinuous")
  expect_equal(scale_edge_colour_PRGn()$na.value, "#FFEE99")

  expect_s3_class(scale_edge_color_PRGn(), "ggproto")
  expect_s3_class(scale_edge_color_PRGn(), "ScaleContinuous")
  expect_equal(scale_edge_color_PRGn()$na.value, "#FFEE99")

  expect_s3_class(scale_edge_fill_PRGn(midpoint = 10), "ggproto")
  expect_s3_class(scale_edge_fill_PRGn(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_edge_fill_PRGn(), "ggproto")
  expect_s3_class(scale_edge_fill_PRGn(), "ScaleContinuous")
  expect_equal(scale_edge_fill_PRGn()$na.value, "#FFEE99")
})

# Sequential schemes ===========================================================
test_that("YlOrBr", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_YlOrBr(), "ggproto")
  expect_s3_class(scale_edge_colour_YlOrBr(), "ScaleContinuous")
  expect_s3_class(scale_edge_colour_YlOrBr(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_edge_colour_YlOrBr()$na.value, "#888888")

  expect_s3_class(scale_edge_color_YlOrBr(), "ggproto")
  expect_s3_class(scale_edge_color_YlOrBr(), "ScaleContinuous")
  expect_equal(scale_edge_color_YlOrBr()$na.value, "#888888")

  expect_s3_class(scale_edge_fill_YlOrBr(), "ggproto")
  expect_s3_class(scale_edge_fill_YlOrBr(), "ScaleContinuous")
  expect_s3_class(scale_edge_fill_YlOrBr(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_edge_fill_YlOrBr()$na.value, "#888888")
})

test_that("Iridescent", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_iridescent(), "ggproto")
  expect_s3_class(scale_edge_colour_iridescent(), "ScaleContinuous")
  expect_s3_class(scale_edge_colour_iridescent(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_edge_colour_iridescent()$na.value, "#999999")

  expect_s3_class(scale_edge_color_iridescent(), "ggproto")
  expect_s3_class(scale_edge_color_iridescent(), "ScaleContinuous")
  expect_equal(scale_edge_color_iridescent()$na.value, "#999999")

  expect_s3_class(scale_edge_fill_iridescent(), "ggproto")
  expect_s3_class(scale_edge_fill_iridescent(), "ScaleContinuous")
  expect_s3_class(scale_edge_fill_iridescent(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_edge_fill_iridescent()$na.value, "#999999")
})

test_that("Discrete rainbow", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_discreterainbow(), "ggproto")
  expect_s3_class(scale_edge_colour_discreterainbow(), "ScaleDiscrete")
  expect_equal(scale_edge_colour_discreterainbow()$na.value, "#777777")

  expect_s3_class(scale_edge_color_discreterainbow(), "ggproto")
  expect_s3_class(scale_edge_color_discreterainbow(), "ScaleDiscrete")
  expect_equal(scale_edge_color_discreterainbow()$na.value, "#777777")

  expect_s3_class(scale_edge_fill_discreterainbow(), "ggproto")
  expect_s3_class(scale_edge_fill_discreterainbow(), "ScaleDiscrete")
  expect_equal(scale_edge_fill_discreterainbow()$na.value, "#777777")
})

test_that("Smooth rainbow", {
  skip_if_not_installed("ggraph")
  expect_s3_class(scale_edge_colour_smoothrainbow(), "ggproto")
  expect_s3_class(scale_edge_colour_smoothrainbow(), "ScaleContinuous")
  expect_s3_class(scale_edge_colour_smoothrainbow(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_edge_colour_smoothrainbow()$na.value, "#666666")

  expect_s3_class(scale_edge_color_smoothrainbow(), "ggproto")
  expect_s3_class(scale_edge_color_smoothrainbow(), "ScaleContinuous")
  expect_equal(scale_edge_color_smoothrainbow()$na.value, "#666666")

  expect_s3_class(scale_edge_fill_smoothrainbow(), "ggproto")
  expect_s3_class(scale_edge_fill_smoothrainbow(), "ScaleContinuous")
  expect_s3_class(scale_edge_fill_smoothrainbow(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_edge_fill_smoothrainbow()$na.value, "#666666")
})
