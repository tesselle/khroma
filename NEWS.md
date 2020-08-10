## khroma 1.4.0
### New functions
* Add a plot_scheme_colourblind function.

### Bugfixes & changes
* Restrict the RGB values in the `anomalize` function.

### Internals
* Move {ggplot2} and {scales} from Suggests to Imports.

## khroma 1.3.0 (CRAN release date: 2019-10-26)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3519838.svg)](https://doi.org/10.5281/zenodo.3519838)

### Bugfixes & changes
* Fix qualitative colour picking.
* Fix typos in colour names (#2).

### Enhancements
* Use {crayon} if installed to nicely print colours in the console.

### Internals
* Move {ggplot2} and {scales} from Imports to Suggests.
* Remove `scale_*_rainbow()`.

## khroma 1.2.0 (CRAN release date: 2019-08-19)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3371615.svg)](https://doi.org/10.5281/zenodo.3371615)

### New functions
* Add the `convert()` function to simulate colour-blind vision.
* Add the `plot_scheme()` function shows colours in a plot.
* Add the `plot_map()` function produces a diagnostic map for a given colour scheme.

### Bugfixes & changes
* Fix the argument (number of levels) of the palette function returned by `colour()`.

### Enhancements
* Add a vignette for Paul Tol's colour schemes.

## khroma 1.1.3 (CRAN release date: 2019-06-05)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3239344.svg)](https://doi.org/10.5281/zenodo.3239344)

### New functions
* Add three {ggplot2} scale functions: `scale_*_pale()`, `scale_*_dark()` and `scale_*_discreterainbow()`.

### Bugfixes & changes
* The function `scale_*_rainbow()` is deprecated and replaced by `scale_*_discreterainbow()`.
* Fix the `missing` attribute of the palette function returned by `colour()` (bug introduced in v1.1.2).

### Enhancements
* The documentation is expanded with several remarks on the use of Paul Tol's colour schemes.

## khroma 1.1.2 (CRAN release date: 2019-06-02)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3237015.svg)](https://doi.org/10.5281/zenodo.3237015)

### New functions
* Add three {ggplot2} scale functions: `scale_*_contrast()`, `scale_*_iridescent()` and `scale_*_land()`.

### Bugfixes & changes
* The function `scale_*_tol()` is removed.

### Enhancements
* Add three colour schemes: Paul Tol's *high contrast* (qualitative), *iridescent* (sequential) and modified colour scheme for the AVHRR global *land cover* classification.

### Internals
* The function `arrange()` is removed.

## khroma 1.1.1 (CRAN release date: 2019-04-10)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2635680.svg)](https://doi.org/10.5281/zenodo.2635680)

### Bugfixes & changes
* Midpoint can be specified in diverging colour scales.
* Colour schemes can be reversed (a bug made the `reverse` argument inoperative).

### Internals
* Reduce required R version to 3.1.

## khroma 1.1.0 (CRAN release date: 2019-02-24)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2577258.svg)](https://doi.org/10.5281/zenodo.2577258)

### New functions
* Add specific {ggplot2} scale functions for Paul Tol's colour schemes: `scale_*_bright()`, `scale_*_vibrant()`, `scale_*_muted()`, `scale_*_light()`, `scale_*_rainbow()` (qualitative), `scale_*_sunset()`, `scale_*_BuRd()`, `scale_*_PRGn()` (diverging), `scale_*_YlOrBr()`, `scale_*_smoothrainbow()` (sequential).

### Bugfixes & changes
* The function `scale_*_tol()` is deprecated.

### Enhancements
* Add the *FAO Soil Reference Groups* colour scheme.

## khroma 1.0.0 (CRAN release date: 2018-10-19)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1472078.svg)](https://doi.org/10.5281/zenodo.1472078)

* First release (initial version on CRAN).
