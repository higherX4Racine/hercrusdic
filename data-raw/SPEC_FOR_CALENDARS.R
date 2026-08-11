## Copyright (C) 2026 by Higher Expectations for Racine County

SPEC_FOR_CALENDARS <- list(
    `Calendar ID`             = readr::col_integer(),
    `End Year`                = readr::col_integer(),
    `School ID`               = readr::col_integer(),
    `Start Date`              = readr::col_date(format = "%Y-%m-%d"),
    `End Date`                = readr::col_date(format = "%Y-%m-%d"),
    `Student Minutes`         = readr::col_integer(),
    `Whole Day Absence`       = readr::col_integer(),
    `Half Day Absence`        = readr::col_integer(),
    `Has Positive Attendance` = readr::col_logical(),
    `Attendance Edit Days`    = readr::col_integer(),
    `Teacher Minutes`         = readr::col_integer(),
    `Is School Choice`        = readr::col_logical()
)

usethis::use_data(SPEC_FOR_CALENDARS, overwrite = TRUE)

pillar::glimpse(SPEC_FOR_CALENDARS)
