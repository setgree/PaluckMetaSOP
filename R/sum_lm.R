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

sum_lm <- function(dataset = NULL, y = NULL, x = NULL, coefs_only = TRUE, dgts = 5) {
  if (!requireNamespace("dplyr", quietly = TRUE)) {
    message("Install dplyr before you run this function.")
    return(invisible())
  }
  if (missing(dataset)) {
    dataset <- dat  # Replace 'dat' with the actual default dataset
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


  print_obj <- summary(lm(formula = as.formula(paste(rlang::quo_name(y), '~',
                                                     rlang::quo_name(x))),
                          data = dataset))

  if (coefs_only) {
    return(round(print_obj$coefficients, digits = dgts))
  } else {
    return(print_obj)
  }
}
