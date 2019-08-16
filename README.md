
<!-- README.md is generated from README.Rmd. Please edit that file -->

# khroma <img width=120px src="man/figures/logo.png" align="right" />

[![Appveyor build
status](https://ci.appveyor.com/api/projects/status/d4hib2u0jqsup0ln/branch/master?svg=true)](https://ci.appveyor.com/project/nfrerebeau/khroma/branch/master)
[![Travis build
Status](https://travis-ci.org/nfrerebeau/khroma.svg?branch=master)](https://travis-ci.org/nfrerebeau/khroma)
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
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1472077.svg)](https://doi.org/10.5281/zenodo.1472077)

## Overview

Color blindness affects a large number of individuals \[1\]. When
communicating scientific results colour palettes must therefore be
carefully chosen to be accessible to all readers.

This R package provides an implementation of Paul Tol’s colour schemes
\[2\]. These schemes are ready for each type of data (qualitative,
diverging or sequential), with colours that are distinct for all people,
including colour-blind readers. This package also provides tools to
simulate colour-blindness and to test how well the colours of any
palette are identifiable. To simulate colour-blindness in
production-ready R figures you may be interested in the
[`colorblindr`](https://github.com/clauswilke/colorblindr) package.

For specific uses, several scientific thematic schemes (geologic
timescale, land cover, FAO soils, etc.) are implemented. Note that these
colour schemes may not be colour-blind safe.

All these colour schemes are implemented for use with base R `graphics`
or [`ggplot2`](https://github.com/tidyverse/ggplot2).

## Installation

Install the released version of `khroma` from CRAN:

``` r
install.packages("khroma")
```

Or install the development version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("nfrerebeau/khroma")
```

## Usage

### Paul Tol’s Colour Schemes

Paul Tol offers carefully chosen schemes, ready for each type of data,
with colours that are:

  - Distinct for all people, including colour-blind readers.
  - Distinct from black and white.
  - Distinct on screen and paper.
  - Matching well together.

All the scales presented in Paul Tol’s technical note are implemented
here, for use with `graphics` or `ggplot2`. Refer to the original
document for details about the recommended uses.

See the vignette for a complete overview:

``` r
utils::vignette("tol")
```

### Scientific colour schemes

The following scientific colour schemes are available:

  - International Chronostratigraphic Chart.
  - AVHRR Global Land Cover Classification.
  - FAO Soil Reference Groups.

More will be added in future releases (suggestions are welcome).

### Diagnostic tools

Test how well the colours are identifiable:

``` r
# Paul Tol's "bright" colour scheme
# colour() returns a palette function
bright <- colour("bright")

plot_map(bright(7))
```

<img src="man/figures/README-diagnostic-1.png" style="display: block; margin: auto;" />

Simulate colour-blindness (from top to bottom: deuteranopia, protanopia,
tritanopia and achromatopsia):

``` r
deuteranopia <- convert(bright, mode = "deuteranopia")
protanopia <- convert(bright, mode = "protanopia")
tritanopia <- convert(bright, mode = "tritanopia")
achromatopsia <- convert(bright, mode = "achromatopsia")

plot_scheme(deuteranopia(7), colours = TRUE)
plot_scheme(protanopia(7), colours = TRUE)
plot_scheme(tritanopia(7), colours = TRUE)
plot_scheme(achromatopsia(7), colours = TRUE)
```

<img src="man/figures/README-anomalize-1.png" style="display: block; margin: auto;" /><img src="man/figures/README-anomalize-2.png" style="display: block; margin: auto;" /><img src="man/figures/README-anomalize-3.png" style="display: block; margin: auto;" /><img src="man/figures/README-anomalize-4.png" style="display: block; margin: auto;" />

1.  As many as 8 percent of men and 0.5 percent of women with Northern
    European ancestry have the common form of red-green color blindness.

2.  Tol, Paul (2018). *Colour Schemes*. SRON. Technical Note
    No. SRON/EPS/TN/09-002. URL:
    <https://personal.sron.nl/~pault/data/colourschemes.pdf>.
