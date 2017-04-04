#' Get a Well Label for the Given Row and Column
#'
#' TODO
#'
#' @param row Numeric row index(es)
#' @param column Numeric column index(es)
#'
#' @return String containing the corresponding Well Label
#' @export
#'
#' @examples
#' well_label(1, 5)
#' well_label(1:8, 4)
#'
well_label <- function(row, column) {
    stopifnot(row > 0)
    stopifnot(column > 0)
    paste0(LETTERS[row], column)
}
