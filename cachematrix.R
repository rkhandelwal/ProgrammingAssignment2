## makeCacheMatrix - is a helper function that creates a list of four functions as follows
## 1. set - sets (or stores) the matrix in the cache
## 2. get - gets the value of the matrix from the cache
## 3. setinv - sets (or stores) the inverse of the matrix in the cache
## 4. getinv - gets (or retrieves) the inverse of the matrix from the cache
##
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        
        ## set function to store the matrix
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        
        ## get function to retrieve the matrix
        get <- function() x
        
        ## setinv function to store the inverse of the matrix
        setinv <- function(solve) inv <<- solve
        
        ## getinv function to retrieve the inverse of the matrix
        getinv <- function() inv
        
        ## create a list of the above four functions
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}



## cacheSolve function caclculates the inverse of the given matrix. It first checks the
## cache if the inverse has already been calculated. if not, then it calculates the 
## inverse, stores it in the cache and returns the inverse of the matrix.
cacheSolve <- function(x, ...) {

	## retrieve inverse from the cache
        inv <- x$getinv()
        
        ## check if invers has been calculated
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        
        ## if cache is empty, then retrieve the matrix from the cache
        data <- x$get()
        
        ## calculate the inverse here
        inv <- solve(data, ...)
        
        ## store the inverse in the cache
        x$setinv(inv)
        inv
}