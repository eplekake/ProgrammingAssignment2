## These functions aim to cache the inverse of a matrix

## Makechachematrix creates a matrix that contains a function to set the value of the matrix,
## to get the value of the matrix; to set the value of the inverse, and to get the value of 
## inverse.

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y) {
        x <<- y
        inverse <<- NULL
}
get <- function() x
setinverse <- function(solve) inverse <<- solve
getinverse <- function() inverse
list(set=set, get=get, setinverse=setiverse, getinverse = getinverse)
}



## The cachesolve function returns a the inverse of the 'x' matrix
cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
        if(!is.null(inverse)) {
                message("Getting cached result")
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        inverse
}
