## Copyright (C) 2026 by Higher Expectations for Racine County

#' Import enrollment records that have comments attached to them
#'
#' @param .db_dir `<chr>` the full path to the database directory
#'
#' @returns a tibble with three columns
#' \describe{
#'  \item{Enrollment ID}{`<int>` a primary key shared with the enrollments table}
#'  \item{Comments at Start}{`<chr>` free text pertaining to the beginning of a student's enrollment}
#'  \item{Comments at End}{`<chr>` free text pertaining to the end of a student's enrollment}
#' }
#' @export
ingest_enrollment_comments <- function(.db_dir) {
    .db_dir |>
        file.path(
            "enrollment_comments.csv"
        ) |>
        read_delimited_table(
            hercrusdic::SPEC_FOR_ENROLLMENT_COMMENTS
        ) |>
        dplyr::filter(
            !dplyr::if_all(c("Comments at Start", "Comments at End"),
                           is.na)
        )
}
