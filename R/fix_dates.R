## Copyright (C) 2026 by Higher EXpectations for Racine County


#' Swap elements of date columns so that start dates always precede end dates
#'
#' @param .enrollments `<tbl>` a table produced by [ingest_enrollments()]
#' @param .start_field `<chr?>` defaults to "Start Date"
#' @param .end_field `<chr?>` defaults to "End Date"
#'
#' @returns `<tbl>` almost identical to `.enrollments` but with some start and end dates swapped
#' @export
fix_dates <- function(.enrollments,
                      .start_field = "Start Date",
                      .end_field = "End Date") {
    .enrollments |>
        dplyr::mutate(
            Early = purrr::map2(.data[[.start_field]],
                                dplyr::coalesce(.data[[.end_field]],
                                                .data[[.start_field]]),
                                min),
            Late = purrr::map2(.data[[.end_field]],
                               dplyr::coalesce(.data[[.start_field]],
                                               .data[[.end_field]]),
                               max),
            dplyr::across(
                c("Early", "Late"),
                purrr::list_simplify
            )
        ) |>
        dplyr::select(
            !tidyselect::any_of(c(.start_field, .end_field))
        ) |>
        dplyr::rename(
            "{.start_field}" := "Early",
            "{.end_field}" := "Late"
        )

}
