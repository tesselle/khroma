test_that("Compare", {
  skip_if_not_installed("spacesXYZ")

  col <- colour("okabe ito")(8)

  comp <- compare(col, metric = 2000, diag = FALSE, upper = FALSE)
  expect_snapshot(comp)
})
