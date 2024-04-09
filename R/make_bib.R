#' Generate references from a dataset and manage BibTeX file
#'
#' This function processes a dataset containing DOIs and manages a BibTeX file.
#' It extracts DOIs from the dataset and writes corresponding BibTeX entries into a file.
#' Additionally, it provides a function to add individual DOIs to the same BibTeX file.
#'
#' @param dat_with_dois The dataset containing DOIs (columns: title, author, year, doi, url)
#' @param bib_file The file path to the BibTeX file
#' @return A list of functions to manage BibTeX entries
#' @export

manage_references <- function(dat_with_dois, bib_file = './refs.bib') {
  # Check for required packages
  missing_packages <- character(0)

  if (!requireNamespace("dplyr", quietly = TRUE)) {
    missing_packages <- c(missing_packages, "'dplyr'")
  }
  if (!requireNamespace("RefManageR", quietly = TRUE)) {
    missing_packages <- c(missing_packages, "'RefManageR'")
  }

  if (length(missing_packages) > 0) {
    stop(paste("Required package(s)", paste(missing_packages, collapse = ", "), "is/are not installed."))
  }

  # Write bibs into bib file
  for (entry in dat_with_dois$doi) {
    RefManageR::WriteBib(bib = RefManageR::GetBibEntryWithDOI(doi = entry),
                         file = bib_file,
                         append = TRUE)
  }

  # Function to add DOI to the BibTeX file
  add_doi_to_bib <- function(new_doi) {
    RefManageR::WriteBib(bib = RefManageR::GetBibEntryWithDOI(new_doi),
                         file = bib_file,
                         append = TRUE)
  }

  # Return the function to add DOIs to the BibTeX file
  return(list(add_doi_to_bib = add_doi_to_bib))
}
