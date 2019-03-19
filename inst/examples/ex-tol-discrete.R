library(ggplot2)

# Qualitative data
ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point() +
  khroma::scale_colour_bright()

ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point() +
  khroma::scale_colour_vibrant()

ggplot(diamonds, aes(clarity, fill = cut)) +
  geom_bar() +
  khroma::scale_fill_muted()

ggplot(diamonds, aes(clarity, fill = cut)) +
  geom_bar() +
  khroma::scale_fill_light()

ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point() +
  khroma::scale_colour_rainbow()
