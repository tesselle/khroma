library(FactoMineR)
library(ggplot2)

# PCA
data(decathlon)
results <- PCA(decathlon, quanti.sup = 11:12, quali.sup = 13, graph = FALSE)
## Plot individuals and draw ellipses
visualize(results, map = "ind", axes = c(1, 2), group = 13) +
  ggplot2::stat_ellipse() +
  khroma::scale_color_bright()
## Plot variables with labels
visualize(results, map = "variables", axes = c(1, 2)) +
  ggplot2::geom_label()
## Plot supplementary variables
visualize(results, map = "variables", axes = c(1, 2),
          extra = c("quanti", "quali")) +
  ggplot2::geom_label()
## Plot eigenvalues
visualize(results, map = "eig", axes = c(1, 2))
## Plot cumulative percentage of variance
visualize(results, map = "variance", axes = c(1, 2))
