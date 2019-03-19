\dontrun{
  library(ggplot2)

  # Qualitative data
  ggplot(mpg, aes(displ, hwy, colour = class)) +
    geom_point() +
    khroma::scale_colour_tol(palette = "bright")

  ggplot(diamonds, aes(clarity, fill = cut)) +
    geom_bar() +
    khroma::scale_fill_tol(palette = "vibrant")

  # Diverging data
  ggplot(economics, aes(psavert, pce, colour = unemploy)) +
    geom_point() +
    khroma::scale_color_tol(palette = "sunset")

  # Sequential data
  ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
    geom_raster() +
    khroma::scale_fill_tol(palette = "YlOrBr", reverse = TRUE)
}
