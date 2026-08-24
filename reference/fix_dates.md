# Swap elements of date columns so that start dates always precede end dates

Swap elements of date columns so that start dates always precede end
dates

## Usage

``` r
fix_dates(.enrollments, .start_field = "Start Date", .end_field = "End Date")
```

## Arguments

- .enrollments:

  `<tbl>` a table produced by
  [`ingest_enrollments()`](https://higherx4racine.github.io/hercrusdic/reference/ingest_enrollments.md)

- .start_field:

  `<chr?>` defaults to "Start Date"

- .end_field:

  `<chr?>` defaults to "End Date"

## Value

`<tbl>` almost identical to `.enrollments` but with some start and end
dates swapped
