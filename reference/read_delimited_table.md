# Read caret-delimited text files

Read caret-delimited text files

## Usage

``` r
read_delimited_table(.path_to_table, .specification)
```

## Arguments

- .path_to_table:

  `<chr>` the full path to the table

- .specification:

  `<lst>` a list of column types for
  [`readr::cols()`](https://readr.tidyverse.org/reference/cols.html)

## Value

a tibble with features determined by `.specification`
