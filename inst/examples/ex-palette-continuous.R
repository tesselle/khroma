## Visualize a simple DEM model
## Distribution of elevation values
elevation <- hist(volcano)

## Where are breaks?
elevation$breaks

## Build palette functions
BuRd <- color("BuRd")
ramp_BuRd <- palette_color_continuous(colors = BuRd(10))

## Plot image
image(volcano, col = ramp_BuRd(elevation$breaks))
legend("topright", legend = elevation$breaks, fill = ramp_BuRd(elevation$breaks))

## Scatter plot
## Build color palette functions
YlOrBr <- color("YlOrBr")
pal_color <- palette_color_continuous(colors = YlOrBr)

## Build symbol palette functions
pal_size <- palette_size_sequential(range = c(1, 3))

## Plot
plot(
  x = iris$Petal.Length,
  y = iris$Sepal.Length,
  pch = 16,
  col = pal_color(iris$Petal.Length),
  cex = pal_size(iris$Petal.Length),
  xlab = "Petal length",
  ylab = "Sepal length",
  panel.first = grid(),
  las = 1
)
