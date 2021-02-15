### Creating our matrices
A <- matrix(1:100, nrow=10)
B <- matrix (1:1000, nrow=10)


### Transposing our two matricies
t(A)
t(B)

### Creating two vectors

a <- runif(100,1,100)
b <- runif(1000,0,100000)

### Multiply matricies by vectors

X=a*A
Y=b*B

### Reassigning our created vectors into a matrix before multiplication
a=matrix(a, nrow=10)
b=matrix(b, nrow=10)

### Multiplying the two sets of matricies

A<-X %*% a
B<-t(Y)%*% b
### unknown as to why this needs to be transposed in order for this to work right now ###
### further investigation is required ###

### Finding the Inverse and determinant
solve(A)
det(A)
M<-solve(A)
A %*% M

### B is currently not working due to "system is computationally singular" ###
### Further investigation is required in order to sort this out ###
solve(B)
det(B)
N<-solve(B)
B %*% N








