# Diverging color schemes ======================================================
test_that("broc", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_broc(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_broc(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_broc(), "ggproto")
  expect_s3_class(scale_colour_broc(), "ScaleContinuous")

  expect_s3_class(scale_color_broc(), "ggproto")
  expect_s3_class(scale_color_broc(), "ScaleContinuous")

  expect_s3_class(scale_fill_broc(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_broc(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_broc(), "ggproto")
  expect_s3_class(scale_fill_broc(), "ScaleContinuous")
})

test_that("cork", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_cork(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_cork(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_cork(), "ggproto")
  expect_s3_class(scale_colour_cork(), "ScaleContinuous")

  expect_s3_class(scale_color_cork(), "ggproto")
  expect_s3_class(scale_color_cork(), "ScaleContinuous")

  expect_s3_class(scale_fill_cork(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_cork(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_cork(), "ggproto")
  expect_s3_class(scale_fill_cork(), "ScaleContinuous")
})

test_that("vik", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_vik(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_vik(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_vik(), "ggproto")
  expect_s3_class(scale_colour_vik(), "ScaleContinuous")

  expect_s3_class(scale_color_vik(), "ggproto")
  expect_s3_class(scale_color_vik(), "ScaleContinuous")

  expect_s3_class(scale_fill_vik(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_vik(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_vik(), "ggproto")
  expect_s3_class(scale_fill_vik(), "ScaleContinuous")
})

test_that("lisbon", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_lisbon(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_lisbon(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_lisbon(), "ggproto")
  expect_s3_class(scale_colour_lisbon(), "ScaleContinuous")

  expect_s3_class(scale_color_lisbon(), "ggproto")
  expect_s3_class(scale_color_lisbon(), "ScaleContinuous")

  expect_s3_class(scale_fill_lisbon(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_lisbon(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_lisbon(), "ggproto")
  expect_s3_class(scale_fill_lisbon(), "ScaleContinuous")
})

test_that("tofino", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_tofino(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_tofino(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_tofino(), "ggproto")
  expect_s3_class(scale_colour_tofino(), "ScaleContinuous")

  expect_s3_class(scale_color_tofino(), "ggproto")
  expect_s3_class(scale_color_tofino(), "ScaleContinuous")

  expect_s3_class(scale_fill_tofino(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_tofino(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_tofino(), "ggproto")
  expect_s3_class(scale_fill_tofino(), "ScaleContinuous")
})

test_that("berlin", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_berlin(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_berlin(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_berlin(), "ggproto")
  expect_s3_class(scale_colour_berlin(), "ScaleContinuous")

  expect_s3_class(scale_color_berlin(), "ggproto")
  expect_s3_class(scale_color_berlin(), "ScaleContinuous")

  expect_s3_class(scale_fill_berlin(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_berlin(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_berlin(), "ggproto")
  expect_s3_class(scale_fill_berlin(), "ScaleContinuous")
})

test_that("roma", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_roma(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_roma(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_roma(), "ggproto")
  expect_s3_class(scale_colour_roma(), "ScaleContinuous")

  expect_s3_class(scale_color_roma(), "ggproto")
  expect_s3_class(scale_color_roma(), "ScaleContinuous")

  expect_s3_class(scale_fill_roma(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_roma(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_roma(), "ggproto")
  expect_s3_class(scale_fill_roma(), "ScaleContinuous")
})

test_that("bam", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_bam(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_bam(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_bam(), "ggproto")
  expect_s3_class(scale_colour_bam(), "ScaleContinuous")

  expect_s3_class(scale_color_bam(), "ggproto")
  expect_s3_class(scale_color_bam(), "ScaleContinuous")

  expect_s3_class(scale_fill_bam(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_bam(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_bam(), "ggproto")
  expect_s3_class(scale_fill_bam(), "ScaleContinuous")
})

test_that("vanimo", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_vanimo(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_vanimo(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_vanimo(), "ggproto")
  expect_s3_class(scale_colour_vanimo(), "ScaleContinuous")

  expect_s3_class(scale_color_vanimo(), "ggproto")
  expect_s3_class(scale_color_vanimo(), "ScaleContinuous")

  expect_s3_class(scale_fill_vanimo(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_vanimo(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_vanimo(), "ggproto")
  expect_s3_class(scale_fill_vanimo(), "ScaleContinuous")
})

# Sequential schemes ===========================================================
test_that("batlow", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_batlow(), "ggproto")
  expect_s3_class(scale_colour_batlow(), "ScaleContinuous")
  expect_s3_class(scale_colour_batlow(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_batlow(), "ggproto")
  expect_s3_class(scale_color_batlow(), "ScaleContinuous")

  expect_s3_class(scale_fill_batlow(), "ggproto")
  expect_s3_class(scale_fill_batlow(), "ScaleContinuous")
  expect_s3_class(scale_fill_batlow(discrete = TRUE), "ScaleDiscrete")
})

test_that("batlowW", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_batlowW(), "ggproto")
  expect_s3_class(scale_colour_batlowW(), "ScaleContinuous")
  expect_s3_class(scale_colour_batlowW(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_batlowW(), "ggproto")
  expect_s3_class(scale_color_batlowW(), "ScaleContinuous")

  expect_s3_class(scale_fill_batlowW(), "ggproto")
  expect_s3_class(scale_fill_batlowW(), "ScaleContinuous")
  expect_s3_class(scale_fill_batlowW(discrete = TRUE), "ScaleDiscrete")
})

test_that("batlowK", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_batlowK(), "ggproto")
  expect_s3_class(scale_colour_batlowK(), "ScaleContinuous")
  expect_s3_class(scale_colour_batlowK(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_batlowK(), "ggproto")
  expect_s3_class(scale_color_batlowK(), "ScaleContinuous")

  expect_s3_class(scale_fill_batlowK(), "ggproto")
  expect_s3_class(scale_fill_batlowK(), "ScaleContinuous")
  expect_s3_class(scale_fill_batlowK(discrete = TRUE), "ScaleDiscrete")
})

test_that("devon", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_devon(), "ggproto")
  expect_s3_class(scale_colour_devon(), "ScaleContinuous")
  expect_s3_class(scale_colour_devon(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_devon(), "ggproto")
  expect_s3_class(scale_color_devon(), "ScaleContinuous")

  expect_s3_class(scale_fill_devon(), "ggproto")
  expect_s3_class(scale_fill_devon(), "ScaleContinuous")
  expect_s3_class(scale_fill_devon(discrete = TRUE), "ScaleDiscrete")
})

test_that("lajolla", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_lajolla(), "ggproto")
  expect_s3_class(scale_colour_lajolla(), "ScaleContinuous")
  expect_s3_class(scale_colour_lajolla(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_lajolla(), "ggproto")
  expect_s3_class(scale_color_lajolla(), "ScaleContinuous")

  expect_s3_class(scale_fill_lajolla(), "ggproto")
  expect_s3_class(scale_fill_lajolla(), "ScaleContinuous")
  expect_s3_class(scale_fill_lajolla(discrete = TRUE), "ScaleDiscrete")
})

test_that("bamako", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_bamako(), "ggproto")
  expect_s3_class(scale_colour_bamako(), "ScaleContinuous")
  expect_s3_class(scale_colour_bamako(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_bamako(), "ggproto")
  expect_s3_class(scale_color_bamako(), "ScaleContinuous")

  expect_s3_class(scale_fill_bamako(), "ggproto")
  expect_s3_class(scale_fill_bamako(), "ScaleContinuous")
  expect_s3_class(scale_fill_bamako(discrete = TRUE), "ScaleDiscrete")
})

test_that("davos", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_davos(), "ggproto")
  expect_s3_class(scale_colour_davos(), "ScaleContinuous")
  expect_s3_class(scale_colour_davos(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_davos(), "ggproto")
  expect_s3_class(scale_color_davos(), "ScaleContinuous")

  expect_s3_class(scale_fill_davos(), "ggproto")
  expect_s3_class(scale_fill_davos(), "ScaleContinuous")
  expect_s3_class(scale_fill_davos(discrete = TRUE), "ScaleDiscrete")
})

test_that("bilbao", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_bilbao(), "ggproto")
  expect_s3_class(scale_colour_bilbao(), "ScaleContinuous")
  expect_s3_class(scale_colour_bilbao(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_bilbao(), "ggproto")
  expect_s3_class(scale_color_bilbao(), "ScaleContinuous")

  expect_s3_class(scale_fill_bilbao(), "ggproto")
  expect_s3_class(scale_fill_bilbao(), "ScaleContinuous")
  expect_s3_class(scale_fill_bilbao(discrete = TRUE), "ScaleDiscrete")
})

test_that("nuuk", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_nuuk(), "ggproto")
  expect_s3_class(scale_colour_nuuk(), "ScaleContinuous")
  expect_s3_class(scale_colour_nuuk(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_nuuk(), "ggproto")
  expect_s3_class(scale_color_nuuk(), "ScaleContinuous")

  expect_s3_class(scale_fill_nuuk(), "ggproto")
  expect_s3_class(scale_fill_nuuk(), "ScaleContinuous")
  expect_s3_class(scale_fill_nuuk(discrete = TRUE), "ScaleDiscrete")
})

test_that("oslo", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_oslo(), "ggproto")
  expect_s3_class(scale_colour_oslo(), "ScaleContinuous")
  expect_s3_class(scale_colour_oslo(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_oslo(), "ggproto")
  expect_s3_class(scale_color_oslo(), "ScaleContinuous")

  expect_s3_class(scale_fill_oslo(), "ggproto")
  expect_s3_class(scale_fill_oslo(), "ScaleContinuous")
  expect_s3_class(scale_fill_oslo(discrete = TRUE), "ScaleDiscrete")
})

test_that("grayC", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_grayC(), "ggproto")
  expect_s3_class(scale_colour_grayC(), "ScaleContinuous")
  expect_s3_class(scale_colour_grayC(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_grayC(), "ggproto")
  expect_s3_class(scale_color_grayC(), "ScaleContinuous")

  expect_s3_class(scale_fill_grayC(), "ggproto")
  expect_s3_class(scale_fill_grayC(), "ScaleContinuous")
  expect_s3_class(scale_fill_grayC(discrete = TRUE), "ScaleDiscrete")
})

test_that("hawaii", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_hawaii(), "ggproto")
  expect_s3_class(scale_colour_hawaii(), "ScaleContinuous")
  expect_s3_class(scale_colour_hawaii(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_hawaii(), "ggproto")
  expect_s3_class(scale_color_hawaii(), "ScaleContinuous")

  expect_s3_class(scale_fill_hawaii(), "ggproto")
  expect_s3_class(scale_fill_hawaii(), "ScaleContinuous")
  expect_s3_class(scale_fill_hawaii(discrete = TRUE), "ScaleDiscrete")
})

test_that("lapaz", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_lapaz(), "ggproto")
  expect_s3_class(scale_colour_lapaz(), "ScaleContinuous")
  expect_s3_class(scale_colour_lapaz(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_lapaz(), "ggproto")
  expect_s3_class(scale_color_lapaz(), "ScaleContinuous")

  expect_s3_class(scale_fill_lapaz(), "ggproto")
  expect_s3_class(scale_fill_lapaz(), "ScaleContinuous")
  expect_s3_class(scale_fill_lapaz(discrete = TRUE), "ScaleDiscrete")
})

test_that("tokyo", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_tokyo(), "ggproto")
  expect_s3_class(scale_colour_tokyo(), "ScaleContinuous")
  expect_s3_class(scale_colour_tokyo(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_tokyo(), "ggproto")
  expect_s3_class(scale_color_tokyo(), "ScaleContinuous")

  expect_s3_class(scale_fill_tokyo(), "ggproto")
  expect_s3_class(scale_fill_tokyo(), "ScaleContinuous")
  expect_s3_class(scale_fill_tokyo(discrete = TRUE), "ScaleDiscrete")
})

test_that("buda", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_buda(), "ggproto")
  expect_s3_class(scale_colour_buda(), "ScaleContinuous")
  expect_s3_class(scale_colour_buda(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_buda(), "ggproto")
  expect_s3_class(scale_color_buda(), "ScaleContinuous")

  expect_s3_class(scale_fill_buda(), "ggproto")
  expect_s3_class(scale_fill_buda(), "ScaleContinuous")
  expect_s3_class(scale_fill_buda(discrete = TRUE), "ScaleDiscrete")
})

test_that("acton", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_acton(), "ggproto")
  expect_s3_class(scale_colour_acton(), "ScaleContinuous")
  expect_s3_class(scale_colour_acton(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_acton(), "ggproto")
  expect_s3_class(scale_color_acton(), "ScaleContinuous")

  expect_s3_class(scale_fill_acton(), "ggproto")
  expect_s3_class(scale_fill_acton(), "ScaleContinuous")
  expect_s3_class(scale_fill_acton(discrete = TRUE), "ScaleDiscrete")
})

test_that("turku", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_turku(), "ggproto")
  expect_s3_class(scale_colour_turku(), "ScaleContinuous")
  expect_s3_class(scale_colour_turku(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_turku(), "ggproto")
  expect_s3_class(scale_color_turku(), "ScaleContinuous")

  expect_s3_class(scale_fill_turku(), "ggproto")
  expect_s3_class(scale_fill_turku(), "ScaleContinuous")
  expect_s3_class(scale_fill_turku(discrete = TRUE), "ScaleDiscrete")
})

test_that("imola", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_imola(), "ggproto")
  expect_s3_class(scale_colour_imola(), "ScaleContinuous")
  expect_s3_class(scale_colour_imola(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_imola(), "ggproto")
  expect_s3_class(scale_color_imola(), "ScaleContinuous")

  expect_s3_class(scale_fill_imola(), "ggproto")
  expect_s3_class(scale_fill_imola(), "ScaleContinuous")
  expect_s3_class(scale_fill_imola(discrete = TRUE), "ScaleDiscrete")
})

