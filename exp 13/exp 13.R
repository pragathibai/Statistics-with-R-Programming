A <- array(1:12, dim = c(3, 4))
B <- array(13:24, dim = c(3, 4))
C <- array(25:36, dim = c(3, 4))

print("Array A:")
print(A)

print("Array B:")
print(B)

print("Array C:")
print(C)

result <- rbind(A, B, C)

print("Combined Array Row-wise:")
print(result)