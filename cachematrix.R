<<<<<<< HEAD
## makeCacheMatrix:creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {

	## Initialize the inverse property
        im <- NULL

	## Method to set the matrix
        set <- function(y) {
            x <<- y
            im <<- NULL
        }

	## Method the get the matrix
        get <- function() x

	## Method to set the inverse of the matrix
        setinverse <- function(inverse) im <<- inverse

	## Method to get the inverse of the matrix
        getinverse <- function() im

	## Return a list of the methods
        list(set=set, get=get
           , setinverse=setinverse
           , getinverse=getinverse)
}


## cacheSolve: computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()

	## Return the inverse if its already set
        if(!is.null(inv)) {
            message("getting cached data.")
            return(inv)
        }

	## Get the matrix from our object
        data <- x$get()

	## Calculate the inverse using matrix multiplication
        inv <- solve(data)

	## Set the inverse to the object
        x$setinverse(inv)

	## Return the matrix
        inv
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        im <- NULL
        set <- function(y) {
            x <<- y
            im <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) im <<- inverse
        getinverse <- function() im
        list(set=set, get=get
           , setinverse=setinverse
           , getinverse=getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
            message("getting cached data.")
            return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
>>>>>>> origin/master
} 