context("Plate Addressing")

test_that("row_letter works correctly", {
    expect_equal(row_letter(1), "A")
    expect_equal(row_letter(c(1, 2, 3)), c("A", "B", "C"))
    expect_error(row_letter(0))
    expect_error(row_letter(-3))
})

test_that("well_row works correctly", {
    expect_equal(well_row("A3"), 1)
    expect_equal(well_row("C7"), 3)
    expect_equal(well_row("H4"), 8)
    expect_equal(well_row(c("A3", "C7", "H4", "D2")), c(1, 3, 8, 4))
})

test_that("well_column works correctly", {
    expect_equal(well_column("A3"), 3)
    expect_equal(well_column("C7"), 7)
    expect_equal(well_column("H4"), 4)
    expect_equal(well_column(c("A3", "C7", "H4", "D2")), c(3, 7, 4, 2))
})

test_that("well_label works correctly", {
    expect_equal(well_label(1, 6), "A6")
    expect_equal(well_label(3, 2), "C2")
    expect_equal(
        well_label(1:8, 4),
        c("A4", "B4", "C4", "D4", "E4", "F4", "G4", "H4")
    )
    expect_error(well_label(0, 1))
    expect_error(well_label(1, 0))
    expect_error(well_label(0, 0))
})
