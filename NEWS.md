# khroma 1.4.1
## Bugfixes & changes
* `scale_*_sunset()`, `scale_*_BuRd()` and `scale_*_PRGn()` gained a new argument to be used with discrete data (#7).

# khroma 1.4.0
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4067906.svg)](https://doi.org/10.5281/zenodo.4067906)

## New functions
* Add a `compare()` function to compute CIELAB distance metric.
* Add a `plot()` function.
* Add a `plot_scheme_colourblind()` function (#4).
* Add Okabe and Ito (2008) colour scheme.

## Bugfixes & changes
* Restrict the RGB values in the `anomalize()` function (#5).
* `plot_scheme()` now display colour for bad/missing data (if any).
* `colour()` output can be restricted to a fraction of the cheme's colour domain (#6).
* `colour()` gained a new argument to force interpolation of colour scheme.
* `colour()` gained a new argument to choose colour names language.
* `scale_*_YlOrBr()`, `scale_*_iridescent()` and `scale_*_smoothrainbow()` gained a new argument to be used with discrete data (#3).

## Internals
* Move **ggplot2** and **scales** from Suggests to Imports.

# khroma 1.3.0
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3519838.svg)](https://doi.org/10.5281/zenodo.3519838)

## Bugfixes & changes
* Fix qualitative colour picking.
* Fix typos in colour names (#2).
* Remove `scale_*_rainbow()`.
* Use **crayon** if installed to nicely print colours in the console.

## Internals
* Move **ggplot2** and **scales** from Imports to Suggests.

# khroma 1.2.0
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3371615.svg)](https://doi.org/10.5281/zenodo.3371615)

## New functions
* Add the `convert()` function to simulate colour-blind vision.
* Add the `plot_scheme()` function shows colours in a plot.
* Add the `plot_map()` function produces a diagnostic map for a given colour scheme.

## Bugfixes & changes
* Fix the argument (number of levels) of the palette function returned by `colour()`.

## Internals
* Add a vignette for Paul Tol's colour schemes.

# khroma 1.1.3
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3239344.svg)](https://doi.org/10.5281/zenodo.3239344)

## New functions
* Add three {ggplot2} scale functions: `scale_*_pale()`, `scale_*_dark()` and `scale_*_discreterainbow()`.

## Bugfixes & changes
* The function `scale_*_rainbow()` is deprecated and replaced by `scale_*_discreterainbow()`.
* Fix the `missing` attribute of the palette function returned by `colour()` (bug introduced in v1.1.2).

## Internals
* The documentation is expanded with several remarks on the use of Paul Tol's colour schemes.

# khroma 1.1.2
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3237015.svg)](https://doi.org/10.5281/zenodo.3237015)

## New functions
* Add three **ggplot2** scale functions: `scale_*_contrast()`, `scale_*_iridescent()` and `scale_*_land()`.

## Bugfixes & changes
* Add three colour schemes: Paul Tol's *high contrast* (qualitative), *iridescent* (sequential) and modified colour scheme for the AVHRR global *land cover* classification.
* Remove `scale_*_tol()`.
* Remove `arrange()`.

# khroma 1.1.1
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2635680.svg)](https://doi.org/10.5281/zenodo.2635680)

## Bugfixes & changes
* Midpoint can be specified in diverging colour scales.
* Colour schemes can be reversed (a bug made the `reverse` argument inoperative).

## Internals
* Reduce required R version to 3.1.

# khroma 1.1.0
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2577258.svg)](https://doi.org/10.5281/zenodo.2577258)

## New functions
* Add specific **ggplot2** scale functions for Paul Tol's colour schemes: `scale_*_bright()`, `scale_*_vibrant()`, `scale_*_muted()`, `scale_*_light()`, `scale_*_rainbow()` (qualitative), `scale_*_sunset()`, `scale_*_BuRd()`, `scale_*_PRGn()` (diverging), `scale_*_YlOrBr()`, `scale_*_smoothrainbow()` (sequential).

## Bugfixes & changes
* The function `scale_*_tol()` is deprecated.
* Add the *FAO Soil Reference Groups* colour scheme.

# khroma 1.0.0
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1472078.svg)](https://doi.org/10.5281/zenodo.1472078)

* First release (initial version on CRAN).
