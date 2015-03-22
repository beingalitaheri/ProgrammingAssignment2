



makeCacheMatrix <- function(x = matrix()) { 
  ## this function takes a matrix and converts it into a matrix that can cache its own inverse.
  
     inverse <- NULL ##this line is making a variable to store the calculated inverse into it.

     set <- function(input){
       
            x <<- input
            
            inverse <<- NULL      
            
            
            ## Takes the input matrix, and replace the parent function's variable 'x'
            ## so it replaces the 'x' assigned to 'makeCacheMatrix' function.

}




     get <- function () { ## 'get' function will return the current value of 'x' inside 'makeCacheMatrix' Environment.
  
        return (x)

}

 

    setinv <- function(inv){  ## Replacing the value of 'inverse' whithin
                              ## the 'makeCacheMatrix' Environment with a new value.
        inverse <<- inv
      }
  
    
   getinv <- function(){   ## Will return the current value of 'inverse' inside 'makeCacheMatrix' Environment.
     
        return (inverse)
      }
  

    
    list (set = set,
          get = get,
          setinv = setinv,
          getinv = getinv)

## makes and returns a list of the newly made functions
## so it is easy to access from another function.

}

## Write a short comment describing this function

  ## this function first checks if there's an already calculated inverse
  ## of the input matrix and returns it if available.
  ## if not available, it calculates the inverse of the matrix
  ## and stores it.

cacheSolve <- function(x, ...) { ## Return a matrix that is the inverse of 'x'
        
  
      inverse <- x$getinv()   ##gets the value of inverse from the 'Matrix' and puts it inside 'inverse'
  
      
    
  
      if (!is.null(inverse)) {  ## Check if there is a value attached to 'inverse'
          message("getting cached data")
          return (inverse)
        }
    
      
      data <- x$get()    ##if 'inverse' is NULL, it need to be calculated
                       ##get the stored matrix and put it inside 'data'.
    
     
      inverse <- solve(data)  ##This line will calculate the inverse, by a built-in functino of R and store it inside 'inverse'
    
     
      x$setinv (inverse)
    

      return (inverse)
}
