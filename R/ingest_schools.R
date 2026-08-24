## Copyright (C) 2026 by Higher Expectations for Racine County

#' A school is a location or virtual administrative unit where students to learn
#'
#' @param .db_dir `<chr>` the full path to the database directory
#'
#' @returns a tibble with 8 columns
#'   \describe{
#'     \item{School ID}{`<int>` the primary key for this table}
#'     \item{NCES ID}{`<chr>` six-digit id for this school in this state}
#'     \item{State ID}{`<int>` sex-digit id for this school in Wisconsin's db.}
#'     \item{School Name}{`<chr>` a human-readable, title-case label for each school}
#'     \item{School Type}{`<chr>` RUSD's internal code for the level of the school}
#'     \item{Elementary}{`<lgl>` `TRUE` if some of the school's students are in grades 4K-5}
#'     \item{Middle}{`<lgl>` `TRUE` if some of the school's students are in grades 6-8}
#'     \item{High}{`<lgl>` `TRUE` if some of the school's students are in grades 9-12}
#'   }
#' @export
ingest_schools <- function(.db_dir) {
    .db_dir |>
        file.path(
            "schools.csv"
        ) |>
        read_delimited_table(
            hercrusdic::SPEC_FOR_SCHOOLS
        ) |>
        dplyr::mutate(
            `School Name` = .data$`School Name` |>
                stringr::str_to_title() |>
                stringr::str_trim(),
            `School Type` = stringr::str_to_upper(.data$`School Type`),
            Elementary = stringr::str_detect(.data$`School Type`,
                                             "ES") |
                stringr::str_detect(.data$`School Name`,
                                    "Elementary"),
            Middle = stringr::str_detect(.data$`School Type`,
                                         "MS") |
                stringr::str_detect(.data$`School Name`,
                                    "Middle"),
            High = stringr::str_detect(.data$`School Type`,
                                       "HS") |
                stringr::str_detect(.data$`School Name`,
                                    "High"),
            Alternative = stringr::str_detect(.data$`School Type`,
                                              "ALT")
        )
}
