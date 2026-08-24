# A school is a location or virtual administrative unit where students to learn

A school is a location or virtual administrative unit where students to
learn

## Usage

``` r
ingest_schools(.db_dir)
```

## Arguments

- .db_dir:

  `<chr>` the full path to the database directory

## Value

a tibble with 8 columns

- School ID:

  `<int>` the primary key for this table

- NCES ID:

  `<chr>` six-digit id for this school in this state

- State ID:

  `<int>` sex-digit id for this school in Wisconsin's db.

- School Name:

  `<chr>` a human-readable, title-case label for each school

- School Type:

  `<chr>` RUSD's internal code for the level of the school

- Elementary:

  `<lgl>` `TRUE` if some of the school's students are in grades 4K-5

- Middle:

  `<lgl>` `TRUE` if some of the school's students are in grades 6-8

- High:

  `<lgl>` `TRUE` if some of the school's students are in grades 9-12
