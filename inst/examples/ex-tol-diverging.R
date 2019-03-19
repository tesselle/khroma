library(ggplot2)

# Diverging data
ggplot(economics, aes(psavert, pce, colour = unemploy)) +
  geom_point() +
  khroma::scale_color_sunset(midpoint = 12000)

ggplot(economics, aes(psavert, pce, colour = unemploy)) +
  geom_point() +
  khroma::scale_color_BuRd(midpoint = 9000)

ggplot(economics, aes(psavert, pce, colour = unemploy)) +
  geom_point() +
  khroma::scale_color_PRGn(midpoint = 6000)
