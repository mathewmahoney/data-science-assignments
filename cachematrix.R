## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        n <- NULL
      set <- function(y){
         x <<- y
         n <<- NULL
  }
    get     <- function () x
    setmean <- function(mean) n <<- mean
    getmean <- function()n
    list(set = set, get = get,
         setmean = setmean, 
         getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      n <- x$getmean()
      if(!is.null(n)) {
          message("getting cached data")
          return(n)
      }
        data <- x$get()
        n <- mean(data, ...)
        x$setmean(n)
        n
        }
