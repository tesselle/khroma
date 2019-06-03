




<!-- NEWS.md is generated from NEWS.Rmd. Please edit that file -->

# khroma 1.1.2.9000 (2019-06-03)

## New functions

  - Add three `ggplot2` scale functions: `scale_*_pale()`,
    `scale_*_dark()` and `scale_*_discreterainbow()`.

## Bugfixes & changes

  - The function `scale_*_rainbow()` is deprecated and replaced by
    `scale_*_discreterainbow()`.
  - Fix the `missing` attribute of the palette function returned by
    `colour()`.

## Enhancements

  - The documentation is expanded with several remarks on the use of
    Paul Tol’s colour schemes.

# khroma 1.1.2 (release date: 2019-06-02)

## New functions

  - Add three `ggplot2` scale functions: `scale_*_contrast()`,
    `scale_*_iridescent()` and `scale_*_land()`.

## Bugfixes & changes

  - The function `scale_*_tol()` is removed.

## Enhancements

  - Add three colour schemes: Paul Tol’s *hight contrast* (qualitative),
    *iridescent* (sequential) and modified colour scheme for the AVHRR
    global *land cover* classification.

## Internals

  - The function `arrange()` is removed.

# khroma 1.1.1 (release date: 2019-04-10)

## Bugfixes & changes

  - Midpoint can be specified in diverging colour scales.
  - Colour schemes can be reversed (a bug made the `reverse` argument
    inoperative).

## Internals

  - Reduce required R version to 3.1.

# khroma 1.1.0 (release date: 2019-02-24)

## New functions

  - Add specific `ggplot2` scale functions for Paul Tol’s colour
    schemes: `scale_*_bright()`, `scale_*_vibrant()`, `scale_*_muted()`,
    `scale_*_light()`, `scale_*_rainbow()` (qualitative),
    `scale_*_sunset()`, `scale_*_BuRd()`, `scale_*_PRGn()` (diverging),
    `scale_*_YlOrBr()`, `scale_*_smoothrainbow()` (sequential).

## Bugfixes & changes

  - The function `scale_*_tol()` is deprecated.

## Enhancements

  - Add the *FAO Soil Reference Groups* colour scheme.

# khroma 1.0.0 (release date: 2018-10-19)

  - First release (initial version on CRAN).
