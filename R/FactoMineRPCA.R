#' @include FactoMineR.R
NULL

# Visualize PCA results ========================================================
#' @export
visualize.PCA <- function(x, axes = c(1, 2),
                          map = c("individuals", "variables",
                                  "eigenvalues", "variance"),
                          extra = NULL, habillage = NULL) {
  # Validation
  map <- match.arg(map, several.ok = FALSE)
  if(!is.null(extra)) {
    extra <- match.arg(
      arg = extra,
      choices = c("individuals", "quantitative", "qualitative"),
      several.ok = TRUE)
  } else {
    extra <- FALSE
  }

  ind_sup <- (map == "individuals" & extra == "individuals" &
                length(x$ind.sup) != 0)
  quanti_sup <- (map == "variables" & extra == "quantitative" &
                   length(x$quanti.sup) != 0)
  quali_sup <- (map == "variables" & extra == "qualitative" &
                  length(x$quali.sup) != 0)

  graph <- switch(
    map,
    individuals = plotIndividuals(x, axes = axes, ind_sup = ind_sup,
                                  habillage = habillage),
    variables = plotVariables(x, axes = axes, quanti_sup = quanti_sup,
                              quali_sup = quali_sup),
    eigenvalues = plotEigenvalues(x, variance = FALSE),
    variance = plotEigenvalues(x, variance = TRUE)
  )
  return(graph)
}

printComponentVar.PCA <- function(x, axis = 1) {
  variance <- round(x$eig[axis, 2], 1)
  paste("PC", axis, " (", variance, "%)", sep = "")
}

# Individuals factor map =======================================================
plotIndividuals.PCA <- function(x, axes = c(1, 2), ind_sup = FALSE,
                                habillage = NULL) {
  # Get individual coordinates
  ind_coords <- as.data.frame(x$ind$coord)
  # Get row names
  ind_names <- rownames(ind_coords)

  sup_coords <- sup_names <- NULL
  extra <- rep("Ind.", nrow(ind_coords))
  if (ind_sup) {
    # Get supplementary individual coordinates
    sup_coords <- as.data.frame(x$ind.sup$coord)
    # Get row names
    sup_names <- rownames(sup_coords)
    extra <- c(extra, rep("Sup. ind.", nrow(sup_coords)))
    # If no habillage use a color scale for supplementary individuals
    # Else use a shape scale
  }

  data <- dplyr::bind_rows(ind_coords, sup_coords) %>%
    dplyr::select(axes) %>%
    dplyr::rename(x = 1, y = 2) %>%
    dplyr::mutate(label = c(ind_names, sup_names),
                  legend = extra)

  graph <- ggplot2::ggplot(data = data,
                           ggplot2::aes(x = x, y = y, color = legend)) +
    ggplot2::geom_point() +
    ggplot2::geom_vline(xintercept = 0, size = 0.5, linetype = "dashed") +
    ggplot2::geom_hline(yintercept = 0, size = 0.5, linetype = "dashed") +
    ggplot2::labs(x = printComponentVar(x, axes[1]),
                  y = printComponentVar(x, axes[2]))
  return(graph)
}

# Variables factor map =========================================================
plotVariables.PCA <- function(x, axes = c(1, 2), quanti_sup = FALSE,
                              quali_sup = FALSE) {
  # Get variables coordinates
  var_coords <- as.data.frame(x$var$coord)
  # Get row names
  var_names <- rownames(var_coords)

  quanti_coords <- quanti_names <- NULL
  quali_coords <- quali_names <- NULL
  extra <- rep("Var.", nrow(var_coords))
  if (quanti_sup) {
    # Get quantitative supplementary variable coordinates
    quanti_coords <- as.data.frame(x$quanti.sup$coord)
    # Get row names
    quanti_names <- rownames(quanti_coords)
    extra <- c(extra, rep("Quanti. sup.", nrow(quanti_coords)))
  }
  if (quali_sup) {
    # Get categorical supplementary variable coordinates
    quali_coords <- as.data.frame(x$quali.sup$coord)
    # Get row names
    quali_names <- rownames(quali_coords)
    extra <- c(extra, rep("Quali. sup.", nrow(quali_coords)))
  }

  # Bind coordinates
  data <- dplyr::bind_rows(var_coords, quanti_coords, quali_coords) %>%
    dplyr::select(axes) %>%
    dplyr::rename(x = 1, y = 2) %>%
    dplyr::mutate(label = unlist(list(var_names, quanti_names, quali_names)),
                  zero = rep(0, nrow(.)),
                  legend = extra)

  # ggplot2
  gg_unit <- gg_circle <- NULL
  if(x$call$scale.unit) {
    gg_unit <- ggplot2::coord_fixed()
    gg_circle <- ggplot2::geom_path(
      data = cbind.data.frame(
        x = 1 * cos(seq(0, 2 * pi, length = 200)),
        y = 1 * sin(seq(0, 2 * pi, length = 200))),
      ggplot2::aes(x = x, y = y), size = 0.5, inherit.aes = FALSE)
  }

  graph <- ggplot2::ggplot(
    data = data, ggplot2::aes(x = x, y = y,
                              label = label, colour = legend)) +
    ggplot2::geom_vline(xintercept = 0, size = 0.5, linetype = "dashed") +
    ggplot2::geom_hline(yintercept = 0, size = 0.5, linetype = "dashed") +
    gg_unit + gg_circle +
    ggplot2::geom_segment(
      ggplot2::aes(x = zero, xend = x, y = zero, yend = y),
      arrow = ggplot2::arrow(length = ggplot2::unit(0.2, "cm")),
      size = 0.5) +
    ggplot2::labs(x = printComponentVar(x, axes[1]),
                  y = printComponentVar(x, axes[2]))
  return(graph)
}

# Eigenvalues and cumulative variance ==========================================
plotEigenvalues.PCA <- function(x, variance = FALSE) {
  # Eigenvalues
  data <- as.data.frame(x$eig) %>%
    dplyr::mutate(PC = 1:nrow(.))

  gg_plot <- if (variance) {
    list(
      ggplot2::geom_line(
        ggplot2::aes(x = PC, y = `cumulative percentage of variance`)),
      ggplot2::geom_point(
        ggplot2::aes(x = PC, y = `cumulative percentage of variance`))
    )
  } else {
    ggplot2::geom_col(ggplot2::aes(x = PC, y = eigenvalue))
  }
  graph <- ggplot2::ggplot(data = data) +
    gg_plot

  return(graph)
}
