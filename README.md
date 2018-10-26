
<!-- README.md is generated from README.Rmd. Please edit that file -->
khroma
======

[![Build Status](https://travis-ci.org/nfrerebeau/khroma.svg?branch=master)](https://travis-ci.org/nfrerebeau/khroma) [![CRAN status](https://www.r-pkg.org/badges/version/khroma)](https://cran.r-project.org/package=khroma) [![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing) [![DOI](https://zenodo.org/badge/152768624.svg)](https://zenodo.org/badge/latestdoi/152768624)

Overview
--------

`khroma` is a utility package: it provides usefull colour schemes for archaeological data visualization. `khroma` provides Paul Tol's colour schemes and several thematic palettes (geologic timescale, etc.) with scales for `ggplot2`.

Installation
------------

Install the released version of khroma from CRAN:

``` r
install.packages("khroma")
```

Or install the development version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("nfrerebeau/khroma")
```

Usage
-----

### Paul Tol's Colour Schemes

Paul Tol offers carefully chosen schemes, ready for each type of data, with colours that are:

-   distinct for all people, including colour-blind readers;
-   distinct from black and white;
-   distinct on screen and paper;
-   matching well together.

All the scales presented in his 2018 technical [1] note are implemented here, for use with `graphics` or `ggplot2`.

#### Qualitative data

![](man/figures/README-tol-qualitative-1.png)

#### Diverging data

![](man/figures/README-tol-diverging-1.png)

#### Sequential data

![](man/figures/README-tol-sequential-1.png)

### Scientific colour schemes

For now, the only scientific colour scheme available is that of the International Chronostratigraphic Chart. More will be added in future releases (suggestions are welcome).

[1] Tol, Paul (2018). *Colour Schemes*. SRON. Technical Note No. SRON/EPS/TN/09-002. URL: <https://personal.sron.nl/~pault/data/colourschemes.pdf>.
