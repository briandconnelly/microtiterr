#' Get the letter associated with the given row number(s)
#'
#' TODO
#'
#' @param rownum The row number of a well
#'
#' @return A character containing the row letter
#' @note This currently does not fully support 1536-well plates
#' @export
#'
#' @examples
#' row_letter(3)
#'
row_letter <- function(rownum) {
    stopifnot(rownum > 0)
    LETTERS[rownum]
}
