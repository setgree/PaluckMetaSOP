#' Count the Number of Unique Observations in a Dataset or Subset
#'
#' This function simplifies the process of counting the number of unique observations in a dataset
#' or a subset by avoiding repetitive use of `summarise('N (unique)' = n_distinct(counting_var))`.
#'
#' @param dataset The dataset or subset.
#' @param counting_var The variable to count unique observations (default: "unique_study_id").
#' @return A tibble with the count of distinct observations.
#' @importFrom dplyr summarise
#' @importFrom dplyr n_distinct
#' @importFrom rlang sym
#' @export
#' @examples
#' \dontrun{
#' sv_data |> study_count()
#' library(purrr)
#' sv_data |> split(~study_design) |> map(study_count) |> bind_rows(.id = "study_design")
#' }
#'
study_count <- function(dataset, counting_var = "unique_study_id") {
  # Convert the string into a symbol
  counting_var_sym <- sym(counting_var)

  # Use the symbol with non-standard evaluation
  result <- dataset |>
    summarise(N_unique = n_distinct(!!counting_var_sym))

  return(result)
}
