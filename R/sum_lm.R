#' Print Core Results from summary(lm()) in a Neat Table
#'
#' This function translates the output of summary(lm()) into a format that can be used with piping,
#' such as `dat |> filter(some_var) |> sum_lm()` or `dat |> split(~some_var) |> map(sum_lm)`,
#' presenting the results in an easily transcribable table.
#'
#' @param dataset The dataset to be used for regression analysis.
#' @param y The response variable in the linear model.
#' @param x The predictor variable in the linear model.
#' @param coefs_only Logical, indicating whether to display only the coefficients table (default: TRUE).
#' @param dgts Number of digits for rounding coefficients (default: 5).
#' @return If coefs_only is TRUE, returns a rounded coefficients table; otherwise, returns the full summary.
#' @importFrom stats lm as.formula
#' @note `dat` is the default dataset name, but you can put in whatever
#' @export
#'
#' @examples
#'  \dontrun{
#' PaluckMetaSOP::contact_data |> sum_lm()
#' library(dplyr); library(purrr)
#' PaluckMetaSOP::sv_data |> split(~study_design) |> map(sum_lm)
#' }
#'

sum_lm <- function(dataset, y = NULL, x = NULL, coefs_only = TRUE, dgts = 5) {
  if (missing(dataset)) {
    stop("dataset argument is missing.")
  }

  if (missing(y)) {
    if ("d" %in% colnames(dataset)) {
      y <- rlang::sym("d")  # Replace 'd' with the actual column name
    } else {
      stop("Specify 'y' or make sure 'd' exists in the dataset.")
    }
  }

  if (missing(x)) {
    if ("se_d" %in% colnames(dataset)) {
      x <- rlang::sym("se_d")  # Replace 'se_d' with the actual column name
    } else {
      stop("Specify 'x' or make sure 'se_d' exists in the dataset.")
    }
  }

  print_obj <- summary(lm(formula = as.formula(paste(rlang::quo_name(y),
                                                     '~',
                                                     rlang::quo_name(x))),
                          data = dataset))

  if (coefs_only) {
    coef_table <- as.data.frame(print_obj$coefficients)
    return(round(coef_table, digits = dgts))
  } else {
    return(print_obj)
  }
}
