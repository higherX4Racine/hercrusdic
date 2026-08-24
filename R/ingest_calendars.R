## Copyright (C) 2026 by Higher Expectations for Racine County

#' Calendars are unique combinations of a school and a school year
#'
#' @param .db_dir `<chr>` the full path to the database directory
#'
#' @returns a tibble with 11 columns
#' \describe{
#'  \item{Calendar ID}{`<int>` the primary key for this table}
#'  \item{End Year}{`<int>` the year of the last date in this calendar}
#'  \item{School ID}{`<int>` a foreign key to the schools table}
#'  \item{Start Date}{`<date>` the date on which this calendar began}
#'  \item{End Date}{`<date>` the date on which this calendar finished}
#'  \item{Student Minutes}{`<int>` The duration of a full school day for this calendar}
#'  \item{Whole Day Absence}{`<int>` The threshold where missing some minutes becomes a full day absence}
#'  \item{Half Day Absence}{`<int>` The threshold where missing some minutes becomes a half day absence}
#'  \item{Teacher Minutes}{`<int>` The duration of a full teacher work day for this calendar}
#'  \item{Is School Choice}{`<lgl>` FALSE if this is a boundary, virtual, or non-voluntary school}
#'  \item{Summer}{`<lgl>` TRUE if the calendar represents a summer program, not full-year school}
#' }
#' @export
ingest_calendars <- function(.db_dir) {
    .db_dir |>
        file.path(
            "calendars.csv"
        ) |>
        read_delimited_table(
            hercrusdic::SPEC_FOR_CALENDARS
        ) |>
        dplyr::mutate(
            `Is School Choice` = dplyr::coalesce(.data$`Is School Choice`,
                                                 FALSE),
            Summer = dplyr::between(lubridate::month(.data$`Start Date`),
                                    6, 8) &
                dplyr::between(lubridate::month(.data$`End Date`),
                               6, 8) &
                lubridate::year(.data$`Start Date`) == lubridate::year(.data$`End Date`)
        ) |>
        dplyr::arrange(
            .data$`Calendar ID`
        )
}
