## makeCacheMatrix & cacheSolve

## makeCacheMatrix: This function creates a special "matrix" object
## that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsol <- function(solve) m <<- mean
  getsol <- function() m
  s <- list(set = set, get = get,
            setsol = setsol,
            getsol = getsol)
  do.call(rbind,s)
}


## cacheSolve: This function computes the inverse of the special 
## "matrix" returned by makeCacheMatrix above. If the inverse has 
## already been calculated (and the matrix has not changed), then
##the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  y <- rep(1,nrow(x))
  single <- diag(y)
  solve(x,single)
  
  ## Return a matrix that is the inverse of 'x'
}
