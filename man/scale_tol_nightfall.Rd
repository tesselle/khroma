% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_colour_tol.R
\name{scale_tol_nightfall}
\alias{scale_tol_nightfall}
\alias{scale_colour_nightfall}
\alias{scale_color_nightfall}
\alias{scale_fill_nightfall}
\alias{scale_edge_colour_nightfall}
\alias{scale_edge_color_nightfall}
\alias{scale_edge_fill_nightfall}
\title{Paul Tol's \emph{nightfall} Diverging Color Scheme}
\usage{
scale_colour_nightfall(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  midpoint = 0,
  discrete = FALSE,
  aesthetics = "colour"
)

scale_color_nightfall(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  midpoint = 0,
  discrete = FALSE,
  aesthetics = "colour"
)

scale_fill_nightfall(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  midpoint = 0,
  discrete = FALSE,
  aesthetics = "fill"
)

scale_edge_colour_nightfall(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  midpoint = 0,
  discrete = FALSE,
  aesthetics = "edge_colour"
)

scale_edge_color_nightfall(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  midpoint = 0,
  discrete = FALSE,
  aesthetics = "edge_colour"
)

scale_edge_fill_nightfall(
  ...,
  reverse = FALSE,
  range = c(0, 1),
  midpoint = 0,
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

\item{midpoint}{A length-one \code{\link{numeric}} vector giving the midpoint
(in data value) of the diverging scale. Defaults to \code{0}.}

\item{discrete}{A \code{\link{logical}} scalar: should the color scheme be
used as a discrete scale? If \code{TRUE}, it is a departure from Paul Tol's
recommendations and likely a very poor use of color.}

\item{aesthetics}{A \code{\link{character}} string or vector of character
strings listing the name(s) of the aesthetic(s) that this scale works with.}
}
\value{
A \link[ggplot2:continuous_scale]{continuous} scale.
}
\description{
Paul Tol's \emph{nightfall} Diverging Color Scheme
}
\section{Diverging Color Schemes}{

If more colors than defined are needed from a given scheme, the color
coordinates are linearly interpolated to provide a continuous version of the
scheme.

\tabular{lll}{
\strong{Palette} \tab \strong{Max.} \tab \strong{NA value} \cr
\code{sunset}    \tab 11       \tab #FFFFFF      \cr
\code{nightfall} \tab 17       \tab #FFFFFF      \cr
\code{BuRd}      \tab 9        \tab #FFEE99      \cr
\code{PRGn}      \tab 9        \tab #FFEE99      \cr
}
}

\examples{
data(economics, package = "ggplot2")

ggplot2::ggplot(economics, ggplot2::aes(psavert, pce, colour = unemploy)) +
  ggplot2::geom_point() +
  scale_color_sunset(reverse = TRUE, midpoint = 12000)

ggplot2::ggplot(economics, ggplot2::aes(psavert, pce, colour = unemploy)) +
  ggplot2::geom_point() +
  scale_color_BuRd(midpoint = 9000)

ggplot2::ggplot(economics, ggplot2::aes(psavert, pce, colour = unemploy)) +
  ggplot2::geom_point() +
  scale_color_PRGn(midpoint = 9000, range = c(0.25, 1))
}
\references{
Tol, P. (2018). \emph{Colour Schemes}. SRON. Technical Note No.
SRON/EPS/TN/09-002, issue 3.1.
URL: \url{https://sronpersonalpages.nl/~pault/data/colourschemes.pdf}
}
\seealso{
Other diverging color schemes: 
\code{\link{scale_crameri_bam}},
\code{\link{scale_crameri_berlin}},
\code{\link{scale_crameri_broc}},
\code{\link{scale_crameri_cork}},
\code{\link{scale_crameri_lisbon}},
\code{\link{scale_crameri_roma}},
\code{\link{scale_crameri_tofino}},
\code{\link{scale_crameri_vanimo}},
\code{\link{scale_crameri_vik}},
\code{\link{scale_tol_BuRd}},
\code{\link{scale_tol_PRGn}},
\code{\link{scale_tol_sunset}}

Other Paul Tol's color schemes: 
\code{\link{scale_tol_BuRd}},
\code{\link{scale_tol_PRGn}},
\code{\link{scale_tol_YlOrBr}},
\code{\link{scale_tol_bright}},
\code{\link{scale_tol_dark}},
\code{\link{scale_tol_discreterainbow}},
\code{\link{scale_tol_highcontrast}},
\code{\link{scale_tol_incandescent}},
\code{\link{scale_tol_iridescent}},
\code{\link{scale_tol_light}},
\code{\link{scale_tol_mediumcontrast}},
\code{\link{scale_tol_muted}},
\code{\link{scale_tol_pale}},
\code{\link{scale_tol_smoothrainbow}},
\code{\link{scale_tol_sunset}},
\code{\link{scale_tol_vibrant}}
}
\author{
N. Frerebeau
}
\concept{Paul Tol's color schemes}
\concept{diverging color schemes}
