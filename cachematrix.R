## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matin <- NULL
  set <- function(mat) {
    x <<- mat
    matin <<- NULL
  }
  get <- function() x
  setsolve <- function(mi) matin <<- mi
  getsolve <- function() matin
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matin <- x$getsolve()
  if(!is.null(matin)){
    message("getting cached data")
    return(matin)
  }
  matin <- solve(x$get(), ...)
  x$setsolve(matin)
  matin
}
