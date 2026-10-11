x <- rnorm(100, mean = 0, sd = 1)

print(x)

count_positive <- sum(x > 0)
count_negative <- sum(x < 0)
count_zero <- sum(x == 0)

print(count_positive)
print(count_negative)
print(count_zero)