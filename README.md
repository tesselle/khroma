
<!-- README.md is generated from README.Rmd. Please edit that file -->

# khroma <img width=120px src="man/figures/logo.svg" align="right" />

[![Build
Status](https://travis-ci.org/nfrerebeau/khroma.svg?branch=master)](https://travis-ci.org/nfrerebeau/khroma)
[![codecov](https://codecov.io/gh/nfrerebeau/khroma/branch/master/graph/badge.svg)](https://codecov.io/gh/nfrerebeau/khroma)
[![GitHub
Release](https://img.shields.io/github/release/nfrerebeau/khroma.svg)](https://github.com/nfrerebeau/khroma/releases)
[![CRAN
Version](http://www.r-pkg.org/badges/version/khroma)](https://cran.r-project.org/package=khroma)
[![CRAN
Downloads](http://cranlogs.r-pkg.org/badges/khroma)](https://cran.r-project.org/package=khroma)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1472077.svg)](https://doi.org/10.5281/zenodo.1472077)

## Overview

`khroma` is a utility package: it provides usefull colour schemes for
archaeological data visualization. `khroma` provides Paul Tol’s colour
schemes and several thematic palettes (geologic timescale, land cover,
FAO Soil Reference Groups, etc.) with scales for `ggplot2`.

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

  - Distinct for all people, including colour-blind readers;
  - Distinct from black and white;
  - Distinct on screen and paper;
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
  - AVHRR global land cover classification.
  - FAO Soil Reference Groups.

More will be added in future releases (suggestions are welcome).

1.  Tol, Paul (2018). *Colour Schemes*. SRON. Technical Note
    No. SRON/EPS/TN/09-002. URL:
    <https://personal.sron.nl/~pault/data/colourschemes.pdf>.
