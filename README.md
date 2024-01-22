

# PaluckMetaSOP

<!-- badges: start -->
<!-- badges: end -->

This paper and package document the [Paluck lab's](https://www.betsylevypaluck.com/) approach to meta-analysis. 

This repo is a hybrid of an R package, built with instructions in the [_R packages_](https://r-pkgs.org/) book, and a paper manuscript that uses [Papaja](https://github.com/crsh/papaja) to convert from `Rmd` -> `.tex` -> `.pdf` with equations intact. 

Install via `devtools::install_github("setgree/PaluckMetaSOP")`.

### Package TODOs

For the package, I need 
* tests (maybe)
* double-check everything works as intended and also in a general way
* include JH's functions from the prejudice paper (maybe with his help)
* `Warning message: In body(fun) : argument is not a function`
* `> install(); Skipping 6 packages not available: tibble, sessioninfo, rlang, RefManageR, metafor, dplyr`
* upload Tar file to 'releases' page? as release 0.01 or something
* properly integrate new data into functions (use as example in every function and then build vignette from that) -- see [this commit](https://github.com/setgree/PaluckMetaSOP/commit/fbd3901af39d456e0fbe09aa272d0f39156ca656) for details
* upload the proper dataset, probably a nice tidy subset of the prejudice data, and eventually write a vignette using the functions on it

### Paper TODOs

* Write the paper
* document it accordingly
* figure out an automated/easy way to collaborate with authors who prefer overleaf or github
