x <- 1:12
row_names <- c("Row1", "Row2")
col_names <- c("Col1", "Col2", "Col3")
table_names <- c("Table1", "Table2")
A <- array(x, dim = c(2, 3, 2),
           dimnames = list(row_names, col_names, table_names))
print(A)
print(A[1, 2, 1])
print(A[2, 3, 2])