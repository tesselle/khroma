library(ggplot2)

soil <- data.frame(
  name = c(
    "Acrisol", "Albeluvisol", "Andosol", "Anthrosol", "Arenosol", "Calcisol",
    "Cambisol", "Chernozem", "Cryosol", "Fluvisol", "Kastanozem", "Gleysol",
    "Gypsisol", "Histosol", "Leptosol", "Luvisol", "Phaeozem", "Planosol",
    "Podzol", "Regosol", "Solonchak", "Solonetz", "Umbrisol", "Vertisol"
  )
)

ggplot(soil, aes(fill = name)) +
  geom_rect(aes(xmin = rep(0, 24), xmax = rep(1, 24),
                ymin = 1:24, ymax = 1:24+1)) +
  scale_y_reverse() +
  khroma::scale_fill_soil(name = "Soil")
