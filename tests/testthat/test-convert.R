# red, blue, green
rgb <- matrix(data = c(255, 0, 0, 0, 255, 0, 0, 0, 255),
              ncol = 3, dimnames = list(NULL, c("R", "G", "B")),
              byrow = TRUE)
cmyk <- matrix(data = c(0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0),
               ncol = 4, dimnames = list(NULL, c("C", "M", "Y", "K")),
               byrow = TRUE)
xyz <- matrix(data = c(0.412456, 0.212673, 0.019334,
                       0.357576, 0.715152, 0.119192,
                       0.180437, 0.072175, 0.950304),
              ncol = 3, dimnames = list(NULL, c("X", "Y", "Z")),
              byrow = TRUE)

test_that("RGB to CMYK", {
  expect_equal(RGB2CMYB(0, 0, 0), cbind(C = 0, M = 0, Y = 0, K = 1))
  expect_equal(RGB2CMYB(255, 255, 255), cbind(C = 0, M = 0, Y = 0, K = 0))
  expect_equal(RGB2CMYB(rgb[, 1], rgb[, 2], rgb[, 3]), cmyk)
  expect_equal(RGB2CMYB(rgb), cmyk)
})
test_that("CMYK to RGB", {
  expect_equal(CMYK2RGB(0, 0, 0, 1), cbind(R = 0, G = 0, B = 0))
  expect_equal(CMYK2RGB(0, 0, 0, 0), cbind(R = 255, G = 255, B = 255))
  expect_equal(CMYK2RGB(cmyk[, 1], cmyk[, 2], cmyk[, 3], cmyk[, 4]), rgb)
  expect_equal(CMYK2RGB(cmyk), rgb)
})
test_that("RGB to XYZ", {
  expect_equal(round(RGB2XYZ(255, 255, 255), 4),
               cbind(X = 0.9505, Y = 1.0000, Z = 1.0888))
  expect_equal(RGB2XYZ(0, 0, 0), cbind(X = 0, Y = 0, Z = 0))
  expect_equal(round(RGB2XYZ(rgb[, 1], rgb[, 2], rgb[, 3]), 3), round(xyz, 3))
  expect_equal(round(RGB2XYZ(rgb), 3), round(xyz, 3))
})
test_that("XYZ to RGB", {
  expect_equal(round(XYZ2RGB(1, 1, 1, max_rgb = 1), 6),
               cbind(R = 1.085157, G = 0.976922, B = 0.958809))
  expect_equal(XYZ2RGB(0, 0, 0), cbind(R = 0, G = 0, B = 0))
  expect_equal(round(XYZ2RGB(xyz[, 1], xyz[, 2], xyz[, 3]), 0), rgb)
  expect_equal(round(XYZ2RGB(xyz), 0), rgb)
})
