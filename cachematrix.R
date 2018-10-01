## I used the examples as a template; the problems are very similar

## makeCacheMatrix contains a function to:
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the matrix's inverse
## 4. Get the value of the matrix's inverse

makeCacheMatrix <- function(x = matrix()) {
  theinverse <- NULL
  set <- function(y) {
    x <<- y
    theinverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) theinverse <<- inverse
  getinverse <- function() theinverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Again, the example provided served as a template as the functions are very similar

## cacheSolve will return the inverse of a matrix
## It first checks to see if the value is cached. If so, it skips the calculation and 
## returns the cached value.

## cacheSolve assumes the matrix is invertible.

cacheSolve <- function(x, ...) {
  theinverse <- x$getinverse()
  if(!is.null(theinverse)) {
    message("getting cached data")
    return(theinverse)
  }
  data <- x$get()
  theinverse <- solve(data)
  x$setinverse(theinverse)
  theinverse
}


