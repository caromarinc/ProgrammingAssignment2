## Put comments here that give an overall description of what your
## functions do

## THIS FUNCTION CREATES A SPECIAL "MATRIX" WHICH IS A LIST CONTAINING THE FOLLOWING FUNCTIONS:
# 1. SET THE MATRIX VALUE
# 2. GET THE MATRIX VALUE
# 3. SET THE INVERSE OF THE MATRIX
# 4. GET THE INVERSE OF THE MATRIX

makeCacheMatrix <- function(x = matrix()) {
    
    #INITIALIZE MATRIX 
    inverseMatrix <- NULL

    #SET THE MATRIX VALUE
    set <- function(y){
        #ASSIGNE THE VALUE
        X <<- y
        #INITILIZAE THE MATRIX WITH NULL VALUE 
        inverseMatrix <<- NULL
    }
    
    #GET THE CURRENT VALUE
    get <- function() X
    
    # THIS WILL SET THE INVERSE OF THE MATRIX IN THE OUTER ENVIRONMENT (PARENT)
    setInverse <- function(inverse) inverseMatrix <<- inverse
    # THIS WIIL RETURN THE INVERSE MATRIX OF THE OUTER ENVIRONMENT (PARENT)
    getInverse <- function() inverseMatrix
    

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
