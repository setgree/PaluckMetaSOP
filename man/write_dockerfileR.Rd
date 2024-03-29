% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_dockerfile.R
\name{write_dockerfileR}
\alias{write_dockerfileR}
\title{Generates a Dockerfile based on sessioninfo::package_info()}
\usage{
write_dockerfileR(
  write_file = TRUE,
  org = "rocker",
  image = "r-base:latest",
  apt_packages = TRUE,
  dir = "./",
  filename = "Dockerfile"
)
}
\arguments{
\item{write_file}{Boolean indicating whether to write the Dockerfile to disk}

\item{org}{The organization, defaulting to "rocker"}

\item{image}{The Docker image, defaulting to "r-base:latest"}

\item{apt_packages}{Boolean to install standard apt packages (default: TRUE)}

\item{dir}{Directory to save the Dockerfile (default: './')}

\item{filename}{Name of the Dockerfile (default: 'Dockerfile')}
}
\description{
Generates a Dockerfile based on sessioninfo::package_info()
}
