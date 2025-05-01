Sys.setenv(LANGUAGE = "en") # Force locale

# Rescale continuous vector ====================================================
expect_identical(
  khroma:::scale_range(5:10),
  c(0, 0.2, 0.4, 0.6, 0.8, 1)
)
expect_identical(
  khroma:::scale_midpoint(5:10, to = c(0, 5)),
  c(3.75, 4, 4.25, 4.5, 4.75, 5)
)

bw <- c("black", "white")
bgw <- c("black", "grey", "white")
lvl <- c("A", "A", "C", "B", "A", "B")

# Colors =======================================================================
## Color ramp ------------------------------------------------------------------
h <- 1:10
expect_identical(
  palette_color_picker(scheme = "BuRd")(h),
  c("#2166AC", "#3F8DC0", "#80B9D8", "#BBDAEA", "#E6EFF3",
    "#F9EAE1", "#FAC9B0", "#ED9576", "#D25849", "#B2182B")
)
expect_identical(
  palette_color_picker(scheme = "BuRd", midpoint = 2)(h),
  c("#E3EEF3", "#F7F7F7", "#FAE9DF", "#FDDBC7", "#F8C0A4",
    "#F4A582", "#E58267", "#D6604D", "#C33C3C", "#B2182B")
)
expect_error(palette_color_picker(scheme = "BuRd", midpoint = 2)(LETTERS))

expect_identical(
  palette_color_picker(scheme = "bright")(c("A", "B", "C", "D", "E", "F", "G")),
  c("#4477AA", "#EE6677", "#228833", "#CCBB44", "#66CCEE", "#AA3377", "#BBBBBB")
)
expect_warning(palette_color_picker(scheme = "bright")(LETTERS))
expect_warning(palette_color_picker(scheme = "bright")(c(1, 2, 3, 4, 5, 6, 7)))

## Continuous ------------------------------------------------------------------
expect_identical(
  palette_color_continuous(color("iridescent")(3))(c(1, 2, 3)),
  palette_color_continuous(color("iridescent"))(c(1, 2, 3))
)
expect_identical(
  palette_color_continuous()(c(1, 2, 3)),
  c("#FFFFE5", "#FB9A29", "#662506")
)
expect_identical(
  palette_color_continuous(bw)(c(0, 0.5, 1)),
  c("#000000", "#7F7F7F", "#FFFFFF")
)
expect_identical(
  palette_color_continuous(bw)(c(1, 2, 3)),
  c("#000000", "#7F7F7F", "#FFFFFF")
)
expect_identical(
  palette_color_continuous(bw)(c(1, NA, 3)),
  c("#000000", "#DDDDDD", "#FFFFFF")
)

expect_identical(
  palette_color_continuous(bw, c(1, 2, 10))(c(1, 2, 3)),
  c("#000000", "#1C1C1C", "#383838")
)
expect_identical(
  palette_color_continuous(rev(bw))(c(1, 2, 3)),
  rev(c("#000000", "#7F7F7F", "#FFFFFF"))
)

expect_error(palette_color_continuous()(LETTERS))
expect_warning(palette_color_continuous(bw, c(1, 2))(c(1, 2, 3)))
expect_identical(
  suppressWarnings(palette_color_continuous(bw, c(1, 2))(c(1, 2, 3))),
  c("#000000", "#FFFFFF", "#DDDDDD")
)

