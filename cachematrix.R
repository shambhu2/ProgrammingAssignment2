## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv_v <<- cacheSolve(x)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m2 <<- inv_v
  
  if(!is.null(m2))
  {
    print("getting cached data")
    print(m2)
    
  }
  else 
    m <<- solve(x)
  
}

