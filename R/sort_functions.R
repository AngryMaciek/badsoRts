# ===================================================================

#' @title Bogosort function
#'
#' @description Sorting a numeric vector with bogosort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords bogosort
#' @return Numeric vector
#' @author Maciej Bak, \email{wsciekly.maciek@@gmail.com}
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
#' @author Maciej Bak, \email{wsciekly.maciek@@gmail.com}
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

recursive_stoogesort = function(a, i, j) {
  if (a[i] > a[j]) {
    # swap elements
    swap = a[i]
    a[i] = a[j]
    a[j] = swap
  }
  if (j - i + 1 > 2) { # subarray has more than 2 elements
    t = floor((j - i + 1) / 3)
    a = recursive_stoogesort(a, i, j-t)
    a = recursive_stoogesort(a, i+t, j)
    a = recursive_stoogesort(a, i, j-t)
  }
  return(a)
}

#' @title Stooge sort function
#'
#' @description Sorting a numeric vector with stooge sort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords stoogesort
#' @return Numeric vector
#' @author Maciej Bak, \email{wsciekly.maciek@@gmail.com}
#' @export
#' @examples
#' stoogesort(c(1,2,4,3))

stoogesort = function(a) {
  if ( length(a)>0 ) {
    a = recursive_stoogesort(a, 1, length(a))
  }
  return(a)
}

# ===================================================================

recursive_slowsort = function(a, i, j) {
  if (i >= j) {
    return(a)
  }
  m = floor((i+j)/2)
  a = recursive_slowsort(a,i,m)
  a = recursive_slowsort(a,m+1,j)
  if (a[j] < a[m]) {
    # swap elements
    swap = a[j]
    a[j] = a[m]
    a[m] = swap
  }
  a = recursive_slowsort(a,i,j-1)
  return(a)
}

#' @title Slowsort function
#'
#' @description Sorting a numeric vector with slowsort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords slowsort
#' @return Numeric vector
#' @author Maciej Bak, \email{wsciekly.maciek@@gmail.com}
#' @export
#' @examples
#' slowsort(c(1,2,4,3))

slowsort = function(a) {
  if ( length(a)>0 ) {
    a = recursive_slowsort(a, 1, length(a))
  }
  return(a)
}

# ===================================================================

#' @title Bogobogosort function
#'
#' @description Sorting a numeric vector with bogobogosort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords bogobogosort
#' @return Numeric vector
#' @author Maciej Bak, \email{wsciekly.maciek@@gmail.com}
#' @export
#' @examples
#' bogobogosort(c(1,2,4,3))

bogobogosort = function(a) {
  len = length(a)
  return(a)
}

# ===================================================================

#' @title Evilsort function
#'
#' @description Sorting a numeric vector with evilsort algorithm.
#' @param a Numeric vector to be sorted
#' @keywords evilsort
#' @return Numeric vector
#' @author Maciej Bak, \email{wsciekly.maciek@@gmail.com}
#' @export
#' @examples
#' evilsort(c(1,2,4,3))

evilsort = function(a) {
  len = length(a)
  return(a)
}

# ===================================================================
