context("Stoogesorting a numeric vector")

test_that("5-elemental vector, sorted", {
  x = c(1,2,3,4,5)
  sorted = c(1,2,3,4,5)
  expect_identical(stoogesort(x), sorted)
})

test_that("4-elemental vector, all zeros", {
  x = c(0,0,0,0)
  sorted = c(0,0,0,0)
  expect_identical(stoogesort(x), sorted)
})

test_that("4-elemental vector, all negatives", {
  x = c(-1,-2,-3,-4)
  sorted = c(-4,-3,-2,-1)
  expect_identical(stoogesort(x), sorted)
})

test_that("long array, 2k, one swap at the end", {
  x = c(1,2,3,4,5,6,7,8,9,10,12,11)
  sorted = c(1,2,3,4,5,6,7,8,9,10,11,12)
  expect_identical(stoogesort(x), sorted)
})

test_that("long array, 2k+1, one swap at the middle", {
  x = c(1,2,3,4,6,5,7,8,9,10,11)
  sorted = c(1,2,3,4,5,6,7,8,9,10,11)
  expect_identical(stoogesort(x), sorted)
})

test_that("5-elemental vector, reverse", {
  x = c(5,4,3,2,1)
  sorted = c(1,2,3,4,5)
  expect_identical(stoogesort(x), sorted)
})

test_that("1-elemental vector (floating point)", {
  x = c(10.0)
  sorted = c(10.0)
  expect_identical(stoogesort(x), sorted)
})

test_that("empty vector", {
  x = c()
  sorted = c()
  expect_identical(stoogesort(x), sorted)
})
