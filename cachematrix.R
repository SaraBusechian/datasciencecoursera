## Functions to cache the inverse of matrix

## object to cache the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  im<-NULL
  set<-function(matrix){
    m<<-matrix
    im<<-NULL
  }
 get<-function() m
 setInverse<-function(inverse){
   i<<-inverse
 }
 getInverse<-function(){
   i
 }
 list(set=set,get=get,
      setInverse=setInverse,
      getInverse=getInverse)
}


## cache inverse and return it


cacheSolve <- function(x, ...) {
  m<-x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data<-x$get
  m<-solve(data)
  x$setInverse(m)
  m
}
