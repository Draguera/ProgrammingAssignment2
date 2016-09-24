## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
  {
    i<- NULL
    set<- function(y)
      {
        x<<-y
        i<<-NULL
      }
    print(x)
    get<-function()x
    setInverse<-function(solve)i<<-solve
    print(setInverse)
    getInverse<-function()i
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
  {
        i<-x$getInverse()
        print(i)
        if(!is.null(i))
        {
          return(i)
        }
        matrix<-x$get()
        i<-solve(matrix,...)
        x$setInverse(i)
        i
  }
