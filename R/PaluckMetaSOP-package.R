#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
#' @title PaluckMetaSOP: Standard Operating Procedures for Meta-Analysis
#' @description
#'
#' It comprises six functions, two datasets, and four vignettes.
#' The main documentation for this package is in its vignettes.
#'
#' [The first vignette](../doc/overview-of-vignettes.html) provides an overview
#' of the next three and where they fit into the overall structure
#' of a meta-analysis.
#'
#' [The second vignette](../doc/d-calc-vignette.html) is about
#' converting a study's results into an estimate of standardized mean
#' difference, variance, and standard error.
#'
#' [The third vignette](../doc/meta-analysis-vignette.html) is about actually
#' doing meta-analysis.
#'
#' [The fourth vignette](../doc/writing-metas-vignette.html)
#' is about writing meta-analysis papers.
#'
#' The six functions are \code{\link{d_calc}}, \code{\link{map_robust}},
#'  \code{\link{study_count}}, \code{\link{sum_lm}}, \code{\link{sum_tab}}, and
#'  \code{\link{var_d_calc}}.
#'
#'  The two datasets are \code{\link{contact_data}}
#'  and \code{\link{sv_data}}. These datasets are used in the vignettes and
#'  function documentation as examples. They come from our papers
#' '[The Contact Hypothesis Re-evaluated](https://doi.org/10.1017/bpp.2018.25)'
#' and '[Preventing Sexual Violence — A Behavioral Problem Without a Behaviorally-Informed Solution](https://osf.io/preprints/psyarxiv/xgbzj)',
#' respectively.
#'
#' Please install this package with vignettes included via
#' `remotes::install_github('setgree/PaluckMetaSOP', build_vignettes = TRUE)`.
#' You can then browse the vignettes with `browseVignettes('PaluckMetaSOP')`.
#'
#' @name PaluckMetaSOP-package
#' @aliases PaluckMetaSOP
#' @keywords package
NULL

