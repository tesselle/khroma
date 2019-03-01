context("Colour")

test_that("Palette colours", {
  palettes <- c("bright", "vibrant", "muted", "light", "sunset", "BuRd", "PRGn",
                "YlOrBr", "rainbow", "smooth rainbow", "stratigraphy", "soil")
  n <- c(7, 7, 9, 9, 11, 9, 9, 9, 23, 34, 175, 24)

  for (i in 1:length(palettes)) {
    expect_is(colour(palettes[i]), "function")
    expect_is(color(palettes[i]), "function")

    expect_is(colour(palettes[i])(n[i]), "character")
    expect_equal(length(colour(palettes[i])(n[i])), n[i])
    expect_is(attr(colour(palettes[i]), "type"), "character")
    expect_is(attr(colour(palettes[i]), "interpolate"), "logical")
    expect_is(attr(colour(palettes[i]), "missing"), "logical")
    expect_is(attr(colour(palettes[i]), "max"), "integer")
  }
})
test_that("Qualitative colours", {
  palettes <- c("bright", "vibrant", "muted", "light", "rainbow",
                "stratigraphy", "soil")
  n <- c(7, 7, 9, 9, 23, 175, 24)
  for (i in 1:length(palettes)) {
    expect_named(colour(palettes[i], names = TRUE)(n[i]))
    expect_null(names(colour(palettes[i], names = FALSE)(n[i])))
    expect_error(colour(palettes[i])(500))
  }
})
