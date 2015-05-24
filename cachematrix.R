## Put comments here that give an overall description of what your
## functions do

## This project caches matrix inverses and returns them.

## Write a short comment describing this function

## This function takes a matrix as an argument and stores it in mat. 
## This function assigns NULL to the matrix inverse and initializes
## the functions set, get, setsolve, and getsolve. These functions 
## are then stored in a list.
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

## This function takes x as an argument to access the cached data.
## This function assigns the matrix inverse to the getsolve function
## in the previous function. Then the matrix inverse is tested to
## determine whether or not the inverse is NULL. If the cached inverse
## exists then it is retrieved. If not then this function solves, sets, 
## and outputs the inverse.
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
