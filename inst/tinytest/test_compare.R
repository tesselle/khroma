# Compare ======================================================================
if (requireNamespace("spacesXYZ", quietly = TRUE)) {
  col <- colour("okabe ito")(8)

  comp <- compare(col, metric = 2000, diag = FALSE, upper = FALSE)
  expect_equal_to_reference(comp, file = "_snaps/compare.rds")
}
