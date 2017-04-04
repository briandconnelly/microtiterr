context("is.well")

test_that("is.well returns TRUE for valid wells", {
    expect_true(is.well("A3"))
    expect_true(is.well("H12"))
    expect_equal(is.well(c("A1", "C5", "H12")), c(TRUE, TRUE, TRUE))
})

test_that("is.well returns FALSE for invalid wells", {
    expect_false(is.well("AA"))
    expect_false(is.well("23"))
    expect_false(is.well(5))
    expect_equal(is.well(c("AA", "23", 5)), c(FALSE, FALSE, FALSE))
})

test_that("is.well errors for invalid inputs", {
    expect_error(is.well())
})
