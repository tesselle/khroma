library(ggplot2)

# Sequential data
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster() +
  khroma::scale_fill_YlOrBr()

ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster() +
  khroma::scale_fill_iridescent()

ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster() +
  khroma::scale_fill_smoothrainbow(reverse = TRUE)
