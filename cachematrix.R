## Put comments here that give an overall description of what your
## functions do

## I USE THE EXAMPLE: Caching the Mean of a Vector AS THE BASE FOR THE MATRIX FUNCTIONS

## THIS FUNCTION CREATES A SPECIAL "MATRIX" WHICH IS A LIST CONTAINING THE FOLLOWING FUNCTIONS:
## 1. SET THE MATRIX VALUE
## 2. GET THE MATRIX VALUE
## 3. SET THE INVERSE OF THE MATRIX
## 4. GET THE INVERSE OF THE MATRIX

makeCacheMatrix <- function(x = matrix()) {
    
    ## INITIALIZE MATRIX 
    inverseMatrix <- NULL

    ## SET THE MATRIX VALUE
    set <- function(y){
        ## ASSIGNE THE VALUE
        x <<- y
        ## INITILIZAE THE MATRIX WITH NULL VALUE 
        inverseMatrix <<- NULL
    }
    
    ## GET THE CURRENT VALUE
    get <- function() x
    
    ## THIS WILL SET THE INVERSE OF THE MATRIX IN THE OUTER ENVIRONMENT (PARENT)
    setInverse <- function(inverse) inverseMatrix <<- inverse
    ## THIS WIIL RETURN THE INVERSE MATRIX OF THE OUTER ENVIRONMENT (PARENT)
    getInverse <- function() inverseMatrix
    
    ## RETURN A LIST OF FUNCTIONS FOR THE CACHE MATRIX
    list(set = set, get = get,
         setInverse = setInverse,
        getInverse = getInverse)

}


##  THIS FUNCTION GETS THE INVERSE OF THE SPECIAL "MATRIX" CREATED WITH THE ABOVE FUNCTION. 
##  IF IT WAS ALREADY GENERATED IT WILL GET IT FROM CACHE
##  OTHERWISE, THE INVERSE WILL BE OBTAIN BY RUNNING THE SOLVE FUNCTION

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    ## FIRST TRIES TO GET THE INVERSE FROM CACHE
    inverseMatrix <- x$getInverse()
    
    ## IF MATRIX IN CACHE RETURN DATA
    if(!is.null(inverseMatrix)) {
        message("getting cached data")
        ## RETURN CACHE MATRIX
        return(inverseMatrix)
    }
    
    #IF NO CACHE MATRIX, GET ORIGINAL AND PERFORM INVERSE
    data <- x$get()
    inverseMatrix <- solve(data, ...)
    ## SET THE CACHE MATRIX INVERSE
    x$setInverse(inverseMatrix)
    
    ##RETURN THE INVERSE OF THE MATRIX
    return(inverseMatrix)
}
