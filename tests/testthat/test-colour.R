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
    expect_equal(length(colour(palettes[i])(n[i])), n[i])
    expect_type(attr(colour(palettes[i]), "type"), "character")
    expect_type(attr(colour(palettes[i]), "interpolate"), "logical")
    expect_type(attr(colour(palettes[i]), "missing"), "character")
    expect_type(attr(colour(palettes[i]), "max"), "integer")
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
