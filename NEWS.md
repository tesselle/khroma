# khroma 1.11.0.9000

# khroma 1.11.0
## Bugfixes & changes
*  Fix `ramp()` to return a palette function with argument a vector of values that are mapped to colors.

## Internals
* Use **tinytest** and **tinysnapshot** instead of **testthat** and **vdiffr**.

# khroma 1.10.0
## Bugfixes & changes
*  Add Okabe Ito colour scale with black at last position (#12, thanks to @ustervbo). 

# khroma 1.9.0
## New functions
* Add `ramp()` to produce a colour scheme that map a `numeric` vector to colours (allow rescaling to a specific midpoint).
* Add `scale_*_logical()` for `logical` values.

## Bugfixes & changes
* Fix `scale_colour_okabeito()` and `scale_fill_okabeito()` (unnamed arguments were passed in the wrong order).

# khroma 1.8.0
## New functions
* Add `plot_tiles()` to produce a diagnostic map for a given colour scheme.
* Add `scale_*_picker()` and `scale_edge_*_picker()` to build scales for **ggplot2** and **ggraph**.
* Add **ggraph** scale functions `scale_edge_colour_*()` and `scale_edge_fill_*()` (#10).

## Bugfixes & changes
* Fix test broken by **testthat** 3.1.2 (#11, thanks to @hadley).

# khroma 1.7.0
## New functions
* Add Paul Tol's high and medium contrast colour schemes: `scale_*_mediumcontrast` and `scale_*_highcontrast` (#9).

## Bugfixes & changes
* Deprecate `scale_*_contrast`.

# khroma 1.6.0
## New functions
* Add `info()` to get a table of all available palettes.

## Internals
* Move **ggplot2**, **scales** and **spacesXYZ** from Imports to Suggests (#8).

# khroma 1.5.0
## New functions
* Add Fabio Crameri's *Scientific colour* schemes (35 new colour schemes).
* Add **ggplot2** scale functions:
  * Diverging Colour Schemes: `scale_*_broc`, `scale_*_cork`, `scale_*_vik`, `scale_*_lisbon`, `scale_*_tofino`, `scale_*_berlin`, `scale_*_roma`, `scale_*_bam`, `scale_*_vanimo`.
  * Sequential colour schemes: `scale_*_batlow`, `scale_*_batlowW`, `scale_*_batlowK`, `scale_*_devon`, `scale_*_lajolla`, `scale_*_bamako`, `scale_*_davos`, `scale_*_bilbao`, `scale_*_nuuk`, `scale_*_oslo`, `scale_*_grayC`, `scale_*_hawaii`, `scale_*_lapaz`, `scale_*_tokyo`, `scale_*_buda`, `scale_*_acton`, `scale_*_turku`, `scale_*_imola`.
  * Multi-sequential colour schemes: `scale_*_oleron`, `scale_*_bukavu`, `scale_*_fes`.
  * Cyclic colour schemes: `scale_*_brocO`, `scale_*_corkO`, `scale_*_vikO`, `scale_*_romaO`, `scale_*_bamO`.

# khroma 1.4.1
## Bugfixes & changes
* `scale_*_sunset()`, `scale_*_BuRd()` and `scale_*_PRGn()` gained a new argument to be used with discrete data (#7).
* Fix conflict with the `name` argument of `ggplot2::discrete_scale()` and `ggplot2::scale_continuous()`.

# khroma 1.4.0
## New functions
* Add a `compare()` function to compute CIELAB distance metric.
* Add a `plot()` function.
* Add a `plot_scheme_colourblind()` function (#4, thanks to @vincentarelbundock).
* Add Okabe and Ito (2008) colour scheme.

## Bugfixes & changes
* Restrict the RGB values in the `anomalize()` function (#5, thanks to @vincentarelbundock).
* `plot_scheme()` now display colour for bad/missing data (if any).
* `colour()` output can be restricted to a fraction of the cheme's colour domain (#6).
* `colour()` gained a new argument to force interpolation of colour scheme.
* `colour()` gained a new argument to choose colour names language.
* `scale_*_YlOrBr()`, `scale_*_iridescent()` and `scale_*_smoothrainbow()` gained a new argument to be used with discrete data (#3).

## Internals
* Move **ggplot2** and **scales** from Suggests to Imports.

# khroma 1.3.0
## Bugfixes & changes
* Fix qualitative colour picking.
* Fix typos in colour names (#2).
* Remove `scale_*_rainbow()`.
* Use **crayon** if installed to nicely print colours in the console.

## Internals
* Move **ggplot2** and **scales** from Imports to Suggests.

# khroma 1.2.0
## New functions
* Add the `convert()` function to simulate colour-blind vision.
* Add the `plot_scheme()` function to shows colours in a plot.
* Add the `plot_map()` function to produces a diagnostic map for a given colour scheme.

## Bugfixes & changes
* Fix the argument (number of levels) of the palette function returned by `colour()`.

## Internals
* Add a vignette for Paul Tol's colour schemes.

# khroma 1.1.3
## New functions
* Add three **ggplot2** scale functions: `scale_*_pale()`, `scale_*_dark()` and `scale_*_discreterainbow()`.

## Bugfixes & changes
* The function `scale_*_rainbow()` is deprecated and replaced by `scale_*_discreterainbow()`.
* Fix the `missing` attribute of the palette function returned by `colour()` (bug introduced in v1.1.2).

## Internals
* The documentation is expanded with several remarks on the use of Paul Tol's colour schemes.

# khroma 1.1.2
## New functions
* Add three **ggplot2** scale functions: `scale_*_contrast()`, `scale_*_iridescent()` and `scale_*_land()`.

## Bugfixes & changes
* Add three colour schemes: Paul Tol's *high contrast* (qualitative), *iridescent* (sequential) and modified colour scheme for the AVHRR global *land cover* classification.
* Remove `scale_*_tol()`.
* Remove `arrange()`.

# khroma 1.1.1
## Bugfixes & changes
* Midpoint can be specified in diverging colour scales.
* Colour schemes can be reversed (a bug made the `reverse` argument inoperative).

## Internals
* Reduce required R version to 3.1.

# khroma 1.1.0
## New functions
* Add specific **ggplot2** scale functions for Paul Tol's colour schemes: `scale_*_bright()`, `scale_*_vibrant()`, `scale_*_muted()`, `scale_*_light()`, `scale_*_rainbow()` (qualitative), `scale_*_sunset()`, `scale_*_BuRd()`, `scale_*_PRGn()` (diverging), `scale_*_YlOrBr()`, `scale_*_smoothrainbow()` (sequential).

## Bugfixes & changes
* The function `scale_*_tol()` is deprecated.
* Add the *FAO Soil Reference Groups* colour scheme.

# khroma 1.0.0
* First release (initial version on CRAN).
