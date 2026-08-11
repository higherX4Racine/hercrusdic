## Copyright (C) 2026 by Higher Expectations for Racine County

SPEC_FOR_TERMS <- list(
    `attendanceDetail.termName` = readr::col_character(),
    `attendanceDetail.termSeq`  = readr::col_integer(),
    `attendanceDetail.date`     = readr::col_date(format = "%Y-%m-%d")
)

usethis::use_data(SPEC_FOR_TERMS, overwrite = TRUE)
