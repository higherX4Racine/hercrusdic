## Copyright (C) 2026 by Higher Expectations for Racine County

SPEC_FOR_SCHOOLS <- list(
    `School ID`       = "i",
    `NCES ID`         = "c",
    `State ID`        = "c",
    `School Name`     = "c",
    `School Type`     = "c",
    `Principal Email` = "-"
)

usethis::use_data(SPEC_FOR_SCHOOLS, overwrite = TRUE)
