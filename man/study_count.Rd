% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/study_count.R
\name{study_count}
\alias{study_count}
\title{Count the Number of Unique Observations in a Dataset or Subset}
\usage{
study_count(dataset, counting_var = "unique_study_id")
}
\arguments{
\item{dataset}{The dataset or subset.}

\item{counting_var}{The variable to count unique observations (default: "unique_study_id").}
}
\value{
A tibble with the count of distinct observations.
}
\description{
This simple function counts how many studies are in a dataset
or in different subsets of your data. It assumes your dataset
has a variable called \code{unique_study_id}.
}
\examples{
# simple example: entire datasets
PaluckMetaSOP::sv_data |> study_count()
# example with split, apply to many datasets, and create summary table
\dontrun{
library(purrr)
PaluckMetaSOP::sv_data |> split(~study_design) |>
map(study_count) |> bind_rows(.id = "study_design")
}

}
