#' Get column number from a well label
#'
#' TODO
#'
#' @param well A well label (e.g., "A4")
#'
#' @return Integer value for the corresponding column
#' @note This currently does not fully support 1536-well plates
#' @export
#' @seealso \code{\link{well_row}}
#'
#' @examples
#' well_column("C6")
#'
well_column <- function(well) {
    as.integer(substr(well, 2, 2))
}
