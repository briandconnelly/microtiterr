#' Determine Whether a Given String is a Valid Well Label
#'
#' @param well A well label (e.g., \code{"A6"})
#'
#' @return A logical value indicating whether or not the given well label is
#' valid
#' @export
#'
#' @examples
#' is.well("A6")
#' is.well(c("A3", "A4", "G6"))
#'
is.well <- function(well) {
    stringi::stri_detect_regex(
        str = well,
        pattern = "^[A-Za-z]{1,2}[0-9]{1,3}$"
    )
}
