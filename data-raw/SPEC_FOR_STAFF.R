## Copyright (C) 2026 by Higher Expectations for Racine County

SPEC_FOR_STAFF <- list(
    `Person ID`        = readr::col_integer(),
    `Family Name`      = readr::col_character(),
    `Given Name`       = readr::col_character(),
    `Date of Birth`    = readr::col_date(format = "%Y-%m-%d"),
    Sex                = readr::col_character(),
    Black              = readr::col_logical(),
    Latine             = readr::col_logical(),
    `Employee Number` = readr::col_character(),
    `Email Address`   = readr::col_character(),
    `Native American`   = readr::col_logical(),
    Asian               = readr::col_logical(),
    `Pacific Islander`  = readr::col_logical(),
    Multiracial         = readr::col_logical(),
    White               = readr::col_logical(),
    `Start Date`      = readr::col_date(format = "%Y-%m-%d"),
    `End Date`        = readr::col_date(format = "%Y-%m-%d")
)

usethis::use_data(SPEC_FOR_STAFF, overwrite = TRUE)
