#' Get the letters associated with the given row number(s)
#'
#' TODO
#'
#' @param rownum The row number of a well
#'
#' @return A character containing the row letter
#' @export
#'
#' @examples
#' row_letters(3)
#'
row_letters <- function(rownum) {
    LETTERS[rownum]
}
