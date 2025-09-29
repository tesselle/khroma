#' Available Schemes
#'
#' Returns information about the available schemes.
#' @return
#'  A [`data.frame`] with the following columns:
#'  \describe{
#'   \item{`palette`}{Names of palette.}
#'   \item{`type`}{Types of schemes: sequential, diverging or qualitative.}
#'   \item{`max`}{Maximum number of colors that are contained in each
#'   palette. Only relevant for qualitative schemes.}
#'   \item{`missing`}{The hexadecimal color value for mapping missing values.}
#'  }
#' @example inst/examples/ex-info.R
#' @author N. Frerebeau
#' @family color schemes
#' @export
info <- function() {
  meta <- lapply(
    X = .schemes,
    FUN = function(x) {
      list(type = x$type, max = x$max, missing = x$missing)
    }
  )
  meta <- do.call(rbind.data.frame, meta)
  rownames(meta) <- NULL
  colnames(meta) <- c("type", "max", "missing")
  meta$palette <- names(.schemes)
  meta[, c(4, 1, 2, 3)]
}

# Paul Tol =====================================================================
#' Paul Tol's Color Schemes
#'
#' @details
#'  The maximum number of supported colors is only relevant for the qualitative
#'  color schemes (divergent and sequential schemes are linearly interpolated).
#'
#'  \describe{
#'   \item{Qualitative data}{`bright` (7), `high contrast` (3), `vibrant` (7),
#'   `muted` (9), `medium contrast` (6), `pale` (6), `dark` (6), `light` (9).}
#'   \item{Diverging data}{`sunset` (11), `nightfall` (17), `BuRd` (9),
#'   `PRGn` (9).}
#'   \item{Sequential data}{`YlOrBr` (9), `iridescent` (23), `incandescent`
#'   (11), `discrete rainbow` (23), `smooth rainbow` (34).}
#'  }
#' @section Qualitative Color Schemes:
#'  The qualitative color schemes are used as given (no interpolation):
#'  colors are picked up to the maximum number of supported values.
#'
#'  \tabular{ll}{
#'   **Palette**      \tab **Max.** \cr
#'   `bright`         \tab 7        \cr
#'   `highcontrast`   \tab 3        \cr
#'   `vibrant`        \tab 7        \cr
#'   `muted`          \tab 9        \cr
#'   `mediumcontrast` \tab 6        \cr
#'   `pale`           \tab 6        \cr
#'   `dark`           \tab 6        \cr
#'   `light`          \tab 9        \cr
#'  }
#'
#'  According to Paul Tol's technical note, the `bright`, `highcontrast`,
#'  `vibrant` and `muted` color schemes are color-blind safe. The
#'  `mediumcontrast` color scheme is designed for situations needing color
#'  pairs.
#'
#'  The `light` color scheme is reasonably distinct for both normal or
#'  colorblind vision and is intended to fill labeled cells.
#'
#'  The `pale` and `dark` schemes are not very distinct in either normal or
#'  colorblind vision and should be used as a text background or to highlight
#'  a cell in a table.
#'
#'  Refer to the original document for details about the recommended uses (see
#'  references)
#' @section Diverging Color Schemes:
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'
#'  \tabular{lll}{
#'   **Palette** \tab **Max.** \tab **NA value** \cr
#'   `sunset`    \tab 11       \tab #FFFFFF      \cr
#'   `nightfall` \tab 17       \tab #FFFFFF      \cr
#'   `BuRd`      \tab 9        \tab #FFEE99      \cr
#'   `PRGn`      \tab 9        \tab #FFEE99      \cr
#'  }
#'
#' @section Sequential Color Schemes:
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'
#'  \tabular{lll}{
#'   **Palette**       \tab **Max.** \tab **NA value** \cr
#'   `YlOrBr`          \tab 9        \tab #888888      \cr
#'   `iridescent`      \tab 23       \tab #999999      \cr
#'   `discreterainbow` \tab 23       \tab #777777      \cr
#'   `smoothrainbow`   \tab 34       \tab #666666      \cr
#'  }
#' @section Rainbow Color Scheme:
#'  As a general rule, ordered data should not be represented using a rainbow
#'  scheme. There are three main arguments against such use (Tol 2018):
#'  \itemize{
#'   \item{The spectral order of visible light carries no inherent magnitude
#'   message.}
#'   \item{Some bands of almost constant hue with sharp transitions between
#'   them, can be perceived as jumps in the data.}
#'   \item{Color-blind people have difficulty distinguishing some colors of
#'   the rainbow.}
#'  }
#'  If such use cannot be avoided, Paul Tol's technical note provides two color
#'  schemes that are reasonably clear in color-blind vision. To remain
#'  color-blind safe, these two schemes must comply with the following
#'  conditions:
#'  \describe{
#'   \item{`discreterainbow`}{This scheme must not be interpolated.}
#'   \item{`smoothrainbow`}{This scheme does not have to be used over the full
#'   range.}
#'  }
#' @references
#'  Tol, P. (2021). *Colour Schemes*. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.2.
#'  URL: \url{https://sronpersonalpages.nl/~pault/data/colourschemes.pdf}
#' @keywords internal
#' @rdname tol
#' @name tol
NULL

# Fabio Crameri ================================================================
#' Fabio Crameri's Color Schemes
#'
#' @section Diverging Color Schemes:
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'
#'  \tabular{ll}{
#'   **Palette** \tab **Max.** \cr
#'   `bam`       \tab 256      \cr
#'   `bamO`*     \tab 256      \cr
#'   `berlin`    \tab 256      \cr
#'   `broc`      \tab 256      \cr
#'   `brocO`*    \tab 256      \cr
#'   `cork`      \tab 256      \cr
#'   `corkO`*    \tab 256      \cr
#'   `lisbon`    \tab 256      \cr
#'   `managua`   \tab 256      \cr
#'   `roma`      \tab 256      \cr
#'   `romaO`*    \tab 256      \cr
#'   `tofino`    \tab 256      \cr
#'   `vanimo`    \tab 256      \cr
#'   `vik`       \tab 256      \cr
#'   `vikO`*     \tab 256      \cr
#'  }
#'  *: cyclic color schemes.
#' @section Sequential Color Schemes:
#'  If more colors than defined are needed from a given scheme, the color
#'  coordinates are linearly interpolated to provide a continuous version of the
#'  scheme.
#'
#'  \tabular{ll}{
#'   **Palette** \tab **Max.** \cr
#'   `acton`     \tab 256      \cr
#'   `bamako`    \tab 256      \cr
#'   `batlow`    \tab 256      \cr
#'   `batlowW`   \tab 256      \cr
#'   `batlowK`   \tab 256      \cr
#'   `bilbao`    \tab 256      \cr
#'   `buda`      \tab 256      \cr
#'   `bukavu`*   \tab 256      \cr
#'   `davos`     \tab 256      \cr
#'   `devon`     \tab 256      \cr
#'   `fes`*      \tab 256      \cr
#'   `glasgow`   \tab 256      \cr
#'   `grayC`     \tab 256      \cr
#'   `hawaii`    \tab 256      \cr
#'   `imola`     \tab 256      \cr
#'   `lajolla`   \tab 256      \cr
#'   `lapaz`     \tab 256      \cr
#'   `navia`     \tab 256      \cr
#'   `naviaW`    \tab 256      \cr
#'   `nuuk`      \tab 256      \cr
#'   `oleron`*   \tab 256      \cr
#'   `oslo`      \tab 256      \cr
#'   `tokyo`     \tab 256      \cr
#'   `turku`     \tab 256      \cr
#'  }
#'  *: multisequential color schemes.
#' @references
#'  Crameri, F. (2018). Geodynamic diagnostics, scientific visualisation and
#'  StagLab 3.0. *Geosci. Model Dev.*, 11, 2541-2562.
#'  \doi{10.5194/gmd-11-2541-2018}
#'
#'  Crameri, F., Shephard, G. E. & Heron, P. J. (2020). The misuse of colour in
#'  science communication. *Nature Communications*, 11, 5444.
#'  \doi{10.1038/s41467-020-19160-7}
#' @source
#'  Crameri, F. (2023). Scientific colour maps. *Zenodo*, v8.0.1.
#'  \doi{10.5281/zenodo.1243862}
#' @keywords internal
#' @rdname crameri
#' @name crameri
NULL

# Science ======================================================================
#' Scientific Color Schemes
#'
#' @details
#'  The following (qualitative) color schemes are available:
#'  \describe{
#'   \item{`stratigraphy`}{International Chronostratigraphic Chart (175 colors).}
#'   \item{`land`}{AVHRR Global Land Cover Classification (14 colors).}
#'   \item{`soil`}{FAO Reference Soil Groups (24 colors).}
#'  }
#' @references
#'  Jones, A., Montanarella, L. & Jones, R. (Ed.) (2005). *Soil atlas of
#'  Europe*. Luxembourg: European Commission, Office for Official Publications
#'  of the European Communities. 128 pp. ISBN: 92-894-8120-X.
#'
#'  Tol, P. (2021). *Colour Schemes*. SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.2.
#'  URL: \url{https://sronpersonalpages.nl/~pault/data/colourschemes.pdf}
#'
#'  \href{https://ccgm.org/}{Commission for the Geological Map of the World}
#' @keywords internal
#' @rdname science
#' @name science
NULL
