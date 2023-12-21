# (c) Multiplication using %*% operator
# The Operator%*% is used for matrix multiplication satisfying the condition that the number of
# columns in the first matrix is equal to the number of rows in second. If matrix A[M, N] and matrix
# B[N, Z] are multiplied then the resultant matrix will of dimension M*N.

# Creating matrices
m <- matrix(1:8, nrow=2)
n <- matrix(8:15, nrow=4)
# Multiplying matrices using operator
print(m %*% n)