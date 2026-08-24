## Copyright (C) 2026 by Higher Expectations for Racine County

#' Grade Levels as a factor
#'
#' fourteen two-character codes for grades, from PK to KG to 01 to 12
"GRADE_LEVELS"

#' Map grade levels to tiers of education
#'
#' | Grade Levels | Tier        |
#' |:-------------|:------------|
#' | PK           | Preschool   |
#' | KG-5         | Elementary  |
#' | 6-8          | Middle      |
#' | 9-12         | High        |
#'
#' @format a tibble with 14 rows and two columns.
#' \describe{
#'  \item{Grade Level}{`<fct>` equal to [hercrusdic::GRADE_LEVELS]}
#'  \item{Tier}{`<fct>` a factor with the four levels above}
#' }
"TIERS_OF_EDUCATION"

