# Fabio Crameri's colour schemes
#' @include colour.R
NULL

# Diverging ====================================================================
#' Fabio Crameri's Diverging Colour Schemes for \pkg{ggplot2}
#'
#' Provides diverging colour scales from Fabio Crameri's *Scientific colour*.
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param midpoint A length-one [`numeric`] vector giving the midpoint
#'  (in data value) of the diverging scale. Defaults to `0`.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @param discrete A [`logical`] scalar: should the color scheme be
#'  used as a discrete scale?
#' @details
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'  Note that the default color for `NA` can be overridden by passing
#'  a value to [ggplot2::continuous_scale()].
#'
#'  Available schemes:
#'
#'  * `broc`
#'  * `cork`
#'  * `vik`
#'  * `lisbon`
#'  * `tofino`
#'  * `berlin`
#'  * `roma`
#'  * `bam`
#'  * `vanimo`
#'
#' @return A [continuous][ggplot2::continuous_scale] scale.
#' @references
#'  Crameri, F. (2018). Geodynamic diagnostics, scientific visualisation and
#'  StagLab 3.0. *Geosci. Model Dev.*, 11, 2541-2562.
#'  \doi{10.5194/gmd-11-2541-2018}
#'
#'  Crameri, F., Shephard, G. E. & Heron, P. J. (2020). The misuse of colour in
#'  science communication. *Nature Communications*, 11, 5444.
#'  \doi{10.1038/s41467-020-19160-7}
#' @source
#'  Crameri, F. (2021). Scientific colour maps. *Zenodo*, v7.0.
#'  \doi{10.5281/zenodo.4491293}
#' @example inst/examples/ex-crameri-diverging.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family diverging colour schemes
#' @family Fabio Crameri's colour schemes
#' @name scale_crameri_diverging
#' @rdname scale_crameri_diverging
NULL

## broc ------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_broc <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE,
                              aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "broc", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "broc", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_broc <- scale_colour_broc

#' @export
#' @rdname scale_crameri_diverging
scale_fill_broc <- function(..., reverse = FALSE, range = c(0, 1),
                            midpoint = 0, discrete = FALSE,
                            aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "broc", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "broc", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## cork ------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_cork <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE,
                              aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "cork", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "cork", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_cork <- scale_colour_cork

#' @export
#' @rdname scale_crameri_diverging
scale_fill_cork <- function(..., reverse = FALSE, range = c(0, 1),
                            midpoint = 0, discrete = FALSE,
                            aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "cork", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "cork", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## vik -------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_vik <- function(..., reverse = FALSE, range = c(0, 1),
                             midpoint = 0, discrete = FALSE,
                             aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "vik", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vik", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_vik <- scale_colour_vik

#' @export
#' @rdname scale_crameri_diverging
scale_fill_vik <- function(..., reverse = FALSE, range = c(0, 1),
                           midpoint = 0, discrete = FALSE,
                           aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "vik", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vik", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## lisbon ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_lisbon <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, discrete = FALSE,
                                aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "lisbon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lisbon", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_lisbon <- scale_colour_lisbon

#' @export
#' @rdname scale_crameri_diverging
scale_fill_lisbon <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE,
                              aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "lisbon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lisbon", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## tofino ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_tofino <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, discrete = FALSE,
                                aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "tofino", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tofino", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_tofino <- scale_colour_tofino

#' @export
#' @rdname scale_crameri_diverging
scale_fill_tofino <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE,
                              aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "tofino", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tofino", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## berlin ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_berlin <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, discrete = FALSE,
                                aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "berlin", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "berlin", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_berlin <- scale_colour_berlin

#' @export
#' @rdname scale_crameri_diverging
scale_fill_berlin <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE,
                              aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "berlin", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "berlin", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## roma ------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_roma <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE,
                              aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "roma", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "roma", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_roma <- scale_colour_roma

#' @export
#' @rdname scale_crameri_diverging
scale_fill_roma <- function(..., reverse = FALSE, range = c(0, 1),
                            midpoint = 0, discrete = FALSE,
                            aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "roma", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "roma", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## bam -------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_bam <- function(..., reverse = FALSE, range = c(0, 1),
                             midpoint = 0, discrete = FALSE,
                             aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "bam", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bam", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_bam <- scale_colour_bam

#' @export
#' @rdname scale_crameri_diverging
scale_fill_bam <- function(..., reverse = FALSE, range = c(0, 1),
                           midpoint = 0, discrete = FALSE,
                           aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bam", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bam", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

## vanimo ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_diverging
scale_colour_vanimo <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, discrete = FALSE,
                                aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "vanimo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vanimo", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_diverging
scale_color_vanimo <- scale_colour_vanimo

#' @export
#' @rdname scale_crameri_diverging
scale_fill_vanimo <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, discrete = FALSE,
                              aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "vanimo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vanimo", reverse = reverse, range = range,
                     midpoint = midpoint, ...)
  }
}

# Sequential ===================================================================
#' Fabio Crameri's Sequential Color Schemes for \pkg{ggplot2}
#'
#' Provides sequential color scales from Fabio Crameri's *Scientific colour*.
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @param discrete A [`logical`] scalar: should the color scheme be
#'  used as a discrete scale?
#' @details
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'
#'  Note that the default color for `NA` can be overridden by passing
#'  a value to [ggplot2::continuous_scale()].
#'
#'  Availble schemes:
#'
#'  * `batlow`
#'  * `batlowW`
#'  * `batlowK`
#'  * `devon`
#'  * `lajolla`
#'  * `bamako`
#'  * `davos`
#'  * `bilbao`
#'  * `nuuk`
#'  * `oslo`
#'  * `grayC`
#'  * `hawaii`
#'  * `lapaz`
#'  * `tokyo`
#'  * `buda`
#'  * `acton`
#'  * `turku`
#'  * `imola`
#'
#' @return A [continuous][ggplot2::continuous_scale] scale.
#' @references
#'  Crameri, F. (2018). Geodynamic diagnostics, scientific visualisation and
#'  StagLab 3.0. *Geosci. Model Dev.*, 11, 2541-2562.
#'  \doi{10.5194/gmd-11-2541-2018}
#'
#'  Crameri, F., Shephard, G. E. & Heron, P. J. (2020). The misuse of colour in
#'  science communication. *Nature Communications*, 11, 5444.
#'  \doi{10.1038/s41467-020-19160-7}
#' @source
#'  Crameri, F. (2021). Scientific colour maps. *Zenodo*, v7.0.
#'  \doi{10.5281/zenodo.4491293}
#' @example inst/examples/ex-crameri-sequential.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family sequential colour schemes
#' @family Fabio Crameri's colour schemes
#' @name scale_crameri_sequential
#' @rdname scale_crameri_sequential
NULL

## batlow ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_batlow <- function(..., reverse = FALSE, range = c(0, 1),
                                discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "batlow", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlow", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_batlow <- scale_colour_batlow

#' @export
#' @rdname scale_crameri_sequential
scale_fill_batlow <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlow", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlow", reverse = reverse,
                     range = range, ...)
  }
}

