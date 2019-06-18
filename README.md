
<!-- README.md is generated from README.Rmd. Please edit that file -->

# khroma <img width=120px src="man/figures/logo.png" align="right" />

[![Appveyor build
status](https://ci.appveyor.com/api/projects/status/d4hib2u0jqsup0ln/branch/master?svg=true)](https://ci.appveyor.com/project/nfrerebeau/khroma/branch/master)
[![Travis build
Status](https://travis-ci.org/nfrerebeau/khroma.svg?branch=master)](https://travis-ci.org/nfrerebeau/khroma)
[![codecov](https://codecov.io/gh/nfrerebeau/khroma/branch/master/graph/badge.svg)](https://codecov.io/gh/nfrerebeau/khroma)

[![GitHub
Release](https://img.shields.io/github/release/nfrerebeau/khroma.svg)](https://github.com/nfrerebeau/khroma/releases)
[![CRAN
Version](http://www.r-pkg.org/badges/version/khroma)](https://cran.r-project.org/package=khroma)
[![CRAN
Downloads](http://cranlogs.r-pkg.org/badges/khroma)](https://cran.r-project.org/package=khroma)

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1472077.svg)](https://doi.org/10.5281/zenodo.1472077)

## Overview

An implementation of Paul Tol’s colour schemes, ready for each type of
data, with colours that are distinct for all people, including
colour-blind readers. This package also provides several thematic
palettes (geologic timescale, land cover, FAO soils, etc.) with scales
for `ggplot2`.

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

All the scales presented in his 2018 technical note \[1\] are
implemented here, for use with `graphics` or `ggplot2`.

#### Qualitative data

![](man/figures/README-tol-qualitative-1.png)<!-- -->

#### Diverging data

![](man/figures/README-tol-diverging-1.png)<!-- -->

#### Sequential data

![](man/figures/README-tol-sequential-1.png)<!-- -->

### Scientific colour schemes

The following scientific colour schemes are available:

  - International Chronostratigraphic Chart.
  - AVHRR Global Land Cover Classification.
  - FAO Soil Reference Groups.

More will be added in future releases (suggestions are welcome).

1.  Tol, Paul (2018). *Colour Schemes*. SRON. Technical Note
    No. SRON/EPS/TN/09-002. URL:
    <https://personal.sron.nl/~pault/data/colourschemes.pdf>.
