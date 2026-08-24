# Load a table of which sections correspond to, you know, actual classes

Load a table of which sections correspond to, you know, actual classes

## Usage

``` r
ingest_instructional_sections(.db_dir)
```

## Arguments

- .db_dir:

  `<chr>` the location of the database in the file system

## Value

a tibble with 3 columns

- Section ID:

  `<int>` the primary key for this table

- Student ID:

  `<int>` a foreign key to the table of student demographic information

- Calendar ID:

  `<int>` a foreign key to the many-to-many table of years and schools