## batlowW ---------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_batlowW <- function(..., reverse = FALSE, range = c(0, 1),
                                 discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowW", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowW", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_batlowW <- scale_colour_batlowW

#' @export
#' @rdname scale_crameri_sequential
scale_fill_batlowW <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowW", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowW", reverse = reverse,
                     range = range, ...)
  }
}

## batlowK ---------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_batlowK <- function(..., reverse = FALSE, range = c(0, 1),
                                 discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowK", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowK", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_batlowK <- scale_colour_batlowK

#' @export
#' @rdname scale_crameri_sequential
scale_fill_batlowK <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowK", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowK", reverse = reverse,
                     range = range, ...)
  }
}

## devon -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_devon <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "devon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "devon", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_devon <- scale_colour_devon

#' @export
#' @rdname scale_crameri_sequential
scale_fill_devon <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "devon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "devon", reverse = reverse,
                     range = range, ...)
  }
}

## lajolla ---------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_lajolla <- function(..., reverse = FALSE, range = c(0, 1),
                                 discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "lajolla", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lajolla", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_lajolla <- scale_colour_lajolla

#' @export
#' @rdname scale_crameri_sequential
scale_fill_lajolla <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "lajolla", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lajolla", reverse = reverse,
                     range = range, ...)
  }
}

## bamako ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_bamako <- function(..., reverse = FALSE, range = c(0, 1),
                                discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "bamako", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamako", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_bamako <- scale_colour_bamako

#' @export
#' @rdname scale_crameri_sequential
scale_fill_bamako <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bamako", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamako", reverse = reverse,
                     range = range, ...)
  }
}

## davos -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_davos <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "davos", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "davos", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_davos <- scale_colour_davos

#' @export
#' @rdname scale_crameri_sequential
scale_fill_davos <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "davos", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "davos", reverse = reverse,
                     range = range, ...)
  }
}

## bilbao ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_bilbao <- function(..., reverse = FALSE, range = c(0, 1),
                                discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "bilbao", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bilbao", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_bilbao <- scale_colour_bilbao

