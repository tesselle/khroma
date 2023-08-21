if (requireNamespace("ggraph", quietly = TRUE)) {
  # Diverging color schemes ====================================================
  ## broc ----------------------------------------------------------------------
  expect_inherits(scale_edge_colour_broc(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_broc(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_broc(), "ggproto")
  expect_inherits(scale_edge_colour_broc(), "ScaleContinuous")

  expect_inherits(scale_edge_color_broc(), "ggproto")
  expect_inherits(scale_edge_color_broc(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_broc(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_broc(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_broc(), "ggproto")
  expect_inherits(scale_edge_fill_broc(), "ScaleContinuous")

  ## cork ----------------------------------------------------------------------
  expect_inherits(scale_edge_colour_cork(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_cork(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_cork(), "ggproto")
  expect_inherits(scale_edge_colour_cork(), "ScaleContinuous")

  expect_inherits(scale_edge_color_cork(), "ggproto")
  expect_inherits(scale_edge_color_cork(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_cork(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_cork(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_cork(), "ggproto")
  expect_inherits(scale_edge_fill_cork(), "ScaleContinuous")

  ## vik -----------------------------------------------------------------------
  expect_inherits(scale_edge_colour_vik(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_vik(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_vik(), "ggproto")
  expect_inherits(scale_edge_colour_vik(), "ScaleContinuous")

  expect_inherits(scale_edge_color_vik(), "ggproto")
  expect_inherits(scale_edge_color_vik(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_vik(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_vik(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_vik(), "ggproto")
  expect_inherits(scale_edge_fill_vik(), "ScaleContinuous")

  ## lisbon --------------------------------------------------------------------
  expect_inherits(scale_edge_colour_lisbon(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_lisbon(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_lisbon(), "ggproto")
  expect_inherits(scale_edge_colour_lisbon(), "ScaleContinuous")

  expect_inherits(scale_edge_color_lisbon(), "ggproto")
  expect_inherits(scale_edge_color_lisbon(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_lisbon(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_lisbon(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_lisbon(), "ggproto")
  expect_inherits(scale_edge_fill_lisbon(), "ScaleContinuous")

  ## tofino --------------------------------------------------------------------
  expect_inherits(scale_edge_colour_tofino(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_tofino(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_tofino(), "ggproto")
  expect_inherits(scale_edge_colour_tofino(), "ScaleContinuous")

  expect_inherits(scale_edge_color_tofino(), "ggproto")
  expect_inherits(scale_edge_color_tofino(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_tofino(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_tofino(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_tofino(), "ggproto")
  expect_inherits(scale_edge_fill_tofino(), "ScaleContinuous")

  ## berlin --------------------------------------------------------------------
  expect_inherits(scale_edge_colour_berlin(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_berlin(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_berlin(), "ggproto")
  expect_inherits(scale_edge_colour_berlin(), "ScaleContinuous")

  expect_inherits(scale_edge_color_berlin(), "ggproto")
  expect_inherits(scale_edge_color_berlin(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_berlin(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_berlin(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_berlin(), "ggproto")
  expect_inherits(scale_edge_fill_berlin(), "ScaleContinuous")

  ## roma ----------------------------------------------------------------------
  expect_inherits(scale_edge_colour_roma(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_roma(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_roma(), "ggproto")
  expect_inherits(scale_edge_colour_roma(), "ScaleContinuous")

  expect_inherits(scale_edge_color_roma(), "ggproto")
  expect_inherits(scale_edge_color_roma(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_roma(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_roma(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_roma(), "ggproto")
  expect_inherits(scale_edge_fill_roma(), "ScaleContinuous")

  ## bam -----------------------------------------------------------------------
  expect_inherits(scale_edge_colour_bam(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_bam(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_bam(), "ggproto")
  expect_inherits(scale_edge_colour_bam(), "ScaleContinuous")

  expect_inherits(scale_edge_color_bam(), "ggproto")
  expect_inherits(scale_edge_color_bam(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_bam(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_bam(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_bam(), "ggproto")
  expect_inherits(scale_edge_fill_bam(), "ScaleContinuous")

  ## vanimo --------------------------------------------------------------------
  expect_inherits(scale_edge_colour_vanimo(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_colour_vanimo(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_colour_vanimo(), "ggproto")
  expect_inherits(scale_edge_colour_vanimo(), "ScaleContinuous")

  expect_inherits(scale_edge_color_vanimo(), "ggproto")
  expect_inherits(scale_edge_color_vanimo(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_vanimo(midpoint = 10), "ggproto")
  expect_inherits(scale_edge_fill_vanimo(midpoint = 10), "ScaleContinuous")
  expect_inherits(scale_edge_fill_vanimo(), "ggproto")
  expect_inherits(scale_edge_fill_vanimo(), "ScaleContinuous")

  # Sequential schemes =========================================================
  ## batlow --------------------------------------------------------------------
  expect_inherits(scale_edge_colour_batlow(), "ggproto")
  expect_inherits(scale_edge_colour_batlow(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_batlow(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_batlow(), "ggproto")
  expect_inherits(scale_edge_color_batlow(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_batlow(), "ggproto")
  expect_inherits(scale_edge_fill_batlow(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_batlow(discrete = TRUE), "ScaleDiscrete")

  ## batlowW -------------------------------------------------------------------
  expect_inherits(scale_edge_colour_batlowW(), "ggproto")
  expect_inherits(scale_edge_colour_batlowW(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_batlowW(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_batlowW(), "ggproto")
  expect_inherits(scale_edge_color_batlowW(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_batlowW(), "ggproto")
  expect_inherits(scale_edge_fill_batlowW(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_batlowW(discrete = TRUE), "ScaleDiscrete")

  ## batlowK -------------------------------------------------------------------
  expect_inherits(scale_edge_colour_batlowK(), "ggproto")
  expect_inherits(scale_edge_colour_batlowK(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_batlowK(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_batlowK(), "ggproto")
  expect_inherits(scale_edge_color_batlowK(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_batlowK(), "ggproto")
  expect_inherits(scale_edge_fill_batlowK(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_batlowK(discrete = TRUE), "ScaleDiscrete")

  ## devon ---------------------------------------------------------------------
  expect_inherits(scale_edge_colour_devon(), "ggproto")
  expect_inherits(scale_edge_colour_devon(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_devon(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_devon(), "ggproto")
  expect_inherits(scale_edge_color_devon(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_devon(), "ggproto")
  expect_inherits(scale_edge_fill_devon(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_devon(discrete = TRUE), "ScaleDiscrete")

  ## lajolla -------------------------------------------------------------------
  expect_inherits(scale_edge_colour_lajolla(), "ggproto")
  expect_inherits(scale_edge_colour_lajolla(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_lajolla(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_lajolla(), "ggproto")
  expect_inherits(scale_edge_color_lajolla(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_lajolla(), "ggproto")
  expect_inherits(scale_edge_fill_lajolla(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_lajolla(discrete = TRUE), "ScaleDiscrete")

  ## bamako --------------------------------------------------------------------
  expect_inherits(scale_edge_colour_bamako(), "ggproto")
  expect_inherits(scale_edge_colour_bamako(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_bamako(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_bamako(), "ggproto")
  expect_inherits(scale_edge_color_bamako(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_bamako(), "ggproto")
  expect_inherits(scale_edge_fill_bamako(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_bamako(discrete = TRUE), "ScaleDiscrete")

  ## davos ---------------------------------------------------------------------
  expect_inherits(scale_edge_colour_davos(), "ggproto")
  expect_inherits(scale_edge_colour_davos(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_davos(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_davos(), "ggproto")
  expect_inherits(scale_edge_color_davos(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_davos(), "ggproto")
  expect_inherits(scale_edge_fill_davos(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_davos(discrete = TRUE), "ScaleDiscrete")

  ## bilbao --------------------------------------------------------------------
  expect_inherits(scale_edge_colour_bilbao(), "ggproto")
  expect_inherits(scale_edge_colour_bilbao(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_bilbao(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_bilbao(), "ggproto")
  expect_inherits(scale_edge_color_bilbao(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_bilbao(), "ggproto")
  expect_inherits(scale_edge_fill_bilbao(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_bilbao(discrete = TRUE), "ScaleDiscrete")

  ## nuuk ----------------------------------------------------------------------
  expect_inherits(scale_edge_colour_nuuk(), "ggproto")
  expect_inherits(scale_edge_colour_nuuk(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_nuuk(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_nuuk(), "ggproto")
  expect_inherits(scale_edge_color_nuuk(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_nuuk(), "ggproto")
  expect_inherits(scale_edge_fill_nuuk(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_nuuk(discrete = TRUE), "ScaleDiscrete")

  ## oslo ----------------------------------------------------------------------
  expect_inherits(scale_edge_colour_oslo(), "ggproto")
  expect_inherits(scale_edge_colour_oslo(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_oslo(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_oslo(), "ggproto")
  expect_inherits(scale_edge_color_oslo(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_oslo(), "ggproto")
  expect_inherits(scale_edge_fill_oslo(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_oslo(discrete = TRUE), "ScaleDiscrete")

  ## grayC ---------------------------------------------------------------------
  expect_inherits(scale_edge_colour_grayC(), "ggproto")
  expect_inherits(scale_edge_colour_grayC(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_grayC(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_grayC(), "ggproto")
  expect_inherits(scale_edge_color_grayC(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_grayC(), "ggproto")
  expect_inherits(scale_edge_fill_grayC(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_grayC(discrete = TRUE), "ScaleDiscrete")

  ## hawaii --------------------------------------------------------------------
  expect_inherits(scale_edge_colour_hawaii(), "ggproto")
  expect_inherits(scale_edge_colour_hawaii(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_hawaii(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_hawaii(), "ggproto")
  expect_inherits(scale_edge_color_hawaii(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_hawaii(), "ggproto")
  expect_inherits(scale_edge_fill_hawaii(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_hawaii(discrete = TRUE), "ScaleDiscrete")

  ## lapaz ---------------------------------------------------------------------
  expect_inherits(scale_edge_colour_lapaz(), "ggproto")
  expect_inherits(scale_edge_colour_lapaz(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_lapaz(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_lapaz(), "ggproto")
  expect_inherits(scale_edge_color_lapaz(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_lapaz(), "ggproto")
  expect_inherits(scale_edge_fill_lapaz(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_lapaz(discrete = TRUE), "ScaleDiscrete")

  ## tokyo ---------------------------------------------------------------------
  expect_inherits(scale_edge_colour_tokyo(), "ggproto")
  expect_inherits(scale_edge_colour_tokyo(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_tokyo(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_tokyo(), "ggproto")
  expect_inherits(scale_edge_color_tokyo(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_tokyo(), "ggproto")
  expect_inherits(scale_edge_fill_tokyo(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_tokyo(discrete = TRUE), "ScaleDiscrete")

  ## buda ----------------------------------------------------------------------
  expect_inherits(scale_edge_colour_buda(), "ggproto")
  expect_inherits(scale_edge_colour_buda(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_buda(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_buda(), "ggproto")
  expect_inherits(scale_edge_color_buda(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_buda(), "ggproto")
  expect_inherits(scale_edge_fill_buda(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_buda(discrete = TRUE), "ScaleDiscrete")

  ## acton ---------------------------------------------------------------------
  expect_inherits(scale_edge_colour_acton(), "ggproto")
  expect_inherits(scale_edge_colour_acton(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_acton(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_acton(), "ggproto")
  expect_inherits(scale_edge_color_acton(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_acton(), "ggproto")
  expect_inherits(scale_edge_fill_acton(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_acton(discrete = TRUE), "ScaleDiscrete")

  ## turku ---------------------------------------------------------------------
  expect_inherits(scale_edge_colour_turku(), "ggproto")
  expect_inherits(scale_edge_colour_turku(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_turku(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_turku(), "ggproto")
  expect_inherits(scale_edge_color_turku(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_turku(), "ggproto")
  expect_inherits(scale_edge_fill_turku(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_turku(discrete = TRUE), "ScaleDiscrete")

  ## imola ---------------------------------------------------------------------
  expect_inherits(scale_edge_colour_imola(), "ggproto")
  expect_inherits(scale_edge_colour_imola(), "ScaleContinuous")
  expect_inherits(scale_edge_colour_imola(discrete = TRUE), "ScaleDiscrete")

  expect_inherits(scale_edge_color_imola(), "ggproto")
  expect_inherits(scale_edge_color_imola(), "ScaleContinuous")

  expect_inherits(scale_edge_fill_imola(), "ggproto")
  expect_inherits(scale_edge_fill_imola(), "ScaleContinuous")
  expect_inherits(scale_edge_fill_imola(discrete = TRUE), "ScaleDiscrete")
}
