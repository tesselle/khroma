## Build palette functions
bright <- c(versicolor = "#4477AA", virginica = "#EE6677", setosa = "#228833")
ramp_bright <- palette_color_discrete(colors = bright)

## Plot
plot(
  x = iris$Petal.Length,
  y = iris$Sepal.Length,
  pch = 16,
  col = ramp_bright(iris$Species),
  xlab = "Petal length",
  ylab = "Sepal length",
  panel.first = grid(),
  las = 1
)
legend("topleft", legend = names(bright), col = bright, pch = 16)