# Multi-Sequential color schemes ===============================================
test_that("oleron", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_oleron(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_oleron(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_oleron(), "ggproto")
  expect_s3_class(scale_colour_oleron(), "ScaleContinuous")

  expect_s3_class(scale_color_oleron(), "ggproto")
  expect_s3_class(scale_color_oleron(), "ScaleContinuous")

  expect_s3_class(scale_fill_oleron(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_oleron(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_oleron(), "ggproto")
  expect_s3_class(scale_fill_oleron(), "ScaleContinuous")
})

test_that("bukavu", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_bukavu(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_bukavu(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_bukavu(), "ggproto")
  expect_s3_class(scale_colour_bukavu(), "ScaleContinuous")

  expect_s3_class(scale_color_bukavu(), "ggproto")
  expect_s3_class(scale_color_bukavu(), "ScaleContinuous")

  expect_s3_class(scale_fill_bukavu(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_bukavu(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_bukavu(), "ggproto")
  expect_s3_class(scale_fill_bukavu(), "ScaleContinuous")
})

test_that("fes", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_fes(midpoint = 10), "ggproto")
  expect_s3_class(scale_colour_fes(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_colour_fes(), "ggproto")
  expect_s3_class(scale_colour_fes(), "ScaleContinuous")

  expect_s3_class(scale_color_fes(), "ggproto")
  expect_s3_class(scale_color_fes(), "ScaleContinuous")

  expect_s3_class(scale_fill_fes(midpoint = 10), "ggproto")
  expect_s3_class(scale_fill_fes(midpoint = 10), "ScaleContinuous")
  expect_s3_class(scale_fill_fes(), "ggproto")
  expect_s3_class(scale_fill_fes(), "ScaleContinuous")
})

# Cyclic schemes ===============================================================
test_that("brocO", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_brocO(), "ggproto")
  expect_s3_class(scale_colour_brocO(), "ScaleContinuous")
  expect_s3_class(scale_colour_brocO(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_brocO(), "ggproto")
  expect_s3_class(scale_color_brocO(), "ScaleContinuous")

  expect_s3_class(scale_fill_brocO(), "ggproto")
  expect_s3_class(scale_fill_brocO(), "ScaleContinuous")
  expect_s3_class(scale_fill_brocO(discrete = TRUE), "ScaleDiscrete")
})

test_that("corkO", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_corkO(), "ggproto")
  expect_s3_class(scale_colour_corkO(), "ScaleContinuous")
  expect_s3_class(scale_colour_corkO(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_corkO(), "ggproto")
  expect_s3_class(scale_color_corkO(), "ScaleContinuous")

  expect_s3_class(scale_fill_corkO(), "ggproto")
  expect_s3_class(scale_fill_corkO(), "ScaleContinuous")
  expect_s3_class(scale_fill_corkO(discrete = TRUE), "ScaleDiscrete")
})

test_that("vikO", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_vikO(), "ggproto")
  expect_s3_class(scale_colour_vikO(), "ScaleContinuous")
  expect_s3_class(scale_colour_vikO(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_vikO(), "ggproto")
  expect_s3_class(scale_color_vikO(), "ScaleContinuous")

  expect_s3_class(scale_fill_vikO(), "ggproto")
  expect_s3_class(scale_fill_vikO(), "ScaleContinuous")
  expect_s3_class(scale_fill_vikO(discrete = TRUE), "ScaleDiscrete")
})

test_that("romaO", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_romaO(), "ggproto")
  expect_s3_class(scale_colour_romaO(), "ScaleContinuous")
  expect_s3_class(scale_colour_romaO(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_romaO(), "ggproto")
  expect_s3_class(scale_color_romaO(), "ScaleContinuous")

  expect_s3_class(scale_fill_romaO(), "ggproto")
  expect_s3_class(scale_fill_romaO(), "ScaleContinuous")
  expect_s3_class(scale_fill_romaO(discrete = TRUE), "ScaleDiscrete")
})

test_that("bamO", {
  skip_if_not_installed("ggplot2")
  expect_s3_class(scale_colour_bamO(), "ggproto")
  expect_s3_class(scale_colour_bamO(), "ScaleContinuous")
  expect_s3_class(scale_colour_bamO(discrete = TRUE), "ScaleDiscrete")

  expect_s3_class(scale_color_bamO(), "ggproto")
  expect_s3_class(scale_color_bamO(), "ScaleContinuous")

  expect_s3_class(scale_fill_bamO(), "ggproto")
  expect_s3_class(scale_fill_bamO(), "ScaleContinuous")
  expect_s3_class(scale_fill_bamO(discrete = TRUE), "ScaleDiscrete")
})
