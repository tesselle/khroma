
<!-- README.md is generated from README.Rmd. Please edit that file -->

# khroma <img width=120px src="man/figures/logo.png" align="right" />

<!-- badges: start -->

<a href="https://ci.codeberg.org/repos/14693" class="pkgdown-devel"><img
src="https://ci.codeberg.org/api/badges/14693/status.svg"
alt="status-badge" /></a>
<a href="https://packages.tesselle.org/khroma/coverage/"
class="pkgdown-devel"><img
src="https://packages.tesselle.org/khroma/coverage/badge.svg"
alt="Code coverage" /></a>
<a href="https://cran.r-project.org/package=khroma"
class="pkgdown-devel"><img
src="https://tinyverse.netlify.app/badge/khroma"
alt="Dependencies" /></a>

<a href="https://tesselle.r-universe.dev/khroma"
class="pkgdown-devel"><img
src="https://tesselle.r-universe.dev/badges/khroma"
alt="r-universe" /></a>
<a href="https://cran.r-project.org/package=khroma"
class="pkgdown-release"><img
src="https://www.r-pkg.org/badges/version/khroma"
alt="CRAN Version" /></a> <a
href="https://cran.r-project.org/web/checks/check_results_khroma.html"
class="pkgdown-release"><img
src="https://badges.cranchecks.info/worst/khroma.svg"
alt="CRAN checks" /></a>
<a href="https://cran.r-project.org/package=khroma"
class="pkgdown-release"><img
src="https://cranlogs.r-pkg.org/badges/khroma"
alt="CRAN Downloads" /></a>

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1472077.svg)](https://doi.org/10.5281/zenodo.1472077)
<!-- badges: end -->

## Overview

Color blindness affects a large number of individuals. When
communicating scientific results color palettes must therefore be
carefully chosen to be accessible to all readers.

This R package provides an implementation of Okabe and Ito (2008), Tol
(2021) and Crameri (2018) color schemes. These schemes are ready for
each type of data (qualitative, diverging or sequential), with colors
that are distinct for all people, including color-blind readers (see
`vignette("tol")` and `vignette("crameri")` for a more complete
overview). This package also provides tools to simulate color-blindness
and to test how well the colors of any palette are identifiable.

For specific uses, several scientific thematic schemes (geologic
timescale, land cover, FAO soils, etc.) are implemented, but these color
schemes may not be color-blind safe.

All these color schemes are implemented for use with base R **graphics**
or [**ggplot2**](https://cran.r-project.org/package=ggplot2) and
[**ggraph**](https://cran.r-project.org/package=ggraph).

------------------------------------------------------------------------

To cite khroma in publications use:

Frerebeau N (2025). *khroma: Colour Schemes for Scientific Data
Visualization*. Université Bordeaux Montaigne, Pessac, France.
<doi:10.5281/zenodo.1472077> <https://doi.org/10.5281/zenodo.1472077>, R
package version 1.17.0, <https://packages.tesselle.org/khroma/>.

This package is a part of the tesselle project
<https://www.tesselle.org>.

## Installation

You can install the released version of **khroma** from
[CRAN](https://CRAN.R-project.org):

``` r
install.packages("khroma")
```

And the development version from [Codeberg](https://codeberg.org/) with:

``` r
# install.packages("remotes")
remotes::install_git("https://codeberg.org/tesselle/khroma")
```

## Usage

``` r
## Install extra packages (if needed)
# install.packages("ggplot2"))

## Load packages
library(khroma)
```

<details>

<summary>

<strong>Available palettes</strong> (click to expand)
</summary>

``` r
## Get a table of available palettes
info()
#>            palette        type max missing
#> 1             broc   diverging 256    <NA>
#> 2             cork   diverging 256    <NA>
#> 3              vik   diverging 256    <NA>
#> 4           lisbon   diverging 256    <NA>
#> 5           tofino   diverging 256    <NA>
#> 6           berlin   diverging 256    <NA>
#> 7             roma   diverging 256    <NA>
#> 8              bam   diverging 256    <NA>
#> 9           vanimo   diverging 256    <NA>
#> 10         managua   diverging 256    <NA>
#> 11          oleron   diverging 256    <NA>
#> 12          bukavu   diverging 256    <NA>
#> 13             fes   diverging 256    <NA>
#> 14           navia  sequential 256    <NA>
#> 15          naviaW  sequential 256    <NA>
#> 16           devon  sequential 256    <NA>
#> 17         glasgow  sequential 256    <NA>
#> 18         lajolla  sequential 256    <NA>
#> 19          bamako  sequential 256    <NA>
#> 20           davos  sequential 256    <NA>
#> 21          bilbao  sequential 256    <NA>
#> 22            nuuk  sequential 256    <NA>
#> 23            oslo  sequential 256    <NA>
#> 24           grayC  sequential 256    <NA>
#> 25          hawaii  sequential 256    <NA>
#> 26           lapaz  sequential 256    <NA>
#> 27          lipari  sequential 256    <NA>
#> 28           tokyo  sequential 256    <NA>
#> 29            buda  sequential 256    <NA>
#> 30           acton  sequential 256    <NA>
#> 31           turku  sequential 256    <NA>
#> 32           imola  sequential 256    <NA>
#> 33          batlow  sequential 256    <NA>
#> 34         batlowW  sequential 256    <NA>
#> 35         batlowK  sequential 256    <NA>
#> 36           brocO  sequential 256    <NA>
#> 37           corkO  sequential 256    <NA>
#> 38            vikO  sequential 256    <NA>
#> 39           romaO  sequential 256    <NA>
#> 40            bamO  sequential 256    <NA>
#> 41          bright qualitative   7    <NA>
#> 42    highcontrast qualitative   3    <NA>
#> 43         vibrant qualitative   7    <NA>
#> 44           muted qualitative   9 #DDDDDD
#> 45  mediumcontrast qualitative   6    <NA>
#> 46            pale qualitative   6    <NA>
#> 47            dark qualitative   6    <NA>
#> 48           light qualitative   9    <NA>
#> 49 discreterainbow qualitative  23 #777777
#> 50          sunset   diverging  11 #FFFFFF
#> 51       nightfall   diverging  17 #FFFFFF
#> 52            BuRd   diverging   9 #FFEE99
#> 53            PRGn   diverging   9 #FFEE99
#> 54          YlOrBr  sequential   9 #888888
#> 55      iridescent  sequential  23 #999999
#> 56    incandescent  sequential  11 #888888
#> 57   smoothrainbow  sequential  34 #666666
#> 58        okabeito qualitative   8    <NA>
#> 59   okabeitoblack qualitative   8    <NA>
#> 60    stratigraphy qualitative 175    <NA>
#> 61            soil qualitative  24    <NA>
#> 62            land qualitative  14    <NA>
```

</details>

### Color palettes and scales

`color()` returns a function that when called with a single integer
argument returns a vector of colors.

``` r
## Paul Tol's bright color scheme
bright <- color("bright")
bright(7)
#> [1] "#4477AA" "#EE6677" "#228833" "#CCBB44" "#66CCEE" "#AA3377" "#BBBBBB"
#> attr(,"missing")
#> [1] NA
```

``` r
## Plot the color scheme
plot_scheme(bright(7), colours = TRUE)
```

<img src="man/figures/README-usage-show-1.png" style="display: block; margin: auto;" />

``` r
data(mpg, package = "ggplot2")

## Use with graphics
par(mar = c(5, 4, 1, 1) + 0.1)
plot(
  x = mpg$displ,
  y = mpg$hwy,
  pch = 16,
  col = palette_color_picker("bright")(mpg$class),
  xlab = "displ",
  ylab = "hwy",
  panel.first = grid(),
  las = 1
)
```

<img src="man/figures/README-usage-plot-1.png" style="display: block; margin: auto;" />

``` r

## Use with ggplot2
ggplot2::ggplot(data = mpg) +
  ggplot2::aes(x = displ, y = hwy, color = class) +
  ggplot2::geom_point() +
  ggplot2::theme_bw() +
  scale_color_bright()
```

<img src="man/figures/README-usage-plot-2.png" style="display: block; margin: auto;" />

### Diagnostic tools

#### Test how well the colors are identifiable

``` r
## Okabe & Ito's color scheme
okabe <- color("okabe ito")

set.seed(12345)
plot_map(okabe(8))
```

<img src="man/figures/README-usage-map-1.png" style="display: block; margin: auto;" />

``` r
## BuRd sequential color scheme
BuRd <- color("BuRd")

plot_tiles(BuRd(128), n = 256)
```

<img src="man/figures/README-usage-tiles-1.png" style="display: block; margin: auto;" />

#### Simulate color-blindness

``` r
plot_scheme_colorblind(okabe(8))
```

<img src="man/figures/README-usage-colorblind2-1.png" style="display: block; margin: auto;" />

``` r

## ggplot2 default color scheme
## (equally spaced hues around the color wheel)
x <- scales::hue_pal()(8)
plot_scheme_colorblind(x)
```

<img src="man/figures/README-usage-colorblind2-2.png" style="display: block; margin: auto;" />

## Related Works

- [**colorblindr**](https://github.com/clauswilke/colorblindr) allows to
  simulate color-blindness in production-ready R figures.

## Contributing

Please note that the **khroma** project is released with a [Contributor
Code of Conduct](https://www.tesselle.org/conduct.html). By contributing
to this project, you agree to abide by its terms.

## References

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-crameri2018" class="csl-entry">

Crameri, Fabio. 2018. “Geodynamic Diagnostics, Scientific Visualisation
and StagLab 3.0.” *Geoscientific Model Development* 11 (6): 2541–62.
<https://doi.org/10.5194/gmd-11-2541-2018>.

</div>

<div id="ref-okabe2008" class="csl-entry">

Okabe, Masataka, and Key Ito. 2008. “Color Universal Design (CUD): How
to Make Figures and Presentations That Are Friendly to Colorblind
People.” *J\*FLY*. <https://jfly.uni-koeln.de/color/>.

</div>

<div id="ref-tol2021" class="csl-entry">

Tol, Paul. 2021. “Colour Schemes.” Technical note SRON/EPS/TN/09-002
3.2. SRON. <https://sronpersonalpages.nl/~pault/data/colourschemes.pdf>.

</div>

</div>
