options(crayon.enabled = FALSE)
pal <- info()

# Palette colours ==============================================================
for (i in seq_len(nrow(pal))) {
  i_pal <- pal$palette[i]
  i_max <- pal$max[i]

  expect_inherits(color(i_pal), "function")
  expect_inherits(color(i_pal)(i_max), "color_scheme")
  expect_length(color(i_pal)(), i_max)
  expect_length(color(i_pal)(i_max), i_max)
  expect_identical(attr(color(i_pal), "palette"), i_pal)
  expect_inherits(attr(color(i_pal), "type"), "character")
  expect_inherits(attr(color(i_pal), "interpolate"), "logical")
  expect_inherits(attr(color(i_pal), "missing"), "character")
  expect_inherits(attr(color(i_pal), "max"), "integer")
}

for (i in seq_len(7)) {
  expect_length(color("bright")(i), i)
}

expect_error(color("bright", force = FALSE)(500))
expect_length(color("bright", force = TRUE)(500), 500)

# Qualitative colours ==========================================================
pal_qual <- pal[pal$type == "qualitative", ]

for (i in seq_len(nrow(pal_qual))) {
  i_pal <- pal_qual$palette[i]
  i_max <- pal_qual$max[i]

  expect_inherits(color(i_pal)(i_max), "color_discrete")
  expect_false(is.null(names(color(i_pal, names = TRUE)(i_max))))
  expect_true(is.null(names(color(i_pal, names = FALSE)(i_max))))
  expect_error(color(i_pal)(500))
  expect_equivalent(
    unclass(color(i_pal, reverse = TRUE)(i_max)),
    rev(color(i_pal, reverse = FALSE)(i_max))
  )
}

# Diverging colours ============================================================
pal_div <- pal[pal$type == "diverging", ]

for (i in seq_len(nrow(pal_div))) {
  i_pal <- pal_div$palette[i]
  i_max <- pal_div$max[i]

  expect_inherits(color(i_pal)(i_max), "color_continuous")
  expect_equivalent(
    unclass(color(i_pal, reverse = TRUE)(i_max)),
    rev(color(i_pal, reverse = FALSE)(i_max))
  )
  expect_null(names(color(i_pal)(i_max)))
}

# Sequential colours ===========================================================
pal_seq <- pal[pal$type == "diverging", ]

for (i in seq_len(nrow(pal_seq))) {
  i_pal <- pal_seq$palette[i]
  i_max <- pal_seq$max[i]

  expect_inherits(color(i_pal)(i_max), "color_continuous")
  expect_equivalent(
    unclass(color(i_pal, reverse = TRUE)(i_max)),
    rev(color(i_pal, reverse = FALSE)(i_max))
  )
  expect_null(names(color(i_pal)(i_max)))
}

expect_false(is.null(names(color("discrete rainbow", names = TRUE)(23))))
expect_true(is.null(names(color("discrete rainbow", names = FALSE)(23))))
