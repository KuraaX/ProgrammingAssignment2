#Assignment said a matrix that can be inversed will be provided. 
#this creates the two matrices for testing purposes.

matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
matrix2 <- matrix(c(5, -7, 2, -3), nrow = 2, ncol = 2)

#makeCacheMatrix function takes the matrix and creates two global variables
#that stores (caches) the matrix as well as stores the inverse of the matrix 
#in case we want to inverse the same matrix in the future.

makeCacheMatrix <- function(my_matrix){
  matrix_cache <<- my_matrix
  matrix_inverse <<- solve(matrix_cache)
}

#cacheSolve function takes a matrix and compares it to the cached matrix above
#and if the matrix is the same, it returns the cached inverse. If the matrix
#is different, it outputs the inverse of the non-cached matrix.

cacheSolve <- function(my_matrix){
  if(all.equal(matrix_cache,my_matrix) == TRUE) {
    message("getting cached data")
    output <- matrix_inverse
  }
  else {output <- solve(my_matrix)}
  output
}

#testing the functions below

makeCacheMatrix(matrix1)
cacheSolve(matrix1)
cacheSolve(matrix2)