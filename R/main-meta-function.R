#' meta_engine
#' 
#' @description Internal function for `meta_analyze()` (defined below)
#' @details Here the data is nested into mini-datasets based on `group_vars`.
#' Data is extracted from mini-datasets and then meta-analysis is run.
#' Statistics are then extracted from the meta-analysis object.
#' 
#' @param df The dataset
#' @param group_vars Variables for grouping
#' @return Data after meta-analysis
meta_engine <- function(df, group_vars){
  if (!requireNamespace("dplyr", quietly = TRUE) ||
      !requireNamespace("tidyr", quietly = TRUE) ||
      !requireNamespace("purrr", quietly = TRUE) ||
      !requireNamespace("metafor", quietly = TRUE)) {
    stop("Required packages are not installed. Please install the required packages.")
  }
  
  # Rest of your function remains unchanged...
}

#' meta_analyze
#' 
#' @description Main meta analysis function for paper
#' @details This function serves three main purposes:
#' 1) Prepare the data into subgroups for `meta_engine`
#' 2) Call `meta_engine` function where the main analysis is produced
#' 3) Export the output into a .csv file with consistent naming conventions
#' 
#' @param ... Group variables
#' @param treatment_size_eqlgrtr_than Minimum treatment size
#' @param treatment_size_less_than Maximum treatment size
#' @param drop_clusters Drop clusters flag
#' @param keep_data Keep data flag
#' @param add_lai_data Add lai data flag
#' @param add_many_labs Add many labs flag
#' @param lab_only Lab only flag
#' @param online_only Online only flag
#' @param field_only Field only flag
#' @param output_file Output file flag
#' @return Output data
meta_analyze <- function(
    ..., 
    treatment_size_eqlgrtr_than = 0, 
    treatment_size_less_than = Inf, 
    drop_clusters = FALSE, 
    keep_data = FALSE, 
    add_lai_data = FALSE, 
    add_many_labs = FALSE, 
    lab_only = FALSE, 
    online_only = FALSE, 
    field_only = FALSE, 
    output_file = FALSE
){
  if (!requireNamespace("dplyr", quietly = TRUE) ||
      !requireNamespace("tidyr", quietly = TRUE) ||
      !requireNamespace("purrr", quietly = TRUE) ||
      !requireNamespace("metafor", quietly = TRUE)) {
    stop("Required packages are not installed. Please install the required packages.")
  }
  
  # Rest of your function remains unchanged...
}
