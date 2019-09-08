context("Bogosorting a numeric vector")

test_that("5-elemental vector, sorted", {
  x = c(1,2,3,4,5)
  sorted = c(1,2,3,4,5)
  expect_identical(bogosort(x), sorted)
})

test_that("5-elemental vector, reverse", {
  x = c(5,4,3,2,1)
  sorted = c(1,2,3,4,5)
  expect_identical(bogosort(x), sorted)
})

test_that("3-elemental vector, all zeros", {
  x = c(0,0,0)
  sorted = c(0,0,0)
  expect_identical(bogosort(x), sorted)
})

test_that("3-elemental vector, all negatives", {
  x = c(-100,-300,-200)
  sorted = c(-300,-200,-100)
  expect_identical(bogosort(x), sorted)
})

test_that("long array, one swap at the end", {
  x = c(1,2,3,4,5,6,7,9,8)
  sorted = c(1,2,3,4,5,6,7,8,9)
  expect_identical(bogosort(x), sorted)
})

test_that("1-elemental vector (floating point)", {
  x = c(10.0)
  sorted = c(10.0)
  expect_identical(bogosort(x), sorted)
})

test_that("empty vector", {
  x = c()
  sorted = c()
  expect_identical(bogosort(x), sorted)
})
