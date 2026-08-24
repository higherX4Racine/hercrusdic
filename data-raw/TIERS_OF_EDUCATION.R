## Copyright (C) 2026 by Higher Expectations for Racine County

TIERS_OF_EDUCATION <- tibble::tibble(
    `Grade Level` = factor(hercrusdic::GRADE_LEVELS,
                           levels = hercrusdic::GRADE_LEVELS)
) |>
    dplyr::mutate(
        Tier = .data$`Grade Level` |>
            dplyr::recode_values(
                hercrusdic::GRADE_LEVELS[1] ~ "Preschool",
                hercrusdic::GRADE_LEVELS[2:7] ~ "Elementary",
                hercrusdic::GRADE_LEVELS[8:10] ~ "Middle",
                hercrusdic::GRADE_LEVELS[11:14] ~ "High",
                default = NA,
                unmatched = "default"
            ) |>
            factor(
                levels = c("Preschool", "Elementary", "Middle", "High")
            )
    )

usethis::use_data(TIERS_OF_EDUCATION, overwrite = TRUE)
