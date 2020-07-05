## Calculation of matrix inversion can be time consuming
## Below function is to catch a matrix and calculate its matrix inversion

## This function is set to create a special 'matrix' object that can be catch its inverse matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
        x <<- y
        inv <<- NULL
}
get <- function() x {
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(
                set = set,
                get = get,
                setInverse = setInverse,
                getInverse = getInverse
        )
}
}


## This function is to return the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.NULL(inv)) {
                message("Get catched data!")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
