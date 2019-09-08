context("Bozosorting a numeric vector")

test_that("5-elemental vector, sorted", {
  x = c(1,2,3,4,5)
  sorted = c(1,2,3,4,5)
  expect_identical(bozosort(x), sorted)
})

test_that("5-elemental vector, reverse", {
  x = c(5,4,3,2,1)
  sorted = c(1,2,3,4,5)
  expect_identical(bozosort(x), sorted)
})

test_that("3-elemental vector, negatives", {
  x = c(-10,-20,-30)
  sorted = c(-30,-20,-10)
  expect_identical(bozosort(x), sorted)
})

test_that("2-elemental vector, all zeros", {
  x = c(0,0)
  sorted = c(0,0)
  expect_identical(bozosort(x), sorted)
})

test_that("1-elemental vector (floating point)", {
  x = c(10.0)
  sorted = c(10.0)
  expect_identical(bozosort(x), sorted)
})

test_that("empty vector", {
  x = c()
  sorted = c()
  expect_identical(bozosort(x), sorted)
})
