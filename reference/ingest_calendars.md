# Calendars are unique combinations of a school and a school year

Calendars are unique combinations of a school and a school year

## Usage

``` r
ingest_calendars(.db_dir)
```

## Arguments

- .db_dir:

  `<chr>` the full path to the database directory

## Value

a tibble with 11 columns

- Calendar ID:

  `<int>` the primary key for this table

- End Year:

  `<int>` the year of the last date in this calendar

- School ID:

  `<int>` a foreign key to the schools table

- Start Date:

  `<date>` the date on which this calendar began

- End Date:

  `<date>` the date on which this calendar finished

- Student Minutes:

  `<int>` The duration of a full school day for this calendar

- Whole Day Absence:

  `<int>` The threshold where missing some minutes becomes a full day
  absence

- Half Day Absence:

  `<int>` The threshold where missing some minutes becomes a half day
  absence

- Teacher Minutes:

  `<int>` The duration of a full teacher work day for this calendar

- Is School Choice:

  `<lgl>` FALSE if this is a boundary, virtual, or non-voluntary school

- Summer:

  `<lgl>` TRUE if the calendar represents a summer program, not
  full-year school