#' @export
#' @rdname scale_crameri_sequential
scale_fill_bilbao <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bilbao", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bilbao", reverse = reverse,
                     range = range, ...)
  }
}

## nuuk ------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_nuuk <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "nuuk", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "nuuk", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_nuuk <- scale_colour_nuuk

#' @export
#' @rdname scale_crameri_sequential
scale_fill_nuuk <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "nuuk", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "nuuk", reverse = reverse,
                     range = range, ...)
  }
}

## oslo ------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_oslo <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "oslo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "oslo", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_oslo <- scale_colour_oslo

#' @export
#' @rdname scale_crameri_sequential
scale_fill_oslo <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "oslo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "oslo", reverse = reverse,
                     range = range, ...)
  }
}

## grayC -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_grayC <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "grayC", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "grayC", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_grayC <- scale_colour_grayC

#' @export
#' @rdname scale_crameri_sequential
scale_fill_grayC <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "grayC", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "grayC", reverse = reverse,
                     range = range, ...)
  }
}

## hawaii ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_hawaii <- function(..., reverse = FALSE, range = c(0, 1),
                                discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "hawaii", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "hawaii", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_hawaii <- scale_colour_hawaii

#' @export
#' @rdname scale_crameri_sequential
scale_fill_hawaii <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "hawaii", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "hawaii", reverse = reverse,
                     range = range, ...)
  }
}

## lapaz -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_lapaz <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "lapaz", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lapaz", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_lapaz <- scale_colour_lapaz

#' @export
#' @rdname scale_crameri_sequential
scale_fill_lapaz <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "lapaz", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lapaz", reverse = reverse,
                     range = range, ...)
  }
}

## tokyo -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_tokyo <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "tokyo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tokyo", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_tokyo <- scale_colour_tokyo

#' @export
#' @rdname scale_crameri_sequential
scale_fill_tokyo <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "tokyo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tokyo", reverse = reverse,
                     range = range, ...)
  }
}

## buda ------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_buda <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "buda", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "buda", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_buda <- scale_colour_buda

#' @export
#' @rdname scale_crameri_sequential
scale_fill_buda <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "buda", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "buda", reverse = reverse,
                     range = range, ...)
  }
}

## acton -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_acton <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "acton", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "acton", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_acton <- scale_colour_acton

#' @export
#' @rdname scale_crameri_sequential
scale_fill_acton <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "acton", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "acton", reverse = reverse,
                     range = range, ...)
  }
}

## turku -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_turku <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "turku", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "turku", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_turku <- scale_colour_turku

#' @export
#' @rdname scale_crameri_sequential
scale_fill_turku <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "turku", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "turku", reverse = reverse,
                     range = range, ...)
  }
}

## imola -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_sequential
scale_colour_imola <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "imola", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "imola", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_sequential
scale_color_imola <- scale_colour_imola

#' @export
#' @rdname scale_crameri_sequential
scale_fill_imola <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "imola", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "imola", reverse = reverse,
                     range = range, ...)
  }
}

# Multi Sequential =============================================================
#' Fabio Crameri's Multi-Sequential Color Schemes for \pkg{ggplot2}
#'
#' Provides multi-sequential color scales from Fabio Crameri's *Scientific
#' colour*.
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param midpoint A length-one [`numeric`] vector giving the midpoint
#'  (in data value) of the diverging scale. Defaults to `0`.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'
#'  Note that the default color for `NA` can be overridden by passing
#'  a value to [ggplot2::continuous_scale()].
#'
#'  Availble schemes:
#'
#'  * `oleron`
#'  * `bukavu`
#'  * `fes`
#'
#' @return A [continuous][ggplot2::continuous_scale] scale.
#' @references
#'  Crameri, F. (2018). Geodynamic diagnostics, scientific visualisation and
#'  StagLab 3.0. *Geosci. Model Dev.*, 11, 2541-2562.
#'  \doi{10.5194/gmd-11-2541-2018}
#'
#'  Crameri, F., Shephard, G. E. & Heron, P. J. (2020). The misuse of colour in
#'  science communication. *Nature Communications*, 11, 5444.
#'  \doi{10.1038/s41467-020-19160-7}
#' @source
#'  Crameri, F. (2021). Scientific colour maps. *Zenodo*, v7.0.
#'  \doi{10.5281/zenodo.4491293}
#' @example inst/examples/ex-crameri-multisequential.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family multi sequential colour schemes
#' @family Fabio Crameri's colour schemes
#' @name scale_crameri_mutlisequential
#' @rdname scale_crameri_mutlisequential
NULL

