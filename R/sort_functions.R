#' @title Bogosort function
#'
#' @description Sorting a numeric vector with bogosort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords bogosort
#' @return Numeric vector
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

# gorosort

# stooge sort

# slowsort

# bogobogosort

# worstsort

# badsort

# evilsort
