context("Slowsorting a numeric vector")

test_that("5-elemental vector, sorted", {
  x = c(1,2,3,4,5)
  sorted = c(1,2,3,4,5)
  expect_identical(slowsort(x), sorted)
})

test_that("5-elemental vector, reverse", {
  x = c(5,4,3,2,1)
  sorted = c(1,2,3,4,5)
  expect_identical(slowsort(x), sorted)
})

test_that("1-elemental vector (floating point)", {
  x = c(10.0)
  sorted = c(10.0)
  expect_identical(slowsort(x), sorted)
})

test_that("2-elemental array, all zeros", {
  x = c(0,0)
  sorted = c(0,0)
  expect_identical(slowsort(x), sorted)
})

test_that("3-elemental array, all zeros", {
  x = c(0,0,0)
  sorted = c(0,0,0)
  expect_identical(slowsort(x), sorted)
})

test_that("3-elemental array, all negatives", {
  x = c(-1,-100,-10)
  sorted = c(-100,-10,-1)
  expect_identical(slowsort(x), sorted)
})

test_that("long array, 2k, one swap at the end", {
  x = c(1,2,3,4,5,6,7,8,10,9)
  sorted = c(1,2,3,4,5,6,7,8,9,10)
  expect_identical(slowsort(x), sorted)
})

test_that("long array, 2k+1, one swap in the middle", {
  x = c(1,2,3,5,4,6,7,8,9)
  sorted = c(1,2,3,4,5,6,7,8,9)
  expect_identical(slowsort(x), sorted)
})

test_that("empty vector", {
  x = c()
  sorted = c()
  expect_identical(slowsort(x), sorted)
})
