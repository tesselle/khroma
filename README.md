
<!-- README.md is generated from README.Rmd. Please edit that file -->

# khroma <img width=120px src="man/figures/logo.png" align="right" />

<!-- badges: start -->

[![R build
status](https://github.com/nfrerebeau/khroma/workflows/R-CMD-check/badge.svg)](https://github.com/nfrerebeau/khroma/actions)
[![codecov](https://codecov.io/gh/nfrerebeau/khroma/branch/master/graph/badge.svg)](https://codecov.io/gh/nfrerebeau/khroma)

[![CRAN
Version](http://www.r-pkg.org/badges/version/khroma)](https://cran.r-project.org/package=khroma)
[![CRAN
checks](https://cranchecks.info/badges/worst/khroma)](https://cran.r-project.org/web/checks/check_results_khroma.html)
[![CRAN
Downloads](http://cranlogs.r-pkg.org/badges/khroma)](https://cran.r-project.org/package=khroma)

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1472077.svg)](https://doi.org/10.5281/zenodo.1472077)
<!-- badges: end -->

## Overview

Color blindness affects a large number of individuals. When
communicating scientific results colour palettes must therefore be
carefully chosen to be accessible to all readers.

This R package provides an implementation of Paul Tol\[1\] and Okabe and
Ito\[2\] colour schemes. These schemes are ready for each type of data
(qualitative, diverging or sequential), with colours that are distinct
for all people, including colour-blind readers. This package also
provides tools to simulate colour-blindness and to test how well the
colours of any palette are identifiable. To simulate colour-blindness in
production-ready R figures you may also be interested in the
[**colorblindr**](https://github.com/clauswilke/colorblindr) package.

For specific uses, several scientific thematic schemes (geologic
timescale, land cover, FAO soils, etc.) are implemented, but these
colour schemes may not be colour-blind safe.

All these colour schemes are implemented for use with base R or
[**ggplot2**](https://github.com/tidyverse/ggplot2).

## Installation

You can install the released version of **khroma** from
[CRAN](https://CRAN.R-project.org):

``` r
install.packages("khroma")
```

Or install the development version from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("nfrerebeau/khroma")
```

## Usage

``` r
# Load packages
library(khroma)
library(ggplot2)
```

### Colour palettes and scales

`colour()` returns a palette function that when called with a single
integer argument returns a vector of colours.

``` r
bright <- colour("bright")
```

If [**crayon**](https://github.com/r-lib/crayon) is installed on your
machine, colours will be nicely printed in the console.

<img src="./man/figures/README-crayon.png" width="646" />

You can disable this feature by setting the `crayon.enabled` option to
`FALSE`.

``` r
options(crayon.enabled = FALSE)
bright(7)
#>      blue       red     green    yellow      cyan    purple      grey 
#> "#4477AA" "#EE6677" "#228833" "#CCBB44" "#66CCEE" "#AA3377" "#BBBBBB"
```

``` r
# Show the colour palette
plot_scheme(bright(7), colours = TRUE)
```

<img src="man/figures/README-show-1.png" style="display: block; margin: auto;" />

``` r
# Use with ggplot2
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, colour = class)) +
  geom_point() +
  scale_colour_okabeito()
```

<img src="man/figures/README-usage-ggplot2-1.png" style="display: block; margin: auto;" />

### Diagnostic tools

#### Test how well the colours are identifiable

``` r
set.seed(12345)
plot_map(bright(7))
```

<img src="man/figures/README-usage-colourblind1-1.png" style="display: block; margin: auto;" />

#### Simulate colour-blindness

``` r
# convert() returns a modified palette function
deuteranopia <- convert(bright, mode = "deuteranopia")
plot_scheme(deuteranopia(7), colours = TRUE)
```

<img src="man/figures/README-usage-colourblind2-1.png" style="display: block; margin: auto;" />

``` r

protanopia <- convert(bright, mode = "protanopia")
plot_scheme(protanopia(7), colours = TRUE)
```

<img src="man/figures/README-usage-colourblind2-2.png" style="display: block; margin: auto;" />

``` r

tritanopia <- convert(bright, mode = "tritanopia")
plot_scheme(tritanopia(7), colours = TRUE)
```

<img src="man/figures/README-usage-colourblind2-3.png" style="display: block; margin: auto;" />

``` r

achromatopsia <- convert(bright, mode = "achromatopsia")
plot_scheme(achromatopsia(7), colours = TRUE)
```

<img src="man/figures/README-usage-colourblind2-4.png" style="display: block; margin: auto;" />

``` r
plot_scheme_colourblind(bright(7))
```

<img src="man/figures/README-usage-colourblind3-1.png" style="display: block; margin: auto;" />

``` r

x <- c("#D8B70A", "#02401B", "#A2A475", "#81A88D", "#972D15")
plot_scheme_colourblind(x)
```

<img src="man/figures/README-usage-colourblind3-2.png" style="display: block; margin: auto;" />

## Colour Schemes

### Paul Tol’s Colour Schemes

Paul Tol offers carefully chosen schemes, ready for each type of data,
with colours that are:

  - Distinct for all people, including colour-blind readers.
  - Distinct from black and white.
  - Distinct on screen and paper.
  - Matching well together.

All the scales presented in Paul Tol’s technical note are implemented
here, for use with base R or
[**ggplot2**](https://github.com/tidyverse/ggplot2). Refer to the
original document for details about the recommended uses.

See `vignette("tol")` for a more complete overview.

### Scientific colour schemes

The following scientific colour schemes are available:

  - International Chronostratigraphic Chart.
  - AVHRR Global Land Cover Classification.
  - FAO Soil Reference Groups.

More will be added in future releases ([suggestions are
welcome](https://github.com/nfrerebeau/khroma/issues)).

## Contributing

Please note that the **khroma** project is released with a [Contributor
Code of
Conduct](https://github.com/nfrerebeau/khroma/blob/master/.github/CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.

1.  Tol, P. (2018). *Colour Schemes*. SRON. Technical Note
    No. SRON/EPS/TN/09-002. URL:
    <https://personal.sron.nl/~pault/data/colourschemes.pdf>.

2.  Okabe, M. & Ito, K. (2008). *Color Universal Design (CUD): How to
    Make Figures and Presentations That Are Friendly to Colorblind
    People*. URL: <http://jfly.iam.u-tokyo.ac.jp/color>.
