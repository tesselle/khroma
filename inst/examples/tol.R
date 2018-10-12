library("ggplot2")

# Qualitative data
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  scale_color_tol(palette = "bright")

ggplot(diamonds, aes(x = clarity, fill = cut)) +
  geom_bar() +
  scale_fill_tol(palette = "vibrant")

# Diverging data
ggplot(mtcars, aes(x = wt, y = mpg, color = qsec)) +
  geom_point() +
  scale_color_tol(palette = "PRGn", reverse = TRUE)

# Sequential data
ggplot(mtcars, aes(x = wt, y = mpg, color = hp)) +
  geom_point() +
  scale_color_tol(palette = "YlOrBr")

ggplot(mtcars, aes(x = wt, y = mpg, color = hp)) +
  geom_point() +
  scale_color_tol(palette = "smooth rainbow")
