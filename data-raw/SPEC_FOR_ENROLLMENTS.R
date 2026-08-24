## Copyright (C) 2026 by Higher Expectations for Racine County-

SPEC_FOR_ENROLLMENTS <- list(
    `Enrollment ID` = readr::col_integer(),
    `Student ID`    = readr::col_integer(),
    `Calendar ID`   = readr::col_integer(),
    `Grade Level`   = readr::col_character(),
    SPED            = readr::col_character(),
    `Start Date`    = readr::col_date(format = "%Y-%m-%d"),
    `End Date`      = readr::col_date(format = "%Y-%m-%d")
)

usethis::use_data(SPEC_FOR_ENROLLMENTS, overwrite = TRUE)
