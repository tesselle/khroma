# Contributing

This outlines how to propose a change to this package. For more detailed info about contributing to this, and other packages, please see the [**development contributing guide**](https://www.tesselle.org/contributing.html).

## Fixing typos

You can fix typos, spelling mistakes, or grammatical errors in the documentation directly using the GitHub web interface, as long as the changes are made in the _source_ file. This generally means you'll need to edit [roxygen2 comments](https://roxygen2.r-lib.org/articles/roxygen2.html) in an `.R`, not a `.Rd` file. You can find the `.R` file that generates the `.Rd` by reading the comment in the first line.

## Bigger changes

If you want to make a bigger change, it's a good idea to first file an issue and make sure someone from the team agrees that it's needed. If you've found a bug, please file an issue that illustrates the bug with a minimal [reprex](https://www.tidyverse.org/help/#reprex) (this will also help you write a unit test, if needed).

### Pull request process

* Fork the package and clone onto your computer. If you haven't done this before, we recommend using `usethis::create_from_github("tesselle/PACKAGE", fork = TRUE)`.
* Install all development dependencies with `devtools::install_dev_deps()`, and then make sure the package passes R CMD check by running `devtools::check()`.  If R CMD check doesn't pass cleanly, it's a good idea to ask for help before continuing.
* Create a Git branch for your pull request (PR). We recommend using `usethis::pr_init("brief-description-of-change")`.
* Make your changes, commit to git, and then create a PR by running `usethis::pr_push()`, and following the prompts in your browser. The title of your PR should briefly describe the change. The body of your PR should contain `Fixes #issue-number`.
* For user-facing changes, add a bullet to the top of `NEWS.md` (i.e. just below the first header). Follow the style described in <https://documentation.tesselle.org>.

### Code style

* New code should follow the [style guide](https://documentation.tesselle.org).
* We use [roxygen2](https://cran.r-project.org/package=roxygen2), with [Markdown syntax](https://cran.r-project.org/web/packages/roxygen2/vignettes/rd-formatting.html), for documentation.
* We use [testthat](https://cran.r-project.org/package=testthat) for unit tests. Contributions with test cases included are easier to accept.

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](https://www.tesselle.org/conduct.html). By contributing to this project you agree to abide by its terms.
