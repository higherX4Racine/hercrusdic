## Copyright (C) 2026 by Higher Expectations for Racine County

compute_enrollment_transitions <- function(.valid_enrollments) {
    .valid_enrollments |>
        dplyr::select(
            "Student ID",
            "Enrollment ID"
        ) |>
        dplyr::mutate(
            Previous = dplyr::lag(.data$`Enrollment ID`),
            Next = dplyr::lead(.data$`Enrollment ID`),
            .by = "Student ID"
        )
}
