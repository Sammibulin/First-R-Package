A = matrix(c(2,0,1,3), ncol = 2)
B = matrix(c(5,2,4,1), ncol = 2)

A
B

a <- A+B
b <- A-B

a
b

diag(c(4,1,2,3), 4)


M <- matrix(0,nrow = 4, ncol=4)

M

M <- cbind(2,M)
M <- rbind(1,M)

M

diag(M) <- 3

M
