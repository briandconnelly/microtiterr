#' Get row number from a well label
#'
#' TODO
#'
#' @param well A well label (e.g., "A4")
#'
#' @return Integer value for the corresponding row
#' @export
#' @seealso \code{\link{well_column}}
#' @note This currently does not fully support 1536-well plates
#'
#' @examples
#' well_row("C6")
#'
well_row <- function(well) {
    well_letters <- toupper(substr(well, 1, 1))
    strtoi(sapply(well_letters, charToRaw), 16L) - 64
}
