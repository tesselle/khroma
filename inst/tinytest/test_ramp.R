# Color ramp ===================================================================
h <- 1:10
expect_identical(
  ramp(palette = "BuRd")(h),
  structure(
    c("#2166AC", "#3E8DC0", "#7FB9D7", "#BBD9E9", "#E5EEF3",
      "#F9E9E0", "#F9C8AF", "#EC9475", "#D15748", "#B2182B"),
    breaks = 1:10,
    class = "color_scheme"
  )
)
expect_identical(
  ramp(palette = "BuRd")(h, midpoint = 2),
  structure(
    c("#E3EDF3", "#F7F7F7", "#F9E8DE", "#FCDAC6", "#F8BFA3",
      "#F3A382", "#E48267", "#D55F4C", "#C33B3B", "#B2182B"),
    breaks = 1:10,
    class = "color_scheme"
  )
)
