library(ggplot2)

ggplot2::ggplot(mpg, ggplot2::aes(displ, hwy)) +
  ggplot2::geom_point() +
  stat_chull(alpha = 0.5) +
  scale_colour_bright()

ggplot2::ggplot(mpg, ggplot2::aes(displ, hwy, colour = class)) +
  ggplot2::geom_point() +
  geom_chull() +
  scale_colour_bright()
