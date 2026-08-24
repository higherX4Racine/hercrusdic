# Import enrollments and sort them by student id and enrollment date

Import enrollments and sort them by student id and enrollment date

## Usage

``` r
ingest_enrollments(.db_dir)
```

## Arguments

- .db_dir:

  `<chr>` the full path to the database folder

## Value

a tibble with 9 columns

- Enrollment ID:

  `<int>` the primary key

- Student ID:

  `<int>` foreign key to the students table

- Calendar ID:

  `<int>` foreign key to the calendars table

- Grade Level:

  `<fct>` PK, KG, or 01 - 12

- SPED:

  `<lgl>` TRUE if the enrollment is explicity noted as special education

- Start Date:

  `<date>` when the enrollmen began

- End Date:

  `<date>` when the enrollment ended

- Bad Dates:

  `<lgl>` TRUE if `Start Date < End Date` or `is.na(End Date)`

- Tier:

  `<fct>` Preschool, Elementary, Middle, or High, per `Grade Level`

- Order:

  `<int>` the position of an enrollment falls in a student's career
