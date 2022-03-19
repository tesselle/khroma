test_that("ggplot2 rescaler", {
  skip_if_not_installed("scales")
  expect_type(mid_rescaler(mid = 5)(1:100), "double")
  expect_length(mid_rescaler(mid = 5)(1:100), 100)
  expect_equal(max(mid_rescaler(mid = 5)(1:100)), 1)
})
test_that("Colour ramp", {
  expect_snapshot(ramp(volcano, palette = "BuRd")(10), cran = TRUE)
  expect_snapshot(ramp(volcano, palette = "BuRd", midpoint = 160)(10), cran = TRUE)
})
test_that("Palette informations", {
  expect_snapshot(info(), cran = TRUE)
})
test_that("Palette colours", {
  palettes <- c("okabeito", "bright", "highcontrast", "vibrant", "muted",
                "mediumcontrast", "pale", "dark", "light",
                "sunset", "BuRd", "PRGn",
                "YlOrBr", "iridescent", "discreterainbow", "smoothrainbow",
                "stratigraphy", "soil", "land")
  n <- c(8, 7, 3, 7, 9, 6, 6, 6, 9, 11, 9, 9, 9, 23, 23, 34, 175, 24, 14)

  for (i in seq_len(length(palettes))) {
    expect_type(colour(palettes[i]), "closure")
    expect_type(color(palettes[i]), "closure")

    expect_type(colour(palettes[i])(n[i]), "character")
    expect_length(colour(palettes[i])(), n[i])
    expect_length(colour(palettes[i])(n[i]), n[i])
    expect_identical(attr(colour(palettes[i]), "palette"), palettes[i])
    expect_type(attr(colour(palettes[i]), "type"), "character")
    expect_type(attr(colour(palettes[i]), "interpolate"), "logical")
    expect_type(attr(colour(palettes[i]), "missing"), "character")
    expect_type(attr(colour(palettes[i]), "max"), "integer")
  }

  for (i in seq_len(7)) {
    expect_length(colour("bright")(i), i)
  }
})
test_that("Qualitative colours", {
  options(crayon.enabled = FALSE)

  palettes <- c("okabe ito", "bright", "high contrast", "vibrant", "muted",
                "medium contrast", "pale", "dark", "light",
                "stratigraphy", "soil", "land")
  n <- c(8, 7, 3, 7, 9, 6, 6, 6, 9, 175, 24, 14)
  for (i in seq_len(length(palettes))) {
    expect_named(colour(palettes[i], names = TRUE)(n[i]))
    expect_null(names(colour(palettes[i], names = FALSE)(n[i])))
    expect_error(colour(palettes[i])(500))
    expect_equal(
      unclass(colour(palettes[i], reverse = TRUE)(n[i])),
      rev(colour(palettes[i], reverse = FALSE)(n[i])),
      label = palettes[i],
      ignore_attr = TRUE
    )
  }

  expect_error(colour("bright", force = FALSE)(500))
  expect_type(colour("bright", force = TRUE)(500), "character")
})
test_that("Diverging colours", {
  options(crayon.enabled = FALSE)

  palettes <- c("sunset", "BuRd", "PRGn")
  n <- c(11, 9, 9)
  for (i in seq_len(length(palettes))) {
    expect_equal(
      unclass(colour(palettes[i], reverse = TRUE)(n[i])),
      rev(colour(palettes[i], reverse = FALSE)(n[i])),
      label = palettes[i],
      ignore_attr = TRUE
    )
    expect_null(names(colour(palettes[i])(n[i])))
  }
})
test_that("Sequential colours", {
  options(crayon.enabled = FALSE)

  palettes <- c("YlOrBr", "iridescent", "smooth rainbow")
  n <- c(9, 23,34)
  for (i in seq_len(length(palettes))) {
    expect_equal(
      unclass(colour(palettes[i], reverse = TRUE)(n[i])),
      rev(colour(palettes[i], reverse = FALSE)(n[i])),
      label = palettes[i],
      ignore_attr = TRUE
    )
    expect_null(names(colour(palettes[i])(n[i])))
  }
  expect_named(colour("discrete rainbow", names = TRUE)(23))
  expect_null(names(colour("discrete rainbow", names = FALSE)(23)))
})
test_that("Colour-blind", {
  palette <- colour("bright")
  # Protanopia
  pro <- convert(palette, mode = "protanopia")
  # Deuteranopia
  deu <- convert(palette, mode = "deuteranopia")
  # Tritanopia
  tri <- convert(palette, mode = "tritanopia")
  # Achromatopsia
  ach <- convert(palette, mode = "achromatopsia")

  expect_equal(pro(7), c(blue = "#7070AA", red = "#8A8A76", green = "#7D7D33",
                         yellow = "#BEBE43", cyan = "#BFBFEE", purple = "#575776",
                         grey = "#BBBABB"))
  expect_equal(deu(7), c(blue = "#6969AA", red = "#A4A470", green = "#727237",
                         yellow = "#C0C042", cyan = "#B2B2EF", purple = "#6D6D73",
                         grey = "#BBBABB"))
  expect_equal(tri(7), c(blue = "#307E7E", red = "#ED6868", green = "#3A8080",
                         yellow = "#D4B1B1", cyan = "#59D0D0", purple = "#A64040",
                         grey = "#BABBBA"))
  expect_equal(ach(7), c(blue = "#A4A4A4", red = "#787878", green = "#424243",
                         yellow = "#5F5F5F", cyan = "#E8E8E8", purple = "#737373",
                         grey = "#BABABB"))
})
test_that("Colour-blind attributes", {
  palette <- colour("okabe ito")
  protanopia <- convert(palette, mode = "protanopia")

  expect_true(attr(protanopia, "palette") == "okabeito")
  expect_true(attr(protanopia, "type") == "qualitative")
  expect_false(attr(protanopia, "interpolate"))
  expect_true(is.na(attr(protanopia, "missing")))
  expect_true(attr(protanopia, "max") == 8)
  expect_true(attr(protanopia, "mode") == "protanopia")
})
test_that("Print with crayon", {
  skip_if_not_installed("crayon")

  palette <- colour("okabe ito")
  col <- utils::capture.output(print(palette(8)))
  expect_type(col, "character")

  local_reproducible_output(crayon = TRUE)
  col <- utils::capture.output(print(palette(8)))
  expect_true(crayon::has_style(col))
})
test_that("Scale builder", {
  skip_if_not_installed("ggplot2")

  pal_colour <- scale_colour_picker(palette = "okabeito")
  expect_true(all.equal(pal_colour, scale_colour_okabeito()))

  pal_colour_rev <- scale_colour_picker(reverse = TRUE, palette = "okabeito")
  expect_true(all.equal(pal_colour_rev, scale_colour_okabeito(reverse = TRUE)))

  pal_fill <- scale_fill_picker(palette = "YlOrBr")
  expect_true(all.equal(pal_fill, scale_fill_YlOrBr()))

  pal_edge_colour <- scale_edge_colour_picker(palette = "okabeito")
  expect_true(all.equal(pal_edge_colour, scale_edge_colour_okabeito()))

  pal_edge_fill <- scale_edge_fill_picker(palette = "YlOrBr")
  expect_true(all.equal(pal_edge_fill, scale_edge_fill_YlOrBr()))
})
