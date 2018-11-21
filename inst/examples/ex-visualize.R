library(FactoMineR)
library(ggplot2)
library(ggrepel)

# PCA
results <- PCA(economics, scale.unit = TRUE, graph = FALSE,
               ind.sup = 1:100, quanti.sup = 2, quali.sup = 1)
## Plot individuals
visualize(results, map = "ind", axes = c(1, 2))
## Plot supplementary individuals with ellipses
visualize(results, map = "ind", axes = c(1, 2), extra = "ind") +
  ggplot2::stat_ellipse() +
  khroma::scale_color_tol(palette = "bright")
## Plot variables with labels
visualize(results, map = "variables", axes = c(1, 2)) +
  ggrepel::geom_label_repel()
## Plot supplementary quantitative variables
visualize(results, map = "variables", axes = c(1, 2), extra = "quanti") +
  ggrepel::geom_label_repel()
## Plot eigenvalues
visualize(results, map = "eig", axes = c(1, 2))
## Plot cumulative percentage of variance
visualize(results, map = "variance", axes = c(1, 2))
