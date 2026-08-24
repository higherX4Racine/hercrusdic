## Copyright (C) 2026 by Higher Expectations for Racine County

#' Import enrollments and sort them by student id and enrollment date
#'
#' @param .db_dir `<chr>` the full path to the database folder
#'
#' @returns a tibble with 9 columns
#' \describe{
#'   \item{Enrollment ID}{`<int>` the primary key}
#'   \item{Student ID}{`<int>` foreign key to the students table}
#'   \item{Calendar ID}{`<int>` foreign key to the calendars table}
#'   \item{Grade Level}{`<fct>` PK, KG, or 01 - 12}
#'   \item{SPED}{`<lgl>` TRUE if the enrollment is explicity noted as special education}
#'   \item{Start Date}{`<date>` when the enrollmen began}
#'   \item{End Date}{`<date>` when the enrollment ended}
#'   \item{Bad Dates}{`<lgl>` TRUE if `Start Date < End Date` or `is.na(End Date)`}
#'   \item{Tier}{`<fct>` Preschool, Elementary, Middle, or High, per `Grade Level`}
#'   \item{Order}{`<int>` the position of an enrollment falls in a student's career}
#' }
#' @export
ingest_enrollments <- function(.db_dir) {
    .db_dir |>
        file.path(
            "enrollments.csv"
        ) |>
        read_delimited_table(
            hercrusdic::SPEC_FOR_ENROLLMENTS
        ) |>
        dplyr::mutate(
            SPED = dplyr::coalesce(.data$SPED == "Y",
                                   FALSE),
            `Grade Level` = ingest_grade_levels(.data$`Grade Level`),
            `Bad Dates` = .data$`Start Date` > dplyr::coalesce(.data$`End Date`,
                                                               lubridate::make_date(0, 1, 1))
        ) |>
        dplyr::left_join(
            hercrusdic::TIERS_OF_EDUCATION,
            by = "Grade Level"
        ) |>
        dplyr::arrange(
            dplyr::across(
                c("Student ID", "Start Date", "End Date", "Enrollment ID")
            )
        ) |>
        dplyr::mutate(
            Order = dplyr::row_number(),
            .by = "Student ID"
        )
}
