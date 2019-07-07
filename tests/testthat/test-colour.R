context("Colour")

test_that("Palette colours", {
  palettes <- c("bright", "contrast", "vibrant", "muted", "pale", "dark",
                "light", "sunset", "BuRd", "PRGn", "YlOrBr", "iridescent",
                "discrete rainbow", "smooth rainbow", "stratigraphy", "soil",
                "land")
  n <- c(7, 3, 7, 9, 6, 6, 9, 11, 9, 9, 9, 23, 23, 34, 175, 24, 14)

  for (i in seq_len(length(palettes))) {
    expect_type(colour(palettes[i]), "closure")
    expect_type(color(palettes[i]), "closure")

    expect_type(colour(palettes[i])(n[i]), "character")
    expect_length(colour(palettes[i])(n[i]), n[i])
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
  palettes <- c("bright", "contrast", "vibrant", "muted", "pale", "dark",
                "light", "stratigraphy", "soil", "land")
  n <- c(7, 3, 7, 9, 6, 6, 9, 175, 24, 14)
  for (i in seq_len(length(palettes))) {
    expect_named(colour(palettes[i], names = TRUE)(n[i]))
    expect_null(names(colour(palettes[i], names = FALSE)(n[i])))
    expect_error(colour(palettes[i])(500))
    expect_equal(
      colour(palettes[i], reverse = TRUE)(n[i]),
      rev(colour(palettes[i], reverse = FALSE)(n[i]))
    )
  }
})
test_that("Diverging colours", {
  palettes <- c("sunset", "BuRd", "PRGn")
  n <- c(11, 9, 9)
  for (i in seq_len(length(palettes))) {
    expect_equal(
      colour(palettes[i], reverse = TRUE)(n[i]),
      rev(colour(palettes[i], reverse = FALSE)(n[i]))
    )
    expect_null(names(colour(palettes[i])(n[i])))
  }
})
test_that("Sequential colours", {
  palettes <- c("YlOrBr", "iridescent", "smooth rainbow")
  n <- c(9, 23,34)
  for (i in seq_len(length(palettes))) {
    expect_equal(
      colour(palettes[i], reverse = TRUE)(n[i]),
      rev(colour(palettes[i], reverse = FALSE)(n[i]))
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

  expect_equivalent(pro(7), c("#6E6EAA", "#7D7D76", "#767633", "#BDBD43",
                              "#BABAEE", "#474776", "#BBBABB"))
  expect_equivalent(deu(7), c("#6666AB", "#929273", "#666635", "#C0C043",
                              "#AAAAF0", "#5A5A73", "#BBBABB"))
  expect_equivalent(tri(7), c("#3D7D7D", "#EB6868", "#2C7D7D", "#DBABAB",
                              "#61D0D0", "#A13B3B", "#BABBBA"))
  expect_equivalent(ach(7), c("#A2A2A2", "#777777", "#3B3B3C", "#535353",
                              "#E7E7E7", "#707070", "#BABABB"))
})
