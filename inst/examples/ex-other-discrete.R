library(ggplot2)

logic <- data.frame(
  x = rep(1:5, times = 5),
  y = rep(1:5, each = 5),
  values = sample(c(TRUE, FALSE), 25, TRUE)
)

ggplot2::ggplot(logic, ggplot2::aes(x, y, fill = values)) +
  ggplot2::geom_raster() +
  scale_fill_logical()
