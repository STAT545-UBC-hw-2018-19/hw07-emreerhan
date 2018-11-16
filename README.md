
<!-- README.md is generated from README.Rmd. Please edit that file -->

**Note**: This R package is not mean to be “serious”. It’s my submission
for HW07 for STAT547.

# biof

This is an R package that gives `canonical()` and `complementary()` for
getting the canonical and complementary DNA or RNA sequence
respectively.

## Installation

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("STAT545-UBC-students/hw07-emreerhan/biof")

# you'll also need:
install.packages('stringr')
```

## Example

See the vignette for more extensive use, but here’s an example:

``` r
biof::canonical('ACGT', minimal = FALSE)
#> [1] "TGCA"
biof::complementary('AUG', dna = FALSE)
#> [1] "UAC"
```

## For Developers

You can build more small-scale sequence analysis utilities. For example,
`get_kmers()` to kmerize a sequence.
