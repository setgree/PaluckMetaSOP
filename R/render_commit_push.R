#' Render, commit, and push changes for an R Markdown document
#'
#' This function renders (knits) an R Markdown document, performs a Git
#' commit with a provided commit message, and pushes the changes to the remote repository.
#'
#' @param commit_message A character string specifying the commit message.
#' @importFrom rmarkdown render
#' @importFrom git2r repository add commit push
#' @import here
#' @return None
#' @examples
#' \dontrun{
#' render_commit_push("Update R Markdown document")
#' }
#' @export
render_commit_push <- function(commit_message) {
  # Load required libraries
  rmarkdown::render
  git2r::repository
  git2r::add
  git2r::commit
  git2r::push
  here::here

  # Step 1: Find R Markdown files in the project directory and subdirectories
  rmd_files <- list.files(path = here(), pattern = "\\.Rmd$", recursive = TRUE, full.names = TRUE)

  if (length(rmd_files) == 0) {
    stop("No R Markdown files found in the project.")
  }

  # Use the first found R Markdown file
  rmd_file <- rmd_files[1]

  # Step 2: Render (knit) the R Markdown document
  rmarkdown::render(rmd_file)

  # Step 3: Git commit
  repo <- git2r::repository()  # Automatically uses the working directory as the repository path

  # Stage all changes
  git2r::add(repo, path = ".")

  # Commit with the provided message
  git2r::commit(repo, message = commit_message)

  # Step 4: Git push
  git2r::push(repo)
}

# Example usage
commit_message <- "Update R Markdown document"
render_commit_push(commit_message)
