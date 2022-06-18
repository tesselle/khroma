library(ggplot2)

strati <- data.frame(
  name = c("Phanerozoic", "Paleozoic", "Cambrian", "Ordovician", "Silurian",
           "Devonian", "Carboniferous", "Mesozoic", "Triassic", "Cretaceous",
           "Jurassic", "Cenozoic", "Paleogene", "Neogene", "Quaternary"),
  type = c("Eon", "Era", "Period", "Period", "Period", "Period", "Period",
           "Era", "Period", "Period", "Period", "Era", "Period", "Period",
           "Period"),
  start = c(541, 541, 541, 485, 444, 419, 359,
            252, 252, 201, 145, 66, 66, 23, 2.6),
  end = c(0, 252, 485, 444, 419, 359, 252,
          66, 201, 145, 66, 2.6, 23, 2.6, 0)
)

## Keep chronological order in the legend
strati$name <- factor(strati$name, levels = rev(unique(strati$name)),
                      ordered = TRUE)

## Workaround: use `limits = force` to remove unused values
ggplot2::ggplot(strati) +
  ggplot2::geom_rect(ggplot2::aes(xmin = rep(0, 15), xmax = rep(1, 15),
                                  ymin = start, ymax = end, fill = name)) +
  ggplot2::scale_y_reverse() +
  ggplot2::facet_grid(. ~ type) +
  scale_fill_stratigraphy(name = "Stratigraphy", limits = force)
