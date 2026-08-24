## Copyright (C) 2026 by Higher Expectations for Racine County

#' Compute a student's high school graduation year from year and grade level
#'
#' @param .end_year `<int>` the calendar year in the spring of a school year
#' @param .grade_level `<fct>` a factor of grades in `["PK", ..., "12"]`
#'
#' @returns `<int>` the year the kid should graduate from high school
#' @export
#'
#' @examples
#' class_year(2026L, factor(GRADE_LEVELS))
#'
class_year <- function(.end_year, .grade_level) {
    .end_year + 13L - as.integer(.grade_level) + 1L
}
