# Compute a student's high school graduation year from year and grade level

Compute a student's high school graduation year from year and grade
level

## Usage

``` r
class_year(.end_year, .grade_level)
```

## Arguments

- .end_year:

  `<int>` the calendar year in the spring of a school year

- .grade_level:

  `<fct>` a factor of grades in `["PK", ..., "12"]`

## Value

`<int>` the year the kid should graduate from high school

## Examples

``` r
class_year(2026L, factor(GRADE_LEVELS))
#>  [1] 2026 2027 2039 2038 2037 2036 2035 2034 2033 2032 2031 2030 2029 2028
```
