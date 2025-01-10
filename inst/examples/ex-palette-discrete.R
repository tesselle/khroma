## Scatter plot
## Build color palette functions
bright <- c(versicolor = "#4477AA", virginica = "#EE6677", setosa = "#228833")
pal_color <- palette_color_discrete(colors = bright)

## Build symbol palette functions
symbols <- c(versicolor = 15, virginica = 16, setosa = 17)
pal_shapes <- palette_shape(symbols)

## Plot
plot(
  x = iris$Petal.Length,
  y = iris$Sepal.Length,
  pch = pal_shapes(iris$Species),
  col = pal_color(iris$Species),
  xlab = "Petal length",
  ylab = "Sepal length",
  panel.first = grid(),
  las = 1
)
legend("topleft", legend = names(bright), col = bright, pch = symbols)
