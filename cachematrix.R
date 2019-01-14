## These two functions will create a matrix that can store it's inverse in the cache, and then retrieve it from the cache
## 

## MakeCacheMatrix creates a matrix that can store it's inverted outut in  cache

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y){
  x<<-y
  m <<-NULL
  
}
get <- function() x
setInv <- function (mat) m <<- mat
getInv <-function() inv
list(set = set, get = get, setInv = setInv, getInv = getInv )
}


## cacheSolve will solve the inverse of makeCacheMatrix and will return it from cache if it is stored in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(is.nan(m)){
    out <- x$get()
m <- solve(out)
x$setInverse(m)
return(m)}
  return(m)
}