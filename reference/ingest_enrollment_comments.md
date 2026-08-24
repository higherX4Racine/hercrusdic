# Import enrollment records that have comments attached to them

Import enrollment records that have comments attached to them

## Usage

``` r
ingest_enrollment_comments(.db_dir)
```

## Arguments

- .db_dir:

  `<chr>` the full path to the database directory

## Value

a tibble with three columns

- Enrollment ID:

  `<int>` a primary key shared with the enrollments table

- Comments at Start:

  `<chr>` free text pertaining to the beginning of a student's
  enrollment

- Comments at End:

  `<chr>` free text pertaining to the end of a student's enrollment
