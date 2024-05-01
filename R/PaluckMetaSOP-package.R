#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
#' @title PaluckMetaSOP: Standard Operating Procedures for Meta-Analysis
#' @description
#'
#' This package currently includes six functions: \code{\link{d_calc}}, \code{\link{map_robust}}, \code{\link{study_count}},
#' \code{\link{sum_lm}}, \code{\link{sum_tab}}, and \code{\link{var_d_calc}}.
#'
#' It also includes two datasets from the Paluck Lab's meta-analyses:
#' \code{\link{contact_data}} and  \code{\link{sv_data}}. These datasets
#' are used in the vingettes and function documentation for as examples of
#' how to use the functions.
#'
#' The main documentation for this package is in its vignettes. The first
#' provides an overview of the meta-analytic procedure and what these functions
#' are meant to help with. The second is about converting a study's results into
#' an estimate of standardized mean difference. The third is about doing meta-analysis.
#' The fourth is about how we write meta-analysis papers.
#'
#' Make sure you install with vignettes included:
#' `remotes::install('setgree/PaluckMetaSOP', build_vignettes = T)`
#' and then run `browseVignettes('PaluckMetaSOP')`.
#'
#' @name PaluckMetaSOP-package
#' @aliases PaluckMetaSOP
#' @keywords package
NULL

