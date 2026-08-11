## Copyright (C) 2026 by Higher Expectations for Racine County
SPEC_FOR_MINUTES_SCHEDULED_BY_DAY <- list(
    `Calendar ID`       = readr::col_integer(),
    Date                = readr::col_date(format = "%Y-%m-%d"),
    `Minutes Scheduled` = readr::col_integer()
)

usethis::use_data(SPEC_FOR_MINUTES_SCHEDULED_BY_DAY, overwrite = TRUE)
