## Copyright (C) 2026 by Higher Expectations for Racine County

SPEC_FOR_MINUTES_ABSENT_BY_DAY <- list(
    `Student ID`     = readr::col_integer(),
    `Calendar ID`    = readr::col_integer(),
    Date             = readr::col_date(format = "%Y-%m-%d"),
    `Minutes Absent` = readr::col_integer()
)

usethis::use_data(SPEC_FOR_MINUTES_ABSENT_BY_DAY, overwrite = TRUE)
