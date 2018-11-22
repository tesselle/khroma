library("ggplot2")

# Diverging data
ggplot(economics, aes(psavert, pce, colour = unemploy)) +
  geom_point() +
  scale_color_sunset()

ggplot(economics, aes(psavert, pce, colour = unemploy)) +
  geom_point() +
  scale_color_BuRd()

ggplot(economics, aes(psavert, pce, colour = unemploy)) +
  geom_point() +
  scale_color_PRGn()