## Discrete --------------------------------------------------------------------
expect_identical(
  palette_color_discrete(color("vibrant")(6))(lvl),
  palette_color_discrete(color("vibrant"))(lvl)
)
expect_identical(
  palette_color_discrete(domain = LETTERS[1:23])(lvl),
  c("#E8ECFB", "#E8ECFB", "#CAACCB", "#D9CCE3", "#E8ECFB", "#D9CCE3")
)
expect_identical(
  palette_color_discrete(c("#4477AA", "#EE6677", "#228833"), domain = c("A", "B", "C"))(lvl),
  c("#4477AA", "#4477AA", "#228833", "#EE6677", "#4477AA", "#EE6677")
)
expect_identical(
  palette_color_discrete(c("#4477AA", "#EE6677", "#228833"), domain = c("D", "E", "F"))(lvl),
  c("#DDDDDD", "#DDDDDD", "#DDDDDD", "#DDDDDD", "#DDDDDD", "#DDDDDD")
)
expect_identical(
  palette_color_discrete(bgw, c("A", "B", "C"))(c(NA, NA, NA, NA, NA, NA)),
  c("#DDDDDD", "#DDDDDD", "#DDDDDD", "#DDDDDD", "#DDDDDD", "#DDDDDD")
)
expect_identical(
  palette_color_discrete(bgw, c("C", "B", "A"), ordered = FALSE)(lvl),
  c("black", "black", "white", "grey", "black", "grey")
)
expect_identical(
  palette_color_discrete(bgw, c("C", "B", "A"), ordered = TRUE)(lvl),
  c("white", "white", "black", "grey", "white", "grey")
)

named_colors <- c(B = "#4477AA", C = "#EE6677", A = "#228833")
expect_identical(palette_color_discrete(named_colors)(lvl),
                 c(A = "#228833", A = "#228833", C = "#EE6677",
                   B = "#4477AA", A = "#228833", B = "#4477AA"))

expect_warning(palette_color_discrete()(seq(0.1, 0.5, by = 0.1)))
expect_warning(palette_color_discrete(bw, LETTERS)(lvl))
expect_identical(
  suppressWarnings(palette_color_discrete(bw, LETTERS)(lvl)),
  c("black", "black", NA, "white", "black", "white")
)

# Symbols ======================================================================
expect_warning(palette_shape(NULL)(LETTERS))

expect_identical(palette_shape()(lvl),
                 c(16, 16, 15, 17, 16, 17))
expect_identical(palette_shape(c(1, 2, 3))(lvl),
                 c(1, 1, 3, 2, 1, 2))
expect_identical(palette_shape(c(1, 1, 1))(lvl),
                 c(1, 1, 1, 1, 1, 1))
expect_identical(palette_shape(c(1, 2))(lvl),
                 c(1, 1, NA, 2, 1, 2))
expect_identical(palette_shape(c(1))(lvl),
                 c(1, 1, NA, NA, 1, NA))

expect_identical(palette_shape(NULL, c("C", "B", "A"), ordered = FALSE)(lvl),
                 c(16, 16, 15, 17, 16, 17))
expect_identical(palette_shape(NULL, c("C", "B", "A"), ordered = TRUE)(lvl),
                 c(15, 15, 16, 17, 15, 17))

named_symbols <- c(B = 17, C = 15, A = 16)
expect_identical(palette_shape(named_symbols)(lvl),
                 c(A = 16, A = 16, C = 15, B = 17, A = 16, B = 17))

# Size =========================================================================
expect_error(palette_size_sequential()(lvl), "Discrete value supplied to continuous scale.")
expect_identical(min(palette_size_sequential(c(1, 6))(c(1, 2, 3))), 1)
expect_identical(max(palette_size_sequential(c(1, 6))(c(1, 2, 3))), 6)
expect_identical(palette_size_sequential(4)(c(1, 2, 3)), c(4, 4, 4))
expect_identical(palette_size_sequential(c(4, 5))(c(1, NA, 3)), c(4, NA, 5))
expect_identical(palette_size_sequential(c(1, 6))(c(-1, 0, 1, 2, 3)),
                 khroma:::scale_range(sqrt(khroma:::scale_range(c(-1, 0, 1, 2, 3))), to = c(1, 6)))

expect_error(palette_size_diverging()(lvl), "Discrete value supplied to continuous scale.")
expect_identical(palette_size_diverging(c(1, 3))(c(-1, 0, 1, 2, 3)),
                 khroma:::scale_range(sqrt(khroma:::scale_midpoint(abs(c(-1, 0, 1, 2, 3)))), to = c(1, 3)))
