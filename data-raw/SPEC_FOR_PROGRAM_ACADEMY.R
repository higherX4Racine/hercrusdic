## Copyright (C) 2026 by Higher Expectations for Racine County

SPEC_FOR_PROGRAM_ACADEMY <- list(
    programCategory  = readr::col_character(),
    programType      = readr::col_character(),
    programCluster   = readr::col_character(),
    programCode      = readr::col_character(),
    programName      = readr::col_character(),
    programID        = readr::col_integer(),
    personID         = readr::col_integer(),
    programStartDate = readr::col_date(format = "%Y-%m-%d"),
    programEndDate   = readr::col_date(format = "%Y-%m-%d")
)

usethis::use_data(SPEC_FOR_PROGRAM_ACADEMY, overwrite = TRUE)
