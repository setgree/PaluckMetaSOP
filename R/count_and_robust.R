#' Count Unique Observations and Perform Robust Meta-Analysis
#'
#' This helper function combines the functionality of counting unique observations and
#' performing a robust meta-analysis on a dataset. It is designed to streamline the process
#' of obtaining both counts and meta-analysis results for subsets of a dataset.
#' The function utilizes the `study_count` function to count the number of unique observations,
#' and the `map_robust` function to perform a robust meta-analysis on the given dataset.
#'
#' @param data The dataset or subset for which to count unique observations and perform meta-analysis.
#' @return A tibble with the count of distinct observations and meta-analysis results.
#'   The tibble includes columns for unique observation count, beta coefficient, standard error (se),
#'   and p-value for the meta-analysis.
#' @importFrom dplyr bind_cols
#' @importFrom knitr kable
#' @export
count_and_robust <- function(data) {
  # Get the study count
  study_count_data <- study_count(data)

  # Perform the robust analysis
  robust_data <- map_robust(data)

  # Bind the columns together
  result <- bind_cols(study_count_data, robust_data)

  return(result)
}
