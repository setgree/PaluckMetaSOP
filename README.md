# PaluckMetaSOP

This package documents the [Paluck lab’s](http://www.betsylevypaluck.com/)
approach to meta-analysis, focusing on two papers in particular:

* “[Preventing Sexual Violence —A Behavioral Problem Without a Behaviorally-Informed Solution](https://doi.org/10.1177/1529100623122197)” 
* “[The Contact Hypothesis Re-evaluated](https://doi.org/10.1017/bpp.2018.25).”

## Installation
Run the following R command:
```r
remotes::install_github('setgree/PaluckMetaSOP', build_vignettes = TRUE)
```

## What you'll find

This package contains:

- **Functions** that implement the Paluck lab approach to meta-analysis
- **Vignettes** that walk through how to use the functions
- **Datasets** (`sv_data` and `contact_data`) that accompany the two example metas and are used in the vignettes

## Getting started

After installation, run:
```r
browseVignettes(package = "PaluckMetaSOP")
```

We recommend going through the vignettes in order, but you can also pick and choose based on what seems relevant.

## The functions
### For calculating effect size and variance:
* `d_calc`: a function for calculating standardized mean differences (SMDs) -- Cohen's D/Glass's ∆/etc.
* `var_d_calc`: a function for calculating the variance of your SMDs.

### For meta-analyzing studies:
* `map_robust`: This function is a tidyverse-friendly wrapper around `metafor::robust()`, which is the flavor of meta-analysis we used in the two metas listed above

### Helper functions
* `study_count`: tidyverse-friendly function for counting studies in a grouping (the function assumes that each row in a dataset corresponds to a point estimate from a study, and studies are grouped by a variable called `unique_study_id`)
* `sum_lm`: a tidyverse-friendly wrapper around `summary(lm())`. 
* `sum_tab`: a tidyverse-friendly version of R's built-in `table` function.

For more documentation, either see the vignettes or add a `?` before any of the functions (e.g., `?PaluckMetaSOP::sum_tab`).

## For Paluck Lab members extending this package

To contribute:
1. Clone this package:
   ```bash
   git clone https://github.com/setgree/PaluckMetaSOP.git
   ```
2. Add or amend functions and vignettes
3. Open a [pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) or create your own fork 

The instructions in the first chapter of [*R packages*](https://r-pkgs.org/) should get you pretty far on the "building a package" side of things.
