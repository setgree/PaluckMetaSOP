% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PaluckMetaSOP-package.R
\docType{package}
\name{PaluckMetaSOP-package}
\alias{PaluckMetaSOP-package}
\alias{PaluckMetaSOP}
\title{PaluckMetaSOP: Standard Operating Procedures for Paluck Lab meta-analyses}
\description{
This package implements the Paluck lab's approach to meta-analysis.

It comprises six functions, two datasets, and four vignettes.
The main documentation for this package is in its vignettes.

\href{../doc/overview-of-vignettes.html}{The first vignette} provides an overview
of the next three and where they fit into the overall structure
of a meta-analysis.

\href{../doc/d-calc-vignette.html}{The second vignette} is about
converting a study's results into an estimate of standardized mean
difference, variance, and standard error.

\href{../doc/meta-analysis-vignette.html}{The third vignette} is about actually
doing meta-analysis.

\href{../doc/writing-metas-vignette.html}{The fourth vignette}
is about writing meta-analysis papers.

The six functions are \code{\link{d_calc}}, \code{\link{map_robust}},
\code{\link{study_count}}, \code{\link{sum_lm}}, \code{\link{sum_tab}}, and
\code{\link{var_d_calc}}.

The two datasets are \code{\link{contact_data}}
and \code{\link{sv_data}}. These datasets are used in the vignettes and
function documentation as examples. They come from our papers
'\href{https://doi.org/10.1017/bpp.2018.25}{The Contact Hypothesis Re-evaluated}'
and '\href{https://osf.io/preprints/psyarxiv/xgbzj}{Preventing Sexual Violence — A Behavioral Problem Without a Behaviorally-Informed Solution}',
respectively.

Please install this package with vignettes included via
\code{remotes::install('setgree/PaluckMetaSOP', build_vignettes = T)}.
You can then browse the vignettes with  \code{browseVignettes('PaluckMetaSOP')}.
}
\author{
\strong{Maintainer}: Seth Green \email{sag2212@columbia.edu} (\href{https://orcid.org/0000-0003-3909-1969}{ORCID})

Authors:
\itemize{
  \item John-Henry Pezzuto (\href{https://orcid.org/0000-0001-5213-4201}{ORCID})
}

}
\keyword{internal}
\keyword{package}
