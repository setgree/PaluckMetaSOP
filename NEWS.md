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
