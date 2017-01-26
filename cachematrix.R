## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  t<- NULL
  set <- function(y){
    x <<- y
    t <<- NULL
  }
  get <- function() x
  setSolve <- function(solve) t <<- solve
  getSolve <- function() t
  list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...){
  ## Return a matrix that is the inverse of 'x'
  t <- x$getSolve()
  if(!is.null(t))  {
    message("Getting cached data")
    return(t)
  }
  data <- x$get()
  t <- solve(data,...)
  x$setSolve(t)
  t
}