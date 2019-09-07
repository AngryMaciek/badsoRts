#' @title Bogosort function
#'
#' @description Sorting a numeric vector with bogosort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords bogosort
#' @export
#' @examples
#' bogosort(c(1,2,4,3))

bogosort = function(a) {
  len = length(a)
  while (is.unsorted(a)) {
    indices = sample(len)
    a = a[indices]
  }
  return(a)
}

# bozosort

# bogobogosort

# worstsort

# badsort

# evilsort

# unittests!
