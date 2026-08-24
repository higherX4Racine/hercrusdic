## Copyright (C) 2026 by Higher Expectations for Racine County

#' Import demographic and life history data about students
#'
#' @param .db_dir `<chr>` the full path to the database directory
#'
#' @returns a data frame with 13 columns
#' \describe{
#'  \item{Student ID}{`<int>` the primary key, internal to Infinite Camupus }
#'  \item{Family Name}{`<chr>` IN ALL CAPS}
#'  \item{Given Name}{`<chr>` ALSO IN ALL CAPS}
#'  \item{Date of Birth}{`<date>` useful for computing a kid's age…}
#'  \item{Sex}{`<chr>` "M" or "F"}
#'  \item{Black}{`<lgl>` TRUE if the student identifies as belonging to this race}
#'  \item{Latine}{`<lgl>`TRUE if the student identifies as belonging to this ethnicity}
#'  \item{Student Number}{`<int>` a six-digit unique used for many extramural reports}
#'  \item{Native American}{`<lgl>` TRUE if the student identifies as belonging to this race}
#'  \item{Asian}{`<lgl>` TRUE if the student identifies as belonging to this race}
#'  \item{Pacific Islander}{`<lgl>` TRUE if the student identifies as belonging to this race}
#'  \item{Multiracial}{`<lgl>` TRUE if the student identifies as belonging to this race}
#'  \item{White}{`<lgl>` TRUE if the student identifies as belonging to this race}
#' }
#' @export
ingest_students <- function(.db_dir) {
    .db_dir |>
        file.path(
            "students.csv"
        ) |>
        read_delimited_table(
            hercrusdic::SPEC_FOR_STUDENTS
        ) |>
        dplyr::rename(
            `Student ID` = "Person ID"
        ) |>
        dplyr::mutate(
            dplyr::across(
                c("Given Name", "Family Name"),
                toupper
            )
        )
}
