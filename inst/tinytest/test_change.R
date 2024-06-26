# Colour-blind =================================================================
bright <- colour("bright", names = TRUE)
# Protanopia
pro <- change(bright, mode = "protanopia")
# Deuteranopia
deu <- change(bright, mode = "deuteranopia")
# Tritanopia
tri <- change(bright, mode = "tritanopia")
# Achromatopsia
ach <- change(bright, mode = "achromatopsia")

expect_equal(
  pro(7),
  c(blue = "#7070AA", red = "#8A8A76", green = "#7D7D33",
    yellow = "#BEBE43", cyan = "#BFBFEE", purple = "#575776",
    grey = "#BBBABB")
)
expect_equal(
  deu(7),
  c(blue = "#6969AA", red = "#A4A470", green = "#727237",
    yellow = "#C0C042", cyan = "#B2B2EF", purple = "#6D6D73",
    grey = "#BBBABB")
)
expect_equal(
  tri(7),
  c(blue = "#307E7E", red = "#ED6868", green = "#3A8080",
    yellow = "#D4B1B1", cyan = "#59D0D0", purple = "#A64040",
    grey = "#BABBBA")
)
expect_equal(
  ach(7),
  c(blue = "#A4A4A4", red = "#787878", green = "#424243",
    yellow = "#5F5F5F", cyan = "#E8E8E8", purple = "#737373",
    grey = "#BABABB")
)

expect_identical(attr(pro, "palette"), "bright")
expect_identical(attr(pro, "type"), "qualitative")
expect_identical(attr(pro, "missing"), NA_character_)
expect_identical(attr(pro, "interpolate"), FALSE)
expect_identical(attr(pro, "max"), 7L)
expect_identical(attr(pro, "mode"), "protanopia")
