setwd("~/R/ProgrammingAssignment2-master")

## Setting input x as a matrix
## Solving value "i" as a NULL
## Changed references from "mean" to "inverse"

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) i <<- inverse
  getInverse <- function() i
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Computing the inverse of the matrix created by using a function below

cacheSolve <- function(x, ...) {
        i <- x$getInverse()
        if(!is.null(i)) {
          message("getting inverse matrix")
          return(i)
        }
        data <- x$get()
        i <- inverse(data)
        x$setInverse(i)
        i
}