% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_colour_crameri.R
\name{scale_crameri_turku}
\alias{scale_crameri_turku}
\alias{scale_colour_turku}
\alias{scale_color_turku}
\alias{scale_fill_turku}
\alias{scale_edge_colour_turku}
\alias{scale_edge_color_turku}
\alias{scale_edge_fill_turku}
\title{Fabio Crameri's \emph{turku} Sequential Color Scheme}
\source{
Crameri, F. (2021). Scientific colour maps. \emph{Zenodo}, v7.0.
\doi{10.5281/zenodo.4491293}
}
\usage{
scale_colour_turku(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  discrete = FALSE,
  aesthetics = "colour"
)

scale_color_turku(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  discrete = FALSE,
  aesthetics = "colour"
)

scale_fill_turku(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  discrete = FALSE,
  aesthetics = "fill"
)

scale_edge_colour_turku(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  discrete = FALSE,
  aesthetics = "edge_colour"
)

scale_edge_color_turku(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  discrete = FALSE,
  aesthetics = "edge_colour"
)

scale_edge_fill_turku(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  discrete = FALSE,
  aesthetics = "edge_fill"
)
}
\arguments{
\item{...}{Arguments passed to \code{\link[ggplot2:continuous_scale]{ggplot2::continuous_scale()}}.}

\item{reverse}{A \code{\link{logical}} scalar. Should the resulting
vector of colors be reversed?}

\item{range}{A length-two \code{\link{numeric}} vector specifying the
fraction of the scheme's color domain to keep.}

\item{discrete}{A \code{\link{logical}} scalar: should the color scheme be
used as a discrete scale?}

\item{aesthetics}{A \code{\link{character}} string or vector of character
strings listing the name(s) of the aesthetic(s) that this scale works with.}
}
\value{
A \link[ggplot2:continuous_scale]{continuous} scale.
}
\description{
Fabio Crameri's \emph{turku} Sequential Color Scheme
}
\section{Sequential Color Schemes}{

If more colors than defined are needed from a given scheme, the color
coordinates are linearly interpolated to provide a continuous version of the
scheme.

\tabular{ll}{
\strong{Palette} \tab \strong{Max.} \cr
\code{batlow}    \tab 256      \cr
\code{batlowW}   \tab 256      \cr
\code{batlowK}   \tab 256      \cr
\code{devon}     \tab 256      \cr
\code{lajolla}   \tab 256      \cr
\code{bamako}    \tab 256      \cr
\code{davos}     \tab 256      \cr
\code{bilbao}    \tab 256      \cr
\code{nuuk}      \tab 256      \cr
\code{oslo}      \tab 256      \cr
\code{grayC}     \tab 256      \cr
\code{hawaii}    \tab 256      \cr
\code{lapaz}     \tab 256      \cr
\code{tokyo}     \tab 256      \cr
\code{buda}      \tab 256      \cr
\code{acton}     \tab 256      \cr
\code{turku}     \tab 256      \cr
\code{imola}     \tab 256      \cr
\code{oleron}*   \tab 256      \cr
\code{bukavu}*   \tab 256      \cr
\code{fes}*      \tab 256      \cr
}
*: multisequential color schemes.
}

\examples{
data(faithfuld, package = "ggplot2")

ggplot2::ggplot(faithfuld, ggplot2::aes(waiting, eruptions, fill = density)) +
  ggplot2::geom_raster() +
  scale_fill_batlow()

ggplot2::ggplot(faithfuld, ggplot2::aes(waiting, eruptions, fill = density)) +
  ggplot2::geom_raster() +
  scale_fill_bamako()

ggplot2::ggplot(faithfuld, ggplot2::aes(waiting, eruptions, fill = density)) +
  ggplot2::geom_raster() +
  scale_fill_hawaii(reverse = TRUE)
}
\references{
Crameri, F. (2018). Geodynamic diagnostics, scientific visualisation and
StagLab 3.0. \emph{Geosci. Model Dev.}, 11, 2541-2562.
\doi{10.5194/gmd-11-2541-2018}

Crameri, F., Shephard, G. E. & Heron, P. J. (2020). The misuse of colour in
science communication. \emph{Nature Communications}, 11, 5444.
\doi{10.1038/s41467-020-19160-7}
}
\seealso{
Other sequential color schemes: 
\code{\link{scale_crameri_acton}},
\code{\link{scale_crameri_bamako}},
\code{\link{scale_crameri_batlow}},
\code{\link{scale_crameri_batlowK}},
\code{\link{scale_crameri_batlowW}},
\code{\link{scale_crameri_bilbao}},
\code{\link{scale_crameri_buda}},
\code{\link{scale_crameri_davos}},
\code{\link{scale_crameri_devon}},
\code{\link{scale_crameri_grayC}},
\code{\link{scale_crameri_hawaii}},
\code{\link{scale_crameri_imola}},
\code{\link{scale_crameri_lajolla}},
\code{\link{scale_crameri_lapaz}},
\code{\link{scale_crameri_nuuk}},
\code{\link{scale_crameri_oslo}},
\code{\link{scale_crameri_tokyo}},
\code{\link{scale_tol_YlOrBr}},
\code{\link{scale_tol_incandescent}},
\code{\link{scale_tol_iridescent}},
\code{\link{scale_tol_smoothrainbow}}

Other Fabio Crameri's color schemes: 
\code{\link{scale_crameri_acton}},
\code{\link{scale_crameri_bam}},
\code{\link{scale_crameri_bamO}},
\code{\link{scale_crameri_bamako}},
\code{\link{scale_crameri_batlow}},
\code{\link{scale_crameri_batlowK}},
\code{\link{scale_crameri_batlowW}},
\code{\link{scale_crameri_berlin}},
\code{\link{scale_crameri_bilbao}},
\code{\link{scale_crameri_broc}},
\code{\link{scale_crameri_brocO}},
\code{\link{scale_crameri_buda}},
\code{\link{scale_crameri_bukavu}},
\code{\link{scale_crameri_cork}},
\code{\link{scale_crameri_corkO}},
\code{\link{scale_crameri_davos}},
\code{\link{scale_crameri_devon}},
\code{\link{scale_crameri_fes}},
\code{\link{scale_crameri_grayC}},
\code{\link{scale_crameri_hawaii}},
\code{\link{scale_crameri_imola}},
\code{\link{scale_crameri_lajolla}},
\code{\link{scale_crameri_lapaz}},
\code{\link{scale_crameri_lisbon}},
\code{\link{scale_crameri_nuuk}},
\code{\link{scale_crameri_oleron}},
\code{\link{scale_crameri_oslo}},
\code{\link{scale_crameri_roma}},
\code{\link{scale_crameri_romaO}},
\code{\link{scale_crameri_tofino}},
\code{\link{scale_crameri_tokyo}},
\code{\link{scale_crameri_vanimo}},
\code{\link{scale_crameri_vik}},
\code{\link{scale_crameri_vikO}}
}
\author{
N. Frerebeau
}
\concept{Fabio Crameri's color schemes}
\concept{sequential color schemes}
