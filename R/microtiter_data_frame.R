#' Create a Data Frame or Tibble with All Wells in a Microtiter Plate
#'
#' \code{microtiter_data_frame} creates a data frame representing a microtiter
#' plate, with one row per well, and columns for Row, Column, and Well
#' (optional). \code{microtiter_tibble} creates a \link[tibble]{tibble} instead.
#'
#' @param nwells Microtiter plate format specified as number of wells (e.g., 6 or 24; default: 96)
#' @param include_well Logical value indicating whether or not to include
#' well labels (default: \code{TRUE})
#'
#' @return A data frame
#' @export
#'
#' @examples
#' microtiter_data_frame(nwells = 96)
#'
microtiter_data_frame <- function(nwells = 96, include_well = TRUE) {

    if (nwells == 6) d <- expand.grid(Row = 1:2, Column = 1:3)
    else if (nwells == 24) d <- expand.grid(Row = 1:4, Column = 1:6)
    else if (nwells == 96) d <- expand.grid(Row = 1:8, Column = 1:12)
    else if (nwells == 384) d <- expand.grid(Row = 1:16, Column = 1:24)
    #else if (nwells == 1536) d <- expand.grid(Row = 1:32, Column = 1:48)
    else stop(sprintf("Format '%d' is not supported", format))

    d <- d[order(d[,1]),]

    if (include_well) {
        d$Well <- well_label(d$Row, d$Column)
        d <- d[c("Well", "Row", "Column")]
        d$Well <- factor(d$Well, levels = d$Well)
    }

    d
}

#' @rdname microtiter_data_frame
#' @export
microtiter_tibble <- function(nwells = 96, include_well = TRUE) {
    if (!requireNamespace("tibble", quietly = TRUE)) {
        stop(sprintf("This function requires the tibble package"),
             call. = FALSE)
    }

    tibble::as_tibble(microtiter_data_frame(nwells, include_well))
}
