context("Bogosorting a numeric vector")

test_that("5-elemental vector", {
  x = c(5,4,3,2,1)
  sorted = c(1,2,3,4,5)
  expect_identical(bogosort(x), sorted)
})
