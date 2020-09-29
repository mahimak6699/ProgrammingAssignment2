## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  invertible <- NULL
  #set value of matrix
  set <- function(y){
    x <<- y
    inverstible <<- NULL
  }
  
  #get value of matrix
  get <- function() {x}
  #set value of inverse
  setinverse <- function(inverse) {invertible <<- inverse}
  #get value of inverse
  getinverse <- function() {invertible}
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invertible <- x$getinverse()
  
  #check if inverse has already been calculated
  if(!is.null(invertible)){
    #if inverse is retrieved from cache then display message
    message("Cached data")
    return(invertible)
  }
  
  #compute value of matrix 
  matrix <- x$get()
  invertible <- solve(matrix, ...)
  #set inverse in cache
  x$setinverse(invertible)
  invertible
}

