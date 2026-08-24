## Copyright (C) 2026 by Higher Expectations for Racine County

#' Load a table of which sections correspond to, you know, actual classes
#'
#' @param .db_dir `<chr>` the location of the database in the file system
#'
#' @returns a tibble with 3 columns
#' \describe{
#'  \item{Section ID}{`<int>` the primary key for this table}
#'  \item{Student ID}{`<int>` a foreign key to the table of student demographic information}
#'  \item{Calendar ID}{`<int>` a foreign key to the many-to-many table of years and schools }
#' }
#' @export
ingest_instructional_sections <- function(.db_dir) {

    .db_dir |>
        file.path(
            "instructional_sections.csv"
        ) |>
        read_delimited_table(
            hercrusdic::SPEC_FOR_INSTRUCTIONAL_SECTIONS
        ) |>
        dplyr::select(
            "Section ID",
            "Calendar ID",
            "Student ID"
        )
}
