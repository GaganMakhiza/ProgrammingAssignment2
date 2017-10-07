## this function returns the inverse of a matrix

## this function takes matrix as agrument and return a list containg function to
## set the value of matrix
## get the value of matrix
## set the inverse of matrix
## get the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinv <- function(ginv) i <<- ginv
    getinv <- function() i
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}

## This function computes inverse of the special "matrix" returned by the "makeCacheMatrix" function
## Also if the matrix is not changed and inverse of matrix is already calculated 
## then "cacheSolve" retrives the inverse from the cache

cacheSolve <- function(x, ...) {
    
    i <- x$getinv()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- ginv(data, ...)
    x$setinv(m)
    i
}
