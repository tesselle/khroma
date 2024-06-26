# Fabio Crameri's color schemes
#' @include color.R
NULL

# Diverging ====================================================================
## broc ------------------------------------------------------------------------
#' Fabio Crameri's *broc* Diverging Color Scheme
#'
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
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_broc
#' @rdname scale_crameri_broc
NULL

#' @export
#' @rdname scale_crameri_broc
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
#' @rdname scale_crameri_broc
scale_color_broc <- scale_colour_broc

#' @export
#' @rdname scale_crameri_broc
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

#' @export
#' @rdname scale_crameri_broc
scale_edge_colour_broc <- function(..., reverse = FALSE, range = c(0, 1),
                                   midpoint = 0, discrete = FALSE,
                                   aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "broc", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "broc", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_broc
scale_edge_color_broc <- scale_edge_colour_broc

#' @export
#' @rdname scale_crameri_broc
scale_edge_fill_broc <- function(..., reverse = FALSE, range = c(0, 1),
                                 midpoint = 0, discrete = FALSE,
                                 aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "broc", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "broc", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

## cork ------------------------------------------------------------------------
#' Fabio Crameri's *cork* Diverging Color Scheme
#'
#' @inheritParams scale_crameri_broc
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_cork
#' @rdname scale_crameri_cork
NULL

#' @export
#' @rdname scale_crameri_cork
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
#' @rdname scale_crameri_cork
scale_color_cork <- scale_colour_cork

#' @export
#' @rdname scale_crameri_cork
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

#' @export
#' @rdname scale_crameri_cork
scale_edge_colour_cork <- function(..., reverse = FALSE, range = c(0, 1),
                                   midpoint = 0, discrete = FALSE,
                                   aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "cork", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "cork", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_cork
scale_edge_color_cork <- scale_edge_colour_cork

#' @export
#' @rdname scale_crameri_cork
scale_edge_fill_cork <- function(..., reverse = FALSE, range = c(0, 1),
                                 midpoint = 0, discrete = FALSE,
                                 aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "cork", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "cork", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

## vik -------------------------------------------------------------------------
#' Fabio Crameri's *vik* Diverging Color Scheme
#'
#' @inheritParams scale_crameri_broc
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_vik
#' @rdname scale_crameri_vik
NULL

#' @export
#' @rdname scale_crameri_vik
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
#' @rdname scale_crameri_vik
scale_color_vik <- scale_colour_vik

#' @export
#' @rdname scale_crameri_vik
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

#' @export
#' @rdname scale_crameri_vik
scale_edge_colour_vik <- function(..., reverse = FALSE, range = c(0, 1),
                                  midpoint = 0, discrete = FALSE,
                                  aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "vik", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vik", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_vik
scale_edge_color_vik <- scale_edge_colour_vik

#' @export
#' @rdname scale_crameri_vik
scale_edge_fill_vik <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, discrete = FALSE,
                                aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "vik", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vik", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

## lisbon ----------------------------------------------------------------------
#' Fabio Crameri's *lisbon* Diverging Color Scheme
#'
#' @inheritParams scale_crameri_broc
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_lisbon
#' @rdname scale_crameri_lisbon
NULL

#' @export
#' @rdname scale_crameri_lisbon
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
#' @rdname scale_crameri_lisbon
scale_color_lisbon <- scale_colour_lisbon

#' @export
#' @rdname scale_crameri_lisbon
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

#' @export
#' @rdname scale_crameri_lisbon
scale_edge_colour_lisbon <- function(..., reverse = FALSE, range = c(0, 1),
                                     midpoint = 0, discrete = FALSE,
                                     aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "lisbon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lisbon", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_lisbon
scale_edge_color_lisbon <- scale_edge_colour_lisbon

#' @export
#' @rdname scale_crameri_lisbon
scale_edge_fill_lisbon <- function(..., reverse = FALSE, range = c(0, 1),
                                   midpoint = 0, discrete = FALSE,
                                   aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "lisbon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lisbon", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

## tofino ----------------------------------------------------------------------
#' Fabio Crameri's *tofino* Diverging Color Scheme
#'
#' @inheritParams scale_crameri_broc
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_tofino
#' @rdname scale_crameri_tofino
NULL

#' @export
#' @rdname scale_crameri_tofino
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
#' @rdname scale_crameri_tofino
scale_color_tofino <- scale_colour_tofino

#' @export
#' @rdname scale_crameri_tofino
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

#' @export
#' @rdname scale_crameri_tofino
scale_edge_colour_tofino <- function(..., reverse = FALSE, range = c(0, 1),
                                     midpoint = 0, discrete = FALSE,
                                     aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "tofino", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tofino", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_tofino
scale_edge_color_tofino <- scale_edge_colour_tofino

#' @export
#' @rdname scale_crameri_tofino
scale_edge_fill_tofino <- function(..., reverse = FALSE, range = c(0, 1),
                                   midpoint = 0, discrete = FALSE,
                                   aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "tofino", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tofino", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

## berlin ----------------------------------------------------------------------
#' Fabio Crameri's *berlin* Diverging Color Scheme
#'
#' @inheritParams scale_crameri_broc
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_berlin
#' @rdname scale_crameri_berlin
NULL

#' @export
#' @rdname scale_crameri_berlin
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
#' @rdname scale_crameri_berlin
scale_color_berlin <- scale_colour_berlin

#' @export
#' @rdname scale_crameri_berlin
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

#' @export
#' @rdname scale_crameri_berlin
scale_edge_colour_berlin <- function(..., reverse = FALSE, range = c(0, 1),
                                     midpoint = 0, discrete = FALSE,
                                     aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "berlin", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "berlin", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_berlin
scale_edge_color_berlin <- scale_edge_colour_berlin

#' @export
#' @rdname scale_crameri_berlin
scale_edge_fill_berlin <- function(..., reverse = FALSE, range = c(0, 1),
                                   midpoint = 0, discrete = FALSE,
                                   aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "berlin", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "berlin", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

## roma ------------------------------------------------------------------------
#' Fabio Crameri's *roma* Diverging Color Scheme
#'
#' @inheritParams scale_crameri_broc
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_roma
#' @rdname scale_crameri_roma
NULL

#' @export
#' @rdname scale_crameri_roma
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
#' @rdname scale_crameri_roma
scale_color_roma <- scale_colour_roma

#' @export
#' @rdname scale_crameri_roma
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

#' @export
#' @rdname scale_crameri_roma
scale_edge_colour_roma <- function(..., reverse = FALSE, range = c(0, 1),
                                   midpoint = 0, discrete = FALSE,
                                   aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "roma", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "roma", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_roma
scale_edge_color_roma <- scale_edge_colour_roma

#' @export
#' @rdname scale_crameri_roma
scale_edge_fill_roma <- function(..., reverse = FALSE, range = c(0, 1),
                                 midpoint = 0, discrete = FALSE,
                                 aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "roma", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "roma", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

## bam -------------------------------------------------------------------------
#' Fabio Crameri's *bam* Diverging Color Scheme
#'
#' @inheritParams scale_crameri_broc
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_bam
#' @rdname scale_crameri_bam
NULL

#' @export
#' @rdname scale_crameri_bam
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
#' @rdname scale_crameri_bam
scale_color_bam <- scale_colour_bam

#' @export
#' @rdname scale_crameri_bam
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

#' @export
#' @rdname scale_crameri_bam
scale_edge_colour_bam <- function(..., reverse = FALSE, range = c(0, 1),
                                  midpoint = 0, discrete = FALSE,
                                  aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "bam", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bam", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_bam
scale_edge_color_bam <- scale_edge_colour_bam

#' @export
#' @rdname scale_crameri_bam
scale_edge_fill_bam <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, discrete = FALSE,
                                aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bam", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bam", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

## vanimo ----------------------------------------------------------------------
#' Fabio Crameri's *vanimo* Diverging Color Scheme
#'
#' @inheritParams scale_crameri_broc
#' @inheritSection crameri Diverging Color Schemes
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
#' @family diverging color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_vanimo
#' @rdname scale_crameri_vanimo
NULL

#' @export
#' @rdname scale_crameri_vanimo
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
#' @rdname scale_crameri_vanimo
scale_color_vanimo <- scale_colour_vanimo

#' @export
#' @rdname scale_crameri_vanimo
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

#' @export
#' @rdname scale_crameri_vanimo
scale_edge_colour_vanimo <- function(..., reverse = FALSE, range = c(0, 1),
                                     midpoint = 0, discrete = FALSE,
                                     aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "vanimo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vanimo", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

#' @export
#' @rdname scale_crameri_vanimo
scale_edge_color_vanimo <- scale_edge_colour_vanimo

#' @export
#' @rdname scale_crameri_vanimo
scale_edge_fill_vanimo <- function(..., reverse = FALSE, range = c(0, 1),
                                   midpoint = 0, discrete = FALSE,
                                   aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "vanimo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vanimo", guide = "edge_colourbar",
                     reverse = reverse, range = range, midpoint = midpoint, ...)
  }
}

# Sequential ===================================================================
## batlow ----------------------------------------------------------------------
#' Fabio Crameri's *batlow* Sequential Color Scheme
#'
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @param discrete A [`logical`] scalar: should the color scheme be
#'  used as a discrete scale?
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_batlow
#' @rdname scale_crameri_batlow
NULL

#' @export
#' @rdname scale_crameri_batlow
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
#' @rdname scale_crameri_batlow
scale_color_batlow <- scale_colour_batlow

#' @export
#' @rdname scale_crameri_batlow
scale_fill_batlow <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlow", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlow", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_batlow
scale_edge_colour_batlow <- function(..., reverse = FALSE, range = c(0, 1),
                                     discrete = FALSE,
                                     aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "batlow", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlow", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_batlow
scale_edge_color_batlow <- scale_edge_colour_batlow

#' @export
#' @rdname scale_crameri_batlow
scale_edge_fill_batlow <- function(..., reverse = FALSE, range = c(0, 1),
                                   discrete = FALSE,
                                   aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlow", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlow", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## batlowW ---------------------------------------------------------------------
#' Fabio Crameri's *batlowW* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_batlowW
#' @rdname scale_crameri_batlowW
NULL

#' @export
#' @rdname scale_crameri_batlowW
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
#' @rdname scale_crameri_batlowW
scale_color_batlowW <- scale_colour_batlowW

#' @export
#' @rdname scale_crameri_batlowW
scale_fill_batlowW <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowW", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowW", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_batlowW
scale_edge_colour_batlowW <- function(..., reverse = FALSE, range = c(0, 1),
                                      discrete = FALSE,
                                      aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowW", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowW", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_batlowW
scale_edge_color_batlowW <- scale_edge_colour_batlowW

#' @export
#' @rdname scale_crameri_batlowW
scale_edge_fill_batlowW <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowW", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowW", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## batlowK ---------------------------------------------------------------------
#' Fabio Crameri's *batlowK* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_batlowK
#' @rdname scale_crameri_batlowK
NULL

#' @export
#' @rdname scale_crameri_batlowK
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
#' @rdname scale_crameri_batlowK
scale_color_batlowK <- scale_colour_batlowK

#' @export
#' @rdname scale_crameri_batlowK
scale_fill_batlowK <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowK", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowK", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_batlowK
scale_edge_colour_batlowK <- function(..., reverse = FALSE, range = c(0, 1),
                                      discrete = FALSE,
                                      aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowK", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowK", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_batlowK
scale_edge_color_batlowK <- scale_edge_colour_batlowK

#' @export
#' @rdname scale_crameri_batlowK
scale_edge_fill_batlowK <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "batlowK", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "batlowK", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## devon -----------------------------------------------------------------------
#' Fabio Crameri's *devon* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_devon
#' @rdname scale_crameri_devon
NULL

#' @export
#' @rdname scale_crameri_devon
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
#' @rdname scale_crameri_devon
scale_color_devon <- scale_colour_devon

#' @export
#' @rdname scale_crameri_devon
scale_fill_devon <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "devon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "devon", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_devon
scale_edge_colour_devon <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "devon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "devon", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_devon
scale_edge_color_devon <- scale_edge_colour_devon

#' @export
#' @rdname scale_crameri_devon
scale_edge_fill_devon <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE,
                                  aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "devon", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "devon", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## lajolla ---------------------------------------------------------------------
#' Fabio Crameri's *lajolla* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_lajolla
#' @rdname scale_crameri_lajolla
NULL

#' @export
#' @rdname scale_crameri_lajolla
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
#' @rdname scale_crameri_lajolla
scale_color_lajolla <- scale_colour_lajolla

#' @export
#' @rdname scale_crameri_lajolla
scale_fill_lajolla <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "lajolla", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lajolla", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_lajolla
scale_edge_colour_lajolla <- function(..., reverse = FALSE, range = c(0, 1),
                                      discrete = FALSE,
                                      aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "lajolla", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lajolla", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_lajolla
scale_edge_color_lajolla <- scale_edge_colour_lajolla

#' @export
#' @rdname scale_crameri_lajolla
scale_edge_fill_lajolla <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "lajolla", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lajolla", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## bamako ----------------------------------------------------------------------
#' Fabio Crameri's *bamako* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_bamako
#' @rdname scale_crameri_bamako
NULL

#' @export
#' @rdname scale_crameri_bamako
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
#' @rdname scale_crameri_bamako
scale_color_bamako <- scale_colour_bamako

#' @export
#' @rdname scale_crameri_bamako
scale_fill_bamako <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bamako", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamako", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_bamako
scale_edge_colour_bamako <- function(..., reverse = FALSE, range = c(0, 1),
                                     discrete = FALSE,
                                     aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "bamako", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamako", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_bamako
scale_edge_color_bamako <- scale_edge_colour_bamako

#' @export
#' @rdname scale_crameri_bamako
scale_edge_fill_bamako <- function(..., reverse = FALSE, range = c(0, 1),
                                   discrete = FALSE,
                                   aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bamako", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamako", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## davos -----------------------------------------------------------------------
#' Fabio Crameri's *davos* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_davos
#' @rdname scale_crameri_davos
NULL

#' @export
#' @rdname scale_crameri_davos
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
#' @rdname scale_crameri_davos
scale_color_davos <- scale_colour_davos

#' @export
#' @rdname scale_crameri_davos
scale_fill_davos <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "davos", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "davos", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_davos
scale_edge_colour_davos <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "davos", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "davos", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_davos
scale_edge_color_davos <- scale_edge_colour_davos

#' @export
#' @rdname scale_crameri_davos
scale_edge_fill_davos <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE,
                                  aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "davos", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "davos", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## bilbao ----------------------------------------------------------------------
#' Fabio Crameri's *bilbao* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_bilbao
#' @rdname scale_crameri_bilbao
NULL

#' @export
#' @rdname scale_crameri_bilbao
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
#' @rdname scale_crameri_bilbao
scale_color_bilbao <- scale_colour_bilbao

#' @export
#' @rdname scale_crameri_bilbao
scale_fill_bilbao <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bilbao", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bilbao", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_bilbao
scale_edge_colour_bilbao <- function(..., reverse = FALSE, range = c(0, 1),
                                     discrete = FALSE,
                                     aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "bilbao", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bilbao", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_bilbao
scale_edge_color_bilbao <- scale_edge_colour_bilbao

#' @export
#' @rdname scale_crameri_bilbao
scale_edge_fill_bilbao <- function(..., reverse = FALSE, range = c(0, 1),
                                   discrete = FALSE,
                                   aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bilbao", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bilbao", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## nuuk ------------------------------------------------------------------------
#' Fabio Crameri's *nuuk* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_nuuk
#' @rdname scale_crameri_nuuk
NULL

#' @export
#' @rdname scale_crameri_nuuk
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
#' @rdname scale_crameri_nuuk
scale_color_nuuk <- scale_colour_nuuk

#' @export
#' @rdname scale_crameri_nuuk
scale_fill_nuuk <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "nuuk", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "nuuk", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_nuuk
scale_edge_colour_nuuk <- function(..., reverse = FALSE, range = c(0, 1),
                                   discrete = FALSE,
                                   aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "nuuk", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "nuuk", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_nuuk
scale_edge_color_nuuk <- scale_edge_colour_nuuk

#' @export
#' @rdname scale_crameri_nuuk
scale_edge_fill_nuuk <- function(..., reverse = FALSE, range = c(0, 1),
                                 discrete = FALSE,
                                 aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "nuuk", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "nuuk", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## oslo ------------------------------------------------------------------------
#' Fabio Crameri's *oslo* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_oslo
#' @rdname scale_crameri_oslo
NULL

#' @export
#' @rdname scale_crameri_oslo
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
#' @rdname scale_crameri_oslo
scale_color_oslo <- scale_colour_oslo

#' @export
#' @rdname scale_crameri_oslo
scale_fill_oslo <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "oslo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "oslo", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_oslo
scale_edge_colour_oslo <- function(..., reverse = FALSE, range = c(0, 1),
                                   discrete = FALSE,
                                   aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "oslo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "oslo", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_oslo
scale_edge_color_oslo <- scale_edge_colour_oslo

#' @export
#' @rdname scale_crameri_oslo
scale_edge_fill_oslo <- function(..., reverse = FALSE, range = c(0, 1),
                                 discrete = FALSE,
                                 aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "oslo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "oslo", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## grayC -----------------------------------------------------------------------
#' Fabio Crameri's *grayC* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_grayC
#' @rdname scale_crameri_grayC
NULL

#' @export
#' @rdname scale_crameri_grayC
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
#' @rdname scale_crameri_grayC
scale_color_grayC <- scale_colour_grayC

#' @export
#' @rdname scale_crameri_grayC
scale_fill_grayC <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "grayC", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "grayC", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_grayC
scale_edge_colour_grayC <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "grayC", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "grayC", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_grayC
scale_edge_color_grayC <- scale_edge_colour_grayC

#' @export
#' @rdname scale_crameri_grayC
scale_edge_fill_grayC <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE,
                                  aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "grayC", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "grayC", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## hawaii ----------------------------------------------------------------------
#' Fabio Crameri's *hawaii* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_hawaii
#' @rdname scale_crameri_hawaii
NULL

#' @export
#' @rdname scale_crameri_hawaii
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
#' @rdname scale_crameri_hawaii
scale_color_hawaii <- scale_colour_hawaii

#' @export
#' @rdname scale_crameri_hawaii
scale_fill_hawaii <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "hawaii", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "hawaii", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_hawaii
scale_edge_colour_hawaii <- function(..., reverse = FALSE, range = c(0, 1),
                                     discrete = FALSE,
                                     aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "hawaii", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "hawaii", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_hawaii
scale_edge_color_hawaii <- scale_edge_colour_hawaii

#' @export
#' @rdname scale_crameri_hawaii
scale_edge_fill_hawaii <- function(..., reverse = FALSE, range = c(0, 1),
                                   discrete = FALSE,
                                   aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "hawaii", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "hawaii", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## lapaz -----------------------------------------------------------------------
#' Fabio Crameri's *lapaz* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_lapaz
#' @rdname scale_crameri_lapaz
NULL

#' @export
#' @rdname scale_crameri_lapaz
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
#' @rdname scale_crameri_lapaz
scale_color_lapaz <- scale_colour_lapaz

#' @export
#' @rdname scale_crameri_lapaz
scale_fill_lapaz <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "lapaz", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lapaz", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_lapaz
scale_edge_colour_lapaz <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "lapaz", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lapaz", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_lapaz
scale_edge_color_lapaz <- scale_edge_colour_lapaz

#' @export
#' @rdname scale_crameri_lapaz
scale_edge_fill_lapaz <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE,
                                  aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "lapaz", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "lapaz", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## tokyo -----------------------------------------------------------------------
#' Fabio Crameri's *tokyo* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_tokyo
#' @rdname scale_crameri_tokyo
NULL

#' @export
#' @rdname scale_crameri_tokyo
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
#' @rdname scale_crameri_tokyo
scale_color_tokyo <- scale_colour_tokyo

#' @export
#' @rdname scale_crameri_tokyo
scale_fill_tokyo <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "tokyo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tokyo", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_tokyo
scale_edge_colour_tokyo <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "tokyo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tokyo", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_tokyo
scale_edge_color_tokyo <- scale_edge_colour_tokyo

#' @export
#' @rdname scale_crameri_tokyo
scale_edge_fill_tokyo <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE,
                                  aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "tokyo", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "tokyo", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## buda ------------------------------------------------------------------------
#' Fabio Crameri's *buda* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_buda
#' @rdname scale_crameri_buda
NULL

#' @export
#' @rdname scale_crameri_buda
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
#' @rdname scale_crameri_buda
scale_color_buda <- scale_colour_buda

#' @export
#' @rdname scale_crameri_buda
scale_fill_buda <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "buda", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "buda", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_buda
scale_edge_colour_buda <- function(..., reverse = FALSE, range = c(0, 1),
                                   discrete = FALSE,
                                   aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "buda", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "buda", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_buda
scale_edge_color_buda <- scale_edge_colour_buda

#' @export
#' @rdname scale_crameri_buda
scale_edge_fill_buda <- function(..., reverse = FALSE, range = c(0, 1),
                                 discrete = FALSE,
                                 aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "buda", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "buda", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## acton -----------------------------------------------------------------------
#' Fabio Crameri's *acton* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_acton
#' @rdname scale_crameri_acton
NULL

#' @export
#' @rdname scale_crameri_acton
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
#' @rdname scale_crameri_acton
scale_color_acton <- scale_colour_acton

#' @export
#' @rdname scale_crameri_acton
scale_fill_acton <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "acton", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "acton", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_acton
scale_edge_colour_acton <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "acton", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "acton", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_acton
scale_edge_color_acton <- scale_edge_colour_acton

#' @export
#' @rdname scale_crameri_acton
scale_edge_fill_acton <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE,
                                  aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "acton", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "acton", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## turku -----------------------------------------------------------------------
#' Fabio Crameri's *turku* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_turku
#' @rdname scale_crameri_turku
NULL

#' @export
#' @rdname scale_crameri_turku
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
#' @rdname scale_crameri_turku
scale_color_turku <- scale_colour_turku

#' @export
#' @rdname scale_crameri_turku
scale_fill_turku <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "turku", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "turku", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_turku
scale_edge_colour_turku <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "turku", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "turku", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_turku
scale_edge_color_turku <- scale_edge_colour_turku

#' @export
#' @rdname scale_crameri_turku
scale_edge_fill_turku <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE,
                                  aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "turku", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "turku", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

## imola -----------------------------------------------------------------------
#' Fabio Crameri's *imola* Sequential Color Scheme
#'
#' @inheritParams scale_crameri_batlow
#' @inheritSection crameri Sequential Color Schemes
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
#' @family sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_imola
#' @rdname scale_crameri_imola
NULL

#' @export
#' @rdname scale_crameri_imola
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
#' @rdname scale_crameri_imola
scale_color_imola <- scale_colour_imola

#' @export
#' @rdname scale_crameri_imola
scale_fill_imola <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "imola", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "imola", reverse = reverse,
                     range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_imola
scale_edge_colour_imola <- function(..., reverse = FALSE, range = c(0, 1),
                                    discrete = FALSE,
                                    aesthetics = "edge_colour") {
  if (discrete) {
    scale_discrete(aesthetics, "imola", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "imola", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_imola
scale_edge_color_imola <- scale_edge_colour_imola

#' @export
#' @rdname scale_crameri_imola
scale_edge_fill_imola <- function(..., reverse = FALSE, range = c(0, 1),
                                  discrete = FALSE,
                                  aesthetics = "edge_fill") {
  if (discrete) {
    scale_discrete(aesthetics, "imola", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "imola", guide = "edge_colourbar",
                     reverse = reverse, range = range, ...)
  }
}

# Multi Sequential =============================================================
## oleron ----------------------------------------------------------------------
#' Fabio Crameri's *oleron* Multi-Sequential Color Scheme
#'
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param midpoint A length-one [`numeric`] vector giving the midpoint
#'  (in data value) of the diverging scale. Defaults to `0`.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @inheritSection crameri Sequential Color Schemes
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
#' @family multi sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_oleron
#' @rdname scale_crameri_oleron
NULL

#' @export
#' @rdname scale_crameri_oleron
scale_colour_oleron <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, aesthetics = "colour") {
  scale_continuous(aesthetics, "oleron", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_crameri_oleron
scale_color_oleron <- scale_colour_oleron

#' @export
#' @rdname scale_crameri_oleron
scale_fill_oleron <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, aesthetics = "fill") {
  scale_continuous(aesthetics, "oleron", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

## bukavu ----------------------------------------------------------------------
#' Fabio Crameri's *bukavu* Multi-Sequential Color Scheme
#'
#' @inheritParams scale_crameri_oleron
#' @inheritSection crameri Sequential Color Schemes
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
#' @family multi sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_bukavu
#' @rdname scale_crameri_bukavu
NULL

#' @export
#' @rdname scale_crameri_bukavu
scale_colour_bukavu <- function(..., reverse = FALSE, range = c(0, 1),
                                midpoint = 0, aesthetics = "colour") {
  scale_continuous(aesthetics, "bukavu", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_crameri_bukavu
scale_color_bukavu <- scale_colour_bukavu

#' @export
#' @rdname scale_crameri_bukavu
scale_fill_bukavu <- function(..., reverse = FALSE, range = c(0, 1),
                              midpoint = 0, aesthetics = "fill") {
  scale_continuous(aesthetics, "bukavu", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

## fes -------------------------------------------------------------------------
#' Fabio Crameri's *fes* Multi-Sequential Color Scheme
#'
#' @inheritParams scale_crameri_oleron
#' @inheritSection crameri Sequential Color Schemes
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
#' @family multi sequential color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_fes
#' @rdname scale_crameri_fes
NULL

#' @export
#' @rdname scale_crameri_fes
scale_colour_fes <- function(..., reverse = FALSE, range = c(0, 1),
                             midpoint = 0, aesthetics = "colour") {
  scale_continuous(aesthetics, "fes", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

#' @export
#' @rdname scale_crameri_fes
scale_color_fes <- scale_colour_fes

#' @export
#' @rdname scale_crameri_fes
scale_fill_fes <- function(..., reverse = FALSE, range = c(0, 1),
                           midpoint = 0, aesthetics = "fill") {
  scale_continuous(aesthetics, "fes", reverse = reverse, range = range,
                   midpoint = midpoint, ...)
}

# Cyclic =======================================================================
## brocO -----------------------------------------------------------------------
#' Fabio Crameri's *brocO* Cyclic Color Scheme
#'
#' @param ... Arguments passed to [ggplot2::continuous_scale()].
#' @param reverse A [`logical`] scalar. Should the resulting
#'  vector of colors be reversed?
#' @param range A length-two [`numeric`] vector specifying the
#' fraction of the scheme's color domain to keep.
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @param discrete A [`logical`] scalar: should the color scheme be
#'  used as a discrete scale?
#' @inheritSection crameri Diverging Color Schemes
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
#' @family cyclic color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_brocO
#' @rdname scale_crameri_brocO
NULL

#' @export
#' @rdname scale_crameri_brocO
scale_colour_brocO <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "brocO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "brocO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_brocO
scale_color_brocO <- scale_colour_brocO

#' @export
#' @rdname scale_crameri_brocO
scale_fill_brocO <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "brocO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "brocO", reverse = reverse, range = range, ...)
  }
}

## corkO -----------------------------------------------------------------------
#' Fabio Crameri's *corkO* Cyclic Color Scheme
#'
#' @inheritParams scale_crameri_brocO
#' @inheritSection crameri Diverging Color Schemes
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
#' @family cyclic color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_corkO
#' @rdname scale_crameri_corkO
NULL

#' @export
#' @rdname scale_crameri_corkO
scale_colour_corkO <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "corkO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "corkO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_corkO
scale_color_corkO <- scale_colour_corkO

#' @export
#' @rdname scale_crameri_corkO
scale_fill_corkO <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "corkO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "corkO", reverse = reverse, range = range, ...)
  }
}

## vikO ------------------------------------------------------------------------
#' Fabio Crameri's *vikO* Cyclic Color Scheme
#'
#' @inheritParams scale_crameri_brocO
#' @inheritSection crameri Diverging Color Schemes
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
#' @family cyclic color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_vikO
#' @rdname scale_crameri_vikO
NULL

#' @export
#' @rdname scale_crameri_vikO
scale_colour_vikO <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "vikO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vikO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_vikO
scale_color_vikO <- scale_colour_vikO

#' @export
#' @rdname scale_crameri_vikO
scale_fill_vikO <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "vikO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "vikO", reverse = reverse, range = range, ...)
  }
}

## romaO -----------------------------------------------------------------------
#' Fabio Crameri's *romaO* Cyclic Color Scheme
#'
#' @inheritParams scale_crameri_brocO
#' @inheritSection crameri Diverging Color Schemes
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
#' @family cyclic color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_romaO
#' @rdname scale_crameri_romaO
NULL

#' @export
#' @rdname scale_crameri_romaO
scale_colour_romaO <- function(..., reverse = FALSE, range = c(0, 1),
                               discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "romaO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "romaO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_romaO
scale_color_romaO <- scale_colour_romaO

#' @export
#' @rdname scale_crameri_romaO
scale_fill_romaO <- function(..., reverse = FALSE, range = c(0, 1),
                             discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "romaO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "romaO", reverse = reverse, range = range, ...)
  }
}

## bamO ------------------------------------------------------------------------
#' Fabio Crameri's *bamO* Cyclic Color Scheme
#'
#' @inheritParams scale_crameri_brocO
#' @inheritSection crameri Diverging Color Schemes
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
#' @family cyclic color schemes
#' @family Fabio Crameri's color schemes
#' @name scale_crameri_bamO
#' @rdname scale_crameri_bamO
NULL

#' @export
#' @rdname scale_crameri_bamO
scale_colour_bamO <- function(..., reverse = FALSE, range = c(0, 1),
                              discrete = FALSE, aesthetics = "colour") {
  if (discrete) {
    scale_discrete(aesthetics, "bamO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamO", reverse = reverse, range = range, ...)
  }
}

#' @export
#' @rdname scale_crameri_bamO
scale_color_bamO <- scale_colour_bamO

#' @export
#' @rdname scale_crameri_bamO
scale_fill_bamO <- function(..., reverse = FALSE, range = c(0, 1),
                            discrete = FALSE, aesthetics = "fill") {
  if (discrete) {
    scale_discrete(aesthetics, "bamO", reverse = reverse, ...)
  } else {
    scale_continuous(aesthetics, "bamO", reverse = reverse, range = range, ...)
  }
}
