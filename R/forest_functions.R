#' Add parentheses around elements in a vector
#'
#' @param vector A vector of elements
#' @return A vector with each element enclosed in parentheses
add_parenthesis <- function(vector){
  out <- as.vector(paste0("(", vector, ")"))
  out
}

#' Generate a forest plot for all data
#'
#' @param df_all Data frame containing all data
#' @param label_pos Position of the labels
#' @return A ggplot object for the forest plot
#' @import ggplot2
all_forest_template <- function(df_all, label_pos = 1.15){
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Required package 'ggplot2' is not installed.")
  }

  label_pos = label_pos
  # ... (rest of the function remains unchanged)
}

#' Prepare meta data for plotting
#'
#' @param subfield_df Data frame for subfield
#' @param overall_df Overall data frame
#' @param subfield_var Variable representing subfield
#' @return Prepared data for meta analysis plotting
#' @import dplyr tidyr rlang stringr
prep_meta_data <- function(subfield_df, overall_df = overall, subfield_var){
  missing_packages <- character(0)

  if (!requireNamespace("dplyr", quietly = TRUE)) {
    missing_packages <- c(missing_packages, "'dplyr'")
  }
  if (!requireNamespace("tidyr", quietly = TRUE)) {
    missing_packages <- c(missing_packages, "'tidyr'")
  }
  if (!requireNamespace("stringr", quietly = TRUE)) {
    missing_packages <- c(missing_packages, "'stringr'")
  }

  if (length(missing_packages) > 0) {
    stop(paste("Required package(s)", paste(missing_packages, collapse = ", "), "is/are not installed."))
  }

  x <- enquo(subfield_var)

  subfield_df |>
    bind_rows(overall_df) |>
    mutate(!!x := fct_explicit_na(!!x, "Overall"),
           col = ifelse(!!x == "Overall", 1, 0),
           col = factor(col, nmax = 4),
           beta = round(beta, 3),
           label = fct_inorder(paste0(str_to_title(!!x), " (n = ", n_studies, ")")),
           label = fct_reorder(label, beta),
           ci_label = str_c("[", round(ci.lb, 2),"-",round(ci.ub, 2), "]"),
           order = row_number(beta))
}


#' Save a forest plot as an image
#'
#' @param name Name of the file to save
#' @param width Width of the image
#' @param height Height of the image
#' @return None
#' @import ggplot2
save_forest <- function(name, width = 13, height = 8){
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Required package 'ggplot2' is not installed.")
  }

  ggsave(name, width = 13, height = 7)
}

#' Add a standard error label
#' @param df dataset to add standard error label to
#' @import broom
se_label <- function(df){
  tidy(lm(d ~ st_err_d, data = df))[,3] |>
    mutate(std.error = round(std.error, 2)) |>
    pull() |>
    add_parenthesis() |>
    str_c(., collapse = "  ")
}
