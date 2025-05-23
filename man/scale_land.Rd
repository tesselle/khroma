% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_colour_science.R
\name{scale_colour_land}
\alias{scale_colour_land}
\alias{scale_color_land}
\alias{scale_fill_land}
\alias{scale_edge_colour_land}
\alias{scale_edge_color_land}
\alias{scale_edge_fill_land}
\title{AVHRR Global Land Cover Classification Color Scheme for \pkg{ggplot2}
and \pkg{ggraph}}
\usage{
scale_colour_land(..., lang = "en", aesthetics = "colour")

scale_color_land(..., lang = "en", aesthetics = "colour")

scale_fill_land(..., lang = "en", aesthetics = "fill")

scale_edge_colour_land(..., lang = "en")

scale_edge_color_land(..., lang = "en")

scale_edge_fill_land(..., lang = "en")
}
\arguments{
\item{...}{Arguments passed on to \code{\link[ggplot2:discrete_scale]{ggplot2::discrete_scale()}}.}

\item{lang}{A \code{\link{character}} string specifying the language for the
color names (see details). It must be one of "\code{en}" (english, the
default), "\code{fr}" (french) or \code{NULL}. If not \code{NULL}, the values will be
matched based on the color names.}

\item{aesthetics}{A \code{\link{character}} string or vector of character
strings listing the name(s) of the aesthetic(s) that this scale works with.}
}
\value{
A \link[ggplot2:discrete_scale]{discrete} scale.
}
\description{
Provides the AVHRR Global Land Cover classification as modified by
Paul Tol (colorblind safe).
}
\details{
Values will be matched based on the land classification names.
}
\examples{
library(ggplot2)

land <- data.frame(
  name = c(
    "water", "evergreen needleleaf forest", "deciduous needleleaf forest",
    "mixed forest", "evergreen broadleaf forest", "deciduous broadleaf forest",
    "woodland", "wooded grassland", "grassland", "cropland", "closed shrubland",
    "open shrubland", "bare ground", "urban and built"
  )
)

ggplot2::ggplot(land) +
  ggplot2::geom_rect(ggplot2::aes(xmin = rep(0, 14), xmax = rep(1, 14),
                                  ymin = 1:14, ymax = 1:14+1, fill = name)) +
  ggplot2::scale_y_reverse() +
  scale_fill_land(name = "land")
}
\references{
Tol, P. (2018). \emph{Colour Schemes.} SRON. Technical Note No.
SRON/EPS/TN/09-002, issue 3.1.
URL: \url{https://sronpersonalpages.nl/~pault/data/colourschemes.pdf}
}
\seealso{
Other themed color schemes: 
\code{\link{scale_colour_soil}()},
\code{\link{scale_colour_stratigraphy}()}

Other qualitative color schemes: 
\code{\link{scale_colour_soil}()},
\code{\link{scale_colour_stratigraphy}()},
\code{\link{scale_okabeito_discrete}},
\code{\link{scale_tol_bright}},
\code{\link{scale_tol_dark}},
\code{\link{scale_tol_discreterainbow}},
\code{\link{scale_tol_highcontrast}},
\code{\link{scale_tol_light}},
\code{\link{scale_tol_mediumcontrast}},
\code{\link{scale_tol_muted}},
\code{\link{scale_tol_pale}},
\code{\link{scale_tol_vibrant}}
}
\author{
N. Frerebeau
}
\concept{qualitative color schemes}
\concept{themed color schemes}