## oleron ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_mutlisequential
scale_colour_oleron <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, aesthetics = "colour") {
  scale_continuous(aesthetics, "oleron", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_crameri_mutlisequential
scale_color_oleron <- scale_colour_oleron

#' @export
#' @rdname scale_crameri_mutlisequential
scale_fill_oleron <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, aesthetics = "fill") {
  scale_continuous(aesthetics, "oleron", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

## bukavu ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_mutlisequential
scale_colour_bukavu <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, aesthetics = "colour") {
  scale_continuous(aesthetics, "bukavu", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_crameri_mutlisequential
scale_color_bukavu <- scale_colour_bukavu

#' @export
#' @rdname scale_crameri_mutlisequential
scale_fill_bukavu <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, aesthetics = "fill") {
  scale_continuous(aesthetics, "bukavu", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

## fes ----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_mutlisequential
scale_colour_fes <- function(..., reverse = FALSE, range = c(0, 1),
                             midpoint = 0, aesthetics = "colour") {
  scale_continuous(aesthetics, "fes", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_crameri_mutlisequential
scale_color_fes <- scale_colour_fes

#' @export
#' @rdname scale_crameri_mutlisequential
scale_fill_fes <- function(..., reverse = FALSE, range = c(0, 1),
                           midpoint = 0, aesthetics = "fill") {
  scale_continuous(aesthetics, "fes", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

# Cyclic =======================================================================
#' Fabio Crameri's Cyclic Color Schemes for \pkg{ggplot2}
#'
#' Provides cyclic color scales from Fabio Crameri's *Scientific colour*.
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @param discrete A [`logical`] scalar: should the color scheme be
#'  used as a discrete scale?
#' @details
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'
#'  Note that the default color for `NA` can be overridden by passing
#'  a value to [ggplot2::continuous_scale()].
#'
#'  Availble schemes:
#'
#'  * `brocO`
#'  * `corkO`
#'  * `vikO`
#'  * `romaO`
#'  * `bamO`
#'
#' @return A [continuous][ggplot2::continuous_scale] scale.
#' @references
#'  Crameri, F. (2018). Geodynamic diagnostics, scientific visualisation and
#'  StagLab 3.0. *Geosci. Model Dev.*, 11, 2541-2562.
#'  \doi{10.5194/gmd-11-2541-2018}
#'
#'  Crameri, F., Shephard, G. E. & Heron, P. J. (2020). The misuse of colour in
#'  science communication. *Nature Communications*, 11, 5444.
#'  \doi{10.1038/s41467-020-19160-7}
#' @source
#'  Crameri, F. (2021). Scientific colour maps. *Zenodo*, v7.0.
#'  \doi{10.5281/zenodo.4491293}
#' @example inst/examples/ex-crameri-diverging.R
#' @author N. Frerebeau
#' @family colour-blind safe colour schemes
#' @family cyclic colour schemes
#' @family Fabio Crameri's colour schemes
#' @name scale_crameri_cyclic
#' @rdname scale_crameri_cyclic
NULL


## brocO -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_cyclic
scale_colour_brocO <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "brocO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "brocO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_cyclic
scale_color_brocO <- scale_colour_brocO

#' @export
#' @rdname scale_crameri_cyclic
scale_fill_brocO <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "brocO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "brocO", reverse = reverse, range = range, ...)
  }
}

## corkO -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_cyclic
scale_colour_corkO <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "corkO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "corkO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_cyclic
scale_color_corkO <- scale_colour_corkO

#' @export
#' @rdname scale_crameri_cyclic
scale_fill_corkO <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "corkO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "corkO", reverse = reverse, range = range, ...)
  }
}

## vikO ------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_cyclic
scale_colour_vikO <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "vikO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vikO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_cyclic
scale_color_vikO <- scale_colour_vikO

#' @export
#' @rdname scale_crameri_cyclic
scale_fill_vikO <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "vikO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vikO", reverse = reverse, range = range, ...)
  }
}

## romaO -----------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_cyclic
scale_colour_romaO <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "romaO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "romaO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_cyclic
scale_color_romaO <- scale_colour_romaO

#' @export
#' @rdname scale_crameri_cyclic
scale_fill_romaO <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "romaO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "romaO", reverse = reverse, range = range, ...)
  }
}

## bamO ------------------------------------------------------------------------
#' @export
#' @rdname scale_crameri_cyclic
scale_colour_bamO <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "bamO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_cyclic
scale_color_bamO <- scale_colour_bamO

#' @export
#' @rdname scale_crameri_cyclic
scale_fill_bamO <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bamO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamO", reverse = reverse, range = range, ...)
  }
}
