## Below function creats a specail matrix object which can cache its inverse
## Its similar to makeVector function in given example 
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL 
  set <- function(y)# setter function which can reset value of matrix object
    {
    x <<- y
    inv <<- NULL  # Nulling cached value
  }	  
  get <- function() x # getter function which returns matric
  setInv <- function(inv_m) inv <<- inv_m # sets inverted matrix to cahche
  getInv <- function() inv # retrieves inverted matrix from cache
  
  list(set= set, get = get, setInv = setInv, getInv = getInv)
}


## Below function calls special object functions and does

cacheSolve <- function(x, ...)
  {
  inv <<- x$getInv()   # gets inverted matrix value from cache
  
  if(!is.null(inv)) # checks if already there
     {
       print("getting cached inverse matrix")
       return(inv)
  }
  # if not there calulate invert by solve function .
  # and then call setInv to store into cache
  m <- x$get()
  inv_m <- solve(m)
  x$setInv(inv_m)
  inv_m
}
