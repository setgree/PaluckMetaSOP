#' Contact Data
#'
#' A dataset containing various studies related to the contact hypothesis.
#' The contact hypothesis suggests that interpersonal contact between groups
#' can reduce prejudice and improve social relations.These studies are all
#' Randomized Controlled Trials with at least a single dat of delay in between
#' the commencement of treatment and outcome measurement.
#'
#' @format A data frame with 34 rows and 19 columns:
#' \describe{
#'   \item{Study}{Name of the study.}
#'   \item{name_short}{Shortened or abbreviated name of the study.}
#'   \item{pub_date}{Publication year of the study.}
#'   \item{target}{Numerical code representing the target group of the study (e.g., religion, race, LGBT).}
#'   \item{target_spelled_out}{Detailed description of the target group.}
#'   \item{pop}{Numerical code representing the population segment studied (e.g., adults, college students).}
#'   \item{pop_spelled_out}{Detailed description of the population segment.}
#'   \item{unstand}{Unstandardized effect size of the study's finding.}
#'   \item{statistic}{Type of statistical result or method used in the study (e.g., beta, T-test).}
#'   \item{n_t}{Sample size of the treatment group.}
#'   \item{n_c}{Sample size of the control group.}
#'   \item{sd_c}{Standard deviation of the control group.}
#'   \item{d}{Standardized effect size measure (Glass's ∆ (Delta)).}
#'   \item{var_d}{Variance of the standardized effect size.}
#'   \item{se_d}{Standard error of the standardized effect size.}
#'   \item{p_a_p}{Indicates presence (1) or absence (0) of post-assignment/pre-treatment data.}
#'   \item{excluded}{Indicates whether the study was excluded (1) or included (0) in certain analyses.}
#'   \item{publish}{Numerical code indicating the publication status or venue.}
#'   \item{days_delay}{Number of days between study assignment and treatment.}
#'   \item{unique_study_id}{a unique numeric identifier for each study.}
#' }
#' @source This dataset was constructed by one author (SA Green) of the package
#'  for "The contact hypothesis re-evaluated" by EL Paluck, SA Green, and DP Green,
#'  published in 2018 in Behavioural Public Policy, Issue 3 (2), pages 129–155.
#' @keywords datasets
"contact_data"
