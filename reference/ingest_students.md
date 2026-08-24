# Import demographic and life history data about students

Import demographic and life history data about students

## Usage

``` r
ingest_students(.db_dir)
```

## Arguments

- .db_dir:

  `<chr>` the full path to the database directory

## Value

a data frame with 13 columns

- Student ID:

  `<int>` the primary key, internal to Infinite Camupus

- Family Name:

  `<chr>` IN ALL CAPS

- Given Name:

  `<chr>` ALSO IN ALL CAPS

- Date of Birth:

  `<date>` useful for computing a kid's age…

- Sex:

  `<chr>` "M" or "F"

- Black:

  `<lgl>` TRUE if the student identifies as belonging to this race

- Latine:

  `<lgl>`TRUE if the student identifies as belonging to this ethnicity

- Student Number:

  `<int>` a six-digit unique used for many extramural reports

- Native American:

  `<lgl>` TRUE if the student identifies as belonging to this race

- Asian:

  `<lgl>` TRUE if the student identifies as belonging to this race

- Pacific Islander:

  `<lgl>` TRUE if the student identifies as belonging to this race

- Multiracial:

  `<lgl>` TRUE if the student identifies as belonging to this race

- White:

  `<lgl>` TRUE if the student identifies as belonging to this race
