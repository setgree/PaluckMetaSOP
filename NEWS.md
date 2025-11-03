# PaluckMetaSOP 0.95 "Post-Claude-Intervention-Edition"

## Improvements and Bug Fixes

### Testing
* Added comprehensive unit test suite with 77 tests covering core functions:
  - `d_calc()`: 20 tests for all stat_types and edge cases
  - `var_d_calc()`: 10 tests for variance calculations
  - `sum_tab()`: 27 tests for frequency tables
  - `study_count()`: 20 tests for counting unique studies
* Added testthat to package dependencies

### Documentation
* Improved vignette organization with proper ordering (0-3)
* Fixed vignette file naming to comply with R package standards
* Enhanced clarity and examples throughout vignettes
* Improved function documentation with better cross-references
* Added comprehensive package best practices

### Code Quality
* Fixed R CMD check NOTEs and warnings
* Improved README with clearer installation instructions
* Enhanced CITATION file with proper formatting
* Fixed statistical formula documentation
* Better error handling and input validation

### Vignettes
* "0. An overview of these vignettes"
* "1. Converting a study's results into SMD, variance, and standard error"
* "2. Performing meta-analysis the Paluck Lab way"
* "3. Writing your meta-analytic paper"

# PaluckMetaSOP 0.9

## Initial Release

This is the first public release of PaluckMetaSOP, documenting the Paluck lab's approach to meta-analysis as used in:

* "Preventing Sexual Violence—A Behavioral Problem Without a Behaviorally-Informed Solution" (Porat et al., 2024)
* "The Contact Hypothesis Re-evaluated" (Paluck, Green, & Green, 2019)

### Main Features

* **Effect size calculation**: `d_calc()` and `var_d_calc()` convert various statistical results into standardized mean differences and variances
* **Meta-analysis**: `map_robust()` performs robust meta-analysis with clustering
* **Helper functions**: `sum_lm()`, `sum_tab()`, and `study_count()` for summarizing and analyzing meta-analytic datasets
* **Example datasets**: `contact_data` and `sv_data` from published meta-analyses
* **Comprehensive vignettes**: Four detailed vignettes walking through the complete meta-analysis workflow

### Supported Statistical Conversions

The package can convert the following to standardized mean differences:
- Difference in means
- Difference in differences
- Regression coefficients
- t-tests
- F-tests
- Odds ratios and log odds ratios
- Difference in proportions (novel estimator)
- Pre-reported SMDs

### Documentation

* Overview of the meta-analysis process
* Calculating effect sizes and variance
* Performing robust meta-analysis
* Writing and visualizing results
