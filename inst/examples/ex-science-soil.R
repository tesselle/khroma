library(ggplot2)

soil <- data.frame(
  name = c(
    "Acrisol", "Albeluvisol", "Andosol", "Anthrosol", "Arenosol", "Calcisol",
    "Cambisol", "Chernozem", "Cryosol", "Fluvisol", "Kastanozem", "Gleysol",
    "Gypsisol", "Histosol", "Leptosol", "Luvisol", "Phaeozem", "Planosol",
    "Podzol", "Regosol", "Solonchak", "Solonetz", "Umbrisol", "Vertisol"
  )
)

ggplot2::ggplot(soil) +
  ggplot2::geom_rect(ggplot2::aes(xmin = rep(0, 24), xmax = rep(1, 24),
                                  ymin = 1:24, ymax = 1:24+1, fill = name)) +
  ggplot2::scale_y_reverse() +
  scale_fill_soil(name = "Soil")
