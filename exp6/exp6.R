v <- c(10, 20, 30, 40)

m <- matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE)

f <- function(x) {
  return(x * x)
}

my_list <- list(Vector = v, Matrix = m, Function = f)

print(my_list)

print(my_list$Vector)
print(my_list$Matrix)
print(my_list$Function(5))