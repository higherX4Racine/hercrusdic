months_in_loops <- function(.time_periods, .pk_field) {
    .time_periods |>
        dplyr::reframe(
            Date = seq(.data$`Start Date`,
                       .data$`End Date`,
                       by = "months"),
            .by = .pk_field
        ) |>
        dplyr::mutate(
            Year = .data$Date |> lubridate::year() |> as.integer(),
            Month = .data$Date |> lubridate::month() |> as.integer()
        ) |>
        dplyr::select(
            tidyselect::all_of(c(.pk_field,
                                 "Year",
                                 "Month"))
        )
}


months_by_joining <- function(.time_periods) {

    .years <- .time_periods$`Start Date` |>
        c(.time_periods$`End Date`) |>
        range() |>
        lubridate::year()

    .month_lookup <- tidyr::expand_grid(
        Year = .years[1]:.years[2],
        Month = 1:12
    ) |>
        dplyr::mutate(
            First = lubridate::make_date(.data$Year, .data$Month, 1),
            Final = lubridate::make_date(.data$Year, .data$Month,
                                         lubridate::days_in_month(.data$First))
        )

    .time_periods |>
        dplyr::left_join(
            .month_lookup,
            by = dplyr::join_by(overlaps(`Start Date`, `End Date`,
                                         First, Final))
        ) |>
        dplyr::select(
            tidyselect::ends_with("ID"),
            "Year",
            "Month"
        )
}

inclusive_months <- function(.enrollments, .pk_field){

    .enrollments |>
        dplyr::summarize(
            `Start Date` = min(.data$`Start Date`),
            `End Date` = max(.data$`End Date`),
            .by = .pk_field
        ) |>
        months_by_joining()
}
