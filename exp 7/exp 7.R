n <- as.integer(readline("Enter a number: "))

for (i in 1:n) {
  if (n %% i == 0) {
    print(i)
  }
}

x <- sample(-50:50, 10)
print(x)

for (i in 1:100) {
  if (i %% 3 == 0 && i %% 5 == 0) {
    print("FizzBuzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}