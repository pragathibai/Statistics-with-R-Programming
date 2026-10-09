
# 1. 5x4 matrix filled by row
m1 <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE,
             dimnames=list(c("R1","R2","R3","R4","R5"),
                           c("C1","C2","C3","C4")))
print(m1)

# 2. 3x3 matrix filled by column
m2 <- matrix(1:9, nrow=3, ncol=3, byrow=FALSE,
             dimnames=list(c("A","B","C"),
                           c("X","Y","Z")))
print(m2)

# 3. 2x2 matrix filled by row
m3 <- matrix(1:4, nrow=2, ncol=2, byrow=TRUE,
             dimnames=list(c("Row1","Row2"),
                           c("Col1","Col2")))
print(m3)
