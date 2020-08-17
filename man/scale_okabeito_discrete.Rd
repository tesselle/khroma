% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_colour_okabeito.R
\name{scale_okabeito_discrete}
\alias{scale_okabeito_discrete}
\alias{scale_colour_okabeito}
\alias{scale_color_okabeito}
\alias{scale_fill_okabeito}
\title{Okabe and Ito's Discrete Colour Scheme for \pkg{ggplot2}}
\usage{
scale_colour_okabeito(..., reverse = FALSE, aesthetics = "colour")

scale_color_okabeito(..., reverse = FALSE, aesthetics = "colour")

scale_fill_okabeito(..., reverse = FALSE, aesthetics = "fill")
}
\arguments{
\item{...}{Arguments passed to \code{\link[ggplot2]{discrete_scale}}.}

\item{reverse}{A \code{\link{logical}} scalar. Should the resulting
vector of colours be reversed?}

\item{aesthetics}{A \code{\link{character}} string or vector of character
strings listing the name(s) of the aesthetic(s) that this scale works with.}
}
\value{
A \code{\link[ggplot2:discrete_scale]{discrete}} scale.
}
\description{
Provides the qualitative colour scale from Okabe and Ito 2008.
}
\details{
This qualitative colour scheme is used as given (no interpolation):
 colours are picked up to the maximum number of supported values (8).
}
\examples{
library(ggplot2)

ggplot2::ggplot(mpg, ggplot2::aes(displ, hwy, colour = class)) +
  ggplot2::geom_point() +
  scale_colour_okabeito()
}
\references{
Okabe, M. & Ito, K. (2008). \emph{Color Universal Design (CUD): How to Make
 Figures and Presentations That Are Friendly to Colorblind People}.
 URL: \url{http://jfly.iam.u-tokyo.ac.jp/color/}.
}
\seealso{
Other colour-blind safe colour schemes: 
\code{\link{scale_tol_discrete}},
\code{\link{scale_tol_diverging}},
\code{\link{scale_tol_sequential}}

Other qualitative colour schemes: 
\code{\link{scale_colour_land}()},
\code{\link{scale_colour_soil}()},
\code{\link{scale_colour_stratigraphy}()},
\code{\link{scale_tol_discrete}}
}
\author{
N. Frerebeau
}
\concept{Okabe and Ito's colour scheme}
\concept{colour-blind safe colour schemes}
\concept{qualitative colour schemes}