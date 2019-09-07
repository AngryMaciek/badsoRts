# ===================================================================

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
    # pseudorandom permutation:
    indices = sample(len)
    a = a[indices]
  }
  return(a)
}

# ===================================================================

#' @title Bozosort function
#'
#' @description Sorting a numeric vector with bozosort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords bozosort
#' @return Numeric vector
#' @export
#' @examples
#' bozosort(c(1,2,4,3))

bozosort = function(a) {
  len = length(a)
  while (is.unsorted(a)) {
    indices = sample(x=len, size=2)
    # swap two elements:
    swap = a[indices[1]]
    a[indices[1]] = a[indices[2]]
    a[indices[2]] = swap
  }
  return(a)
}

# ===================================================================

#' @title Gorosort function
#'
#' @description Sorting a numeric vector with gorosort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords gorosort
#' @return Numeric vector
#' @export
#' @examples
#' gorosort(c(1,2,4,3))

gorosort = function(a) {
  len = length(a)
  return(a)
}

# ===================================================================

#' @title Stooge sort function
#'
#' @description Sorting a numeric vector with stooge sort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords stoogesort
#' @return Numeric vector
#' @export
#' @examples
#' stoogesort(c(1,2,4,3))

stoogesort = function(a) {
  len = length(a)
  return(a)
}

# ===================================================================




# slowsort

# bogobogosort



# evilsort

# badsort

# worstsort




