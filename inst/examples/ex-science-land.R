library(ggplot2)

land <- data.frame(
  name = c(
    "water", "evergreen needleleaf forest", "deciduous needleleaf forest",
    "mixed forest", "evergreen broadleaf forest", "deciduous broadleaf forest",
    "woodland", "wooded grassland", "grassland", "cropland", "closed shrubland",
    "open shrubland", "bare ground", "urban and built"
  )
)

ggplot(land, aes(fill = name)) +
  geom_rect(aes(xmin = rep(0, 14), xmax = rep(1, 14),
                ymin = 1:14, ymax = 1:14+1)) +
  scale_y_reverse() +
  khroma::scale_fill_land(name = "land")
