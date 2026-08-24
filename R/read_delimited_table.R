## Copyright (C) 2026 by Higher Expectations for Racine County

#' Read caret-delimited text files
#'
#' @param .path_to_table `<chr>` the full path to the table
#' @param .specification `<lst>` a list of column types for [readr::cols()]
#'
#' @returns a tibble with features determined by `.specification`
read_delimited_table <- function(.path_to_table,
                                 .specification) {

    .first_line <- readLines(.path_to_table, n = 1L)

    if (grepl("\\^", .first_line)) {
        .delim <- "^"
        .quote <- "…"
    } else {
        .delim <- ","
        .quote <- "\""
    }

    readr::read_delim(
        .path_to_table,
        delim = .delim,
        quote = .quote,
        escape_backslash = FALSE,
        escape_double = FALSE,
        col_types = .specification
    )
}
