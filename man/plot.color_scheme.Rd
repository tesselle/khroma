% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.color_scheme}
\alias{plot.color_scheme}
\title{Plot Color Scheme}
\usage{
\method{plot}{color_scheme}(x, ...)
}
\arguments{
\item{x}{A \code{\link{character}} vector of colors.}

\item{...}{Currently not used.}
}
\value{
\code{plot()} is called for its side-effects: it results in a graphic
being displayed (invisibly returns \code{x}).
}
\description{
Quickly displays a color scheme returned by \code{\link[=color]{color()}}.
}
\examples{
plot(colour("bright")(7))
plot(colour("smooth rainbow")(256))

## Plot colour schemes
plot_scheme(colour("bright")(7))
plot_scheme(colour("sunset")(11))
plot_scheme(colour("YlOrBr")(9))
plot_scheme(colour("discrete rainbow")(14))

## Plot diagnostic maps
plot_map(colour("bright")(7))
plot_map(colour("sunset")(11))
plot_map(colour("YlOrBr")(9))
plot_map(colour("discrete rainbow")(14))

## Plot diagnostic images
plot_tiles(colour("discrete rainbow")(14), n = 256)
plot_tiles(colour("discrete rainbow")(23), n = 256)
plot_tiles(colour("smooth rainbow")(256), n = 256)
}
\seealso{
Other diagnostic tools: 
\code{\link{change}()},
\code{\link{compare}()},
\code{\link{plot_map}()},
\code{\link{plot_scheme}()},
\code{\link{plot_scheme_colourblind}()},
\code{\link{plot_tiles}()}
}
\author{
N. Frerebeau
}
\concept{diagnostic tools}
