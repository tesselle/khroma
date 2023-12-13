if (requireNamespace("ggplot2", quietly = TRUE)) {
  # Qualitative color schemes ==================================================
  ## Bright --------------------------------------------------------------------
  expect_inherits(scale_colour_bright(), "ggproto")
  expect_inherits(scale_colour_bright(), "ScaleDiscrete")
  expect_equal(
    scale_colour_bright()$palette(7),
    colour("bright", names = FALSE)(7)
  )

  expect_inherits(scale_color_bright(), "ggproto")
  expect_inherits(scale_color_bright(), "ScaleDiscrete")

  expect_inherits(scale_fill_bright(), "ggproto")
  expect_inherits(scale_fill_bright(), "ScaleDiscrete")
  expect_equal(
    scale_fill_bright()$palette(7),
    colour("bright", names = FALSE)(7)
  )

  ## High-contrast -------------------------------------------------------------
  expect_inherits(scale_colour_highcontrast(), "ggproto")
  expect_inherits(scale_colour_highcontrast(), "ScaleDiscrete")
  expect_equal(
    scale_colour_highcontrast()$palette(3),
    colour("high contrast", names = FALSE)(3)
  )

  expect_inherits(scale_color_highcontrast(), "ggproto")
  expect_inherits(scale_color_highcontrast(), "ScaleDiscrete")

  expect_inherits(scale_fill_highcontrast(), "ggproto")
  expect_inherits(scale_fill_highcontrast(), "ScaleDiscrete")
  expect_equal(
    scale_fill_highcontrast()$palette(3),
    colour("high contrast", names = FALSE)(3)
  )

  ## Vibrant -------------------------------------------------------------------
  expect_inherits(scale_colour_vibrant(), "ggproto")
  expect_inherits(scale_colour_vibrant(), "ScaleDiscrete")
  expect_equal(
    scale_colour_vibrant()$palette(7),
    colour("vibrant", names = FALSE)(7)
  )

  expect_inherits(scale_color_vibrant(), "ggproto")
  expect_inherits(scale_color_vibrant(), "ScaleDiscrete")

  expect_inherits(scale_fill_vibrant(), "ggproto")
  expect_inherits(scale_fill_vibrant(), "ScaleDiscrete")
  expect_equal(
    scale_fill_vibrant()$palette(7),
    colour("vibrant", names = FALSE)(7)
  )

  ## Muted ---------------------------------------------------------------------
  expect_inherits(scale_colour_muted(), "ggproto")
  expect_inherits(scale_colour_muted(), "ScaleDiscrete")
  expect_equal(scale_colour_muted()$na.value, "#DDDDDD")
  expect_equal(scale_colour_muted(na.value = "#FFFFFF")$na.value, "#FFFFFF")
  expect_equal(
    scale_colour_muted()$palette(9),
    colour("muted", names = FALSE)(9)
  )
  expect_equivalent(
    unclass(scale_colour_muted(reverse = TRUE)$palette(9)),
    rev(colour("muted", names = FALSE, reverse = FALSE)(9))
  )

  expect_inherits(scale_color_muted(), "ggproto")
  expect_inherits(scale_color_muted(), "ScaleDiscrete")

  expect_inherits(scale_fill_muted(), "ggproto")
  expect_inherits(scale_fill_muted(), "ScaleDiscrete")
  expect_equal(scale_fill_muted()$na.value, "#DDDDDD")
  expect_equal(
    scale_fill_muted()$palette(9),
    colour("muted", names = FALSE)(9)
  )

  ## Medium-contrast -----------------------------------------------------------
  expect_inherits(scale_colour_mediumcontrast(), "ggproto")
  expect_inherits(scale_colour_mediumcontrast(), "ScaleDiscrete")
  expect_equal(
    scale_colour_mediumcontrast()$palette(3),
    colour("medium contrast", names = FALSE)(3)
  )

  expect_inherits(scale_color_mediumcontrast(), "ggproto")
  expect_inherits(scale_color_mediumcontrast(), "ScaleDiscrete")

  expect_inherits(scale_fill_mediumcontrast(), "ggproto")
  expect_inherits(scale_fill_mediumcontrast(), "ScaleDiscrete")
  expect_equal(
    scale_fill_mediumcontrast()$palette(3),
    colour("medium contrast", names = FALSE)(3)
  )

  ## Pale ----------------------------------------------------------------------
  expect_inherits(scale_colour_pale(), "ggproto")
  expect_inherits(scale_colour_pale(), "ScaleDiscrete")
  expect_equal(
    scale_colour_pale()$palette(6),
    colour("pale", names = FALSE)(6)
  )

  expect_inherits(scale_color_pale(), "ggproto")
  expect_inherits(scale_color_pale(), "ScaleDiscrete")

  expect_inherits(scale_fill_pale(), "ggproto")
  expect_inherits(scale_fill_pale(), "ScaleDiscrete")
  expect_equal(
    scale_fill_pale()$palette(6),
    colour("pale", names = FALSE)(6)
  )

  ## Dark ----------------------------------------------------------------------
  expect_inherits(scale_colour_dark(), "ggproto")
  expect_inherits(scale_colour_dark(), "ScaleDiscrete")
  expect_equal(
    scale_colour_dark()$palette(6),
    colour("dark", names = FALSE)(6)
  )

  expect_inherits(scale_color_dark(), "ggproto")
  expect_inherits(scale_color_dark(), "ScaleDiscrete")

  expect_inherits(scale_fill_dark(), "ggproto")
  expect_inherits(scale_fill_dark(), "ScaleDiscrete")
  expect_equal(
    scale_fill_dark()$palette(6),
    colour("dark", names = FALSE)(6)
  )

  ## Light ---------------------------------------------------------------------
  expect_inherits(scale_colour_light(), "ggproto")
  expect_inherits(scale_colour_light(), "ScaleDiscrete")
  expect_equal(
    scale_colour_light()$palette(9),
    colour("light", names = FALSE)(9)
  )

  expect_inherits(scale_color_light(), "ggproto")
  expect_inherits(scale_color_light(), "ScaleDiscrete")

  expect_inherits(scale_fill_light(), "ggproto")
  expect_inherits(scale_fill_light(), "ScaleDiscrete")
  expect_equal(
    scale_fill_light()$palette(9),
    colour("light", names = FALSE)(9)
  )

  # Diverging color schemes ====================================================
  ## Sunset --------------------------------------------------------------------
  expect_inherits(scale_colour_sunset(midpoint = 10), "ggproto")
  expect_inherits(scale_colour_sunset(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_colour_sunset(), "ggproto")
  expect_inherits(scale_colour_sunset(), "ScaleContinuous")
  expect_equal(scale_colour_sunset()$na.value, "#FFFFFF")

  expect_inherits(scale_color_sunset(), "ggproto")
  expect_inherits(scale_color_sunset(), "ScaleContinuous")

  expect_inherits(scale_fill_sunset(midpoint = 10), "ggproto")
  expect_inherits(scale_fill_sunset(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_fill_sunset(), "ggproto")
  expect_inherits(scale_fill_sunset(), "ScaleContinuous")
  expect_equal(scale_fill_sunset()$na.value, "#FFFFFF")

  ## Nightfall -----------------------------------------------------------------
  expect_inherits(scale_colour_nightfall(midpoint = 10), "ggproto")
  expect_inherits(scale_colour_nightfall(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_colour_nightfall(), "ggproto")
  expect_inherits(scale_colour_nightfall(), "ScaleContinuous")
  expect_equal(scale_colour_nightfall()$na.value, "#FFFFFF")

  expect_inherits(scale_color_nightfall(), "ggproto")
  expect_inherits(scale_color_nightfall(), "ScaleContinuous")

  expect_inherits(scale_fill_nightfall(midpoint = 10), "ggproto")
  expect_inherits(scale_fill_nightfall(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_fill_nightfall(), "ggproto")
  expect_inherits(scale_fill_nightfall(), "ScaleContinuous")
  expect_equal(scale_fill_nightfall()$na.value, "#FFFFFF")

  ## BuRd ----------------------------------------------------------------------
  expect_inherits(scale_colour_BuRd(midpoint = 10), "ggproto")
  expect_inherits(scale_colour_BuRd(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_colour_BuRd(), "ggproto")
  expect_inherits(scale_colour_BuRd(), "ScaleContinuous")
  expect_equal(scale_colour_BuRd()$na.value, "#FFEE99")

  expect_inherits(scale_color_BuRd(), "ggproto")
  expect_inherits(scale_color_BuRd(), "ScaleContinuous")
  expect_equal(scale_color_BuRd()$na.value, "#FFEE99")

  expect_inherits(scale_fill_BuRd(midpoint = 10), "ggproto")
  expect_inherits(scale_fill_BuRd(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_fill_BuRd(), "ggproto")
  expect_inherits(scale_fill_BuRd(), "ScaleContinuous")
  expect_equal(scale_fill_BuRd()$na.value, "#FFEE99")

  ## PRGn ----------------------------------------------------------------------
  expect_inherits(scale_colour_PRGn(midpoint = 10), "ggproto")
  expect_inherits(scale_colour_PRGn(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_colour_PRGn(), "ggproto")
  expect_inherits(scale_colour_PRGn(), "ScaleContinuous")
  expect_equal(scale_colour_PRGn()$na.value, "#FFEE99")

  expect_inherits(scale_color_PRGn(), "ggproto")
  expect_inherits(scale_color_PRGn(), "ScaleContinuous")
  expect_equal(scale_color_PRGn()$na.value, "#FFEE99")

  expect_inherits(scale_fill_PRGn(midpoint = 10), "ggproto")
  expect_inherits(scale_fill_PRGn(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_fill_PRGn(), "ggproto")
  expect_inherits(scale_fill_PRGn(), "ScaleContinuous")
  expect_equal(scale_fill_PRGn()$na.value, "#FFEE99")

  # Sequential schemes =========================================================
  ## YlOrBr --------------------------------------------------------------------
  expect_inherits(scale_colour_YlOrBr(), "ggproto")
  expect_inherits(scale_colour_YlOrBr(), "ScaleContinuous")
  expect_inherits(scale_colour_YlOrBr(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_colour_YlOrBr()$na.value, "#888888")

  expect_inherits(scale_color_YlOrBr(), "ggproto")
  expect_inherits(scale_color_YlOrBr(), "ScaleContinuous")
  expect_equal(scale_color_YlOrBr()$na.value, "#888888")

  expect_inherits(scale_fill_YlOrBr(), "ggproto")
  expect_inherits(scale_fill_YlOrBr(), "ScaleContinuous")
  expect_inherits(scale_fill_YlOrBr(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_fill_YlOrBr()$na.value, "#888888")

  ## Iridescent ----------------------------------------------------------------
  expect_inherits(scale_colour_iridescent(), "ggproto")
  expect_inherits(scale_colour_iridescent(), "ScaleContinuous")
  expect_inherits(scale_colour_iridescent(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_colour_iridescent()$na.value, "#999999")

  expect_inherits(scale_color_iridescent(), "ggproto")
  expect_inherits(scale_color_iridescent(), "ScaleContinuous")
  expect_equal(scale_color_iridescent()$na.value, "#999999")

  expect_inherits(scale_fill_iridescent(), "ggproto")
  expect_inherits(scale_fill_iridescent(), "ScaleContinuous")
  expect_inherits(scale_fill_iridescent(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_fill_iridescent()$na.value, "#999999")

  ## Incandescent --------------------------------------------------------------
  expect_inherits(scale_colour_incandescent(), "ggproto")
  expect_inherits(scale_colour_incandescent(), "ScaleContinuous")
  expect_inherits(scale_colour_incandescent(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_colour_incandescent()$na.value, "#888888")

  expect_inherits(scale_color_incandescent(), "ggproto")
  expect_inherits(scale_color_incandescent(), "ScaleContinuous")
  expect_equal(scale_color_incandescent()$na.value, "#888888")

  expect_inherits(scale_fill_incandescent(), "ggproto")
  expect_inherits(scale_fill_incandescent(), "ScaleContinuous")
  expect_inherits(scale_fill_incandescent(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_fill_incandescent()$na.value, "#888888")

  ## Discrete rainbow ----------------------------------------------------------
  expect_inherits(scale_colour_discreterainbow(), "ggproto")
  expect_inherits(scale_colour_discreterainbow(), "ScaleDiscrete")
  expect_equal(scale_colour_discreterainbow()$na.value, "#777777")

  expect_inherits(scale_color_discreterainbow(), "ggproto")
  expect_inherits(scale_color_discreterainbow(), "ScaleDiscrete")
  expect_equal(scale_color_discreterainbow()$na.value, "#777777")

  expect_inherits(scale_fill_discreterainbow(), "ggproto")
  expect_inherits(scale_fill_discreterainbow(), "ScaleDiscrete")
  expect_equal(scale_fill_discreterainbow()$na.value, "#777777")

  ## Smooth rainbow ------------------------------------------------------------
  expect_inherits(scale_colour_smoothrainbow(), "ggproto")
  expect_inherits(scale_colour_smoothrainbow(), "ScaleContinuous")
  expect_inherits(scale_colour_smoothrainbow(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_colour_smoothrainbow()$na.value, "#666666")

  expect_inherits(scale_color_smoothrainbow(), "ggproto")
  expect_inherits(scale_color_smoothrainbow(), "ScaleContinuous")
  expect_equal(scale_color_smoothrainbow()$na.value, "#666666")

  expect_inherits(scale_fill_smoothrainbow(), "ggproto")
  expect_inherits(scale_fill_smoothrainbow(), "ScaleContinuous")
  expect_inherits(scale_fill_smoothrainbow(discrete = TRUE), "ScaleDiscrete")
  expect_equal(scale_fill_smoothrainbow()$na.value, "#666666")
}
