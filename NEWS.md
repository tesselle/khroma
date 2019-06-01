




<!-- NEWS.md is generated from NEWS.Rmd. Please edit that file -->

<!-- ## khroma 1.1.1.9000 (2019-06-01) -->

## khroma v1.1.2 (release date: 2019-06-01)

### New functions

  - Add three colour schemes: Paul Tol’s *hight contrast* (qualitative),
    *iridescent* (sequential) and modified colour scheme for the AVHRR
    global *land cover* classification.
  - Add three `ggplot2` scale functions: `scale_*_contrast()`,
    `scale_*_iridescent()` and `scale_*_land()`.

### Bugfixes & changes

  - The function `scale_*_tol()` is removed.

### Internals

  - The function `arrange()` is removed.

## khroma v1.1.1 (release date: 2019-04-10)

### Bugfixes & changes

  - Midpoint can be specified in diverging colour scales.
  - Colour schemes can be reversed (a bug made the `reverse` argument
    inoperative).

### Internals

  - Reduce required R version to 3.1.

## khroma v1.1.0 (release date: 2019-02-24)

### New functions

  - Add specific `ggplot2` scale functions for Paul Tol’s colour
    schemes: `scale_*_bright()`, `scale_*_vibrant()`, `scale_*_muted()`,
    `scale_*_light()`, `scale_*_rainbow()` (qualitative),
    `scale_*_sunset()`, `scale_*_BuRd()`, `scale_*_PRGn()` (diverging),
    `scale_*_YlOrBr()`, `scale_*_smoothrainbow()` (sequential).

### Bugfixes & changes

  - The function `scale_*_tol()` is deprecated.

### Enhancements

  - Add the *FAO Soil Reference Groups* colour scheme.

## khroma v1.0.0 (release date: 2018-10-19)

  - First release (initial version on CRAN).
