#' Render, commit, and push changes for an R Markdown document
#'
#' This function renders (knits) an R Markdown document, performs a Git
#' commit with a provided commit message, and pushes the changes to the remote repository.
#'
#' @param commit_message A commit message
#' @importFrom rmarkdown render
#' @importFrom here here
#' @return None
#' @examples
#' \dontrun{
#' render_commit_push("Update manuscript")
#' }
#' @export
render_commit_push <- function(commit_message = "update manuscript") {
  # Step 1: Find R Markdown files in the project directory and subdirectories
  rmd_files <- list.files(path = here::here(), pattern = "\\.Rmd$", recursive = TRUE, full.names = TRUE)

  if (length(rmd_files) == 0) {
    stop("No R Markdown files found in the project.")
  }

  # Step 2: Render (knit) the R Markdown document(s)
  lapply(rmd_files, rmarkdown::render)

  # Step 3: Git commit
  system("git add ./*")
  system(paste("git commit -m", shQuote(commit_message)))

  # Step 4: Git push
  system("git push")
}
