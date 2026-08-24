## Copyright (C) 2026 by Higher Expectations for Racine County

#' Convert two-character grade codes into a factor of two-character grade levels
#'
#' @param .grade_digraphs `<chr>` two-character codes with many different levels of pre-k
#'
#' @returns a factor with all pre-k collapsed into "PK", then "KG" and "01"-"12"
#' @export
ingest_grade_levels <- function(.grade_digraphs) {
    .grade_digraphs |>
        dplyr::case_match(
            c("E3", "E4", "K2", "K3", "K4", "PK") ~ "PK",
            .default = .grade_digraphs
        ) |>
        factor(
            levels = hercrusdic::GRADE_LEVELS
        )
}
