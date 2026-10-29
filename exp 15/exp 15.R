
data(iris)

print("1. Dataset Dimensions")
print(dim(iris))

print("2. Dataset Summary")
print(summary(iris))

print("3. Standard Deviation")
print(sapply(iris[, 1:4], sd))

print("4. Quantiles")
print(sapply(iris[, 1:4], quantile))

print("5. Grouping by Species")
print(aggregate(. ~ Species, data = iris, FUN = mean))

print("6. Pivot Table: Species Counts")
print(xtabs(~ Species, data = iris))

print("7. Create Sepal Length Categories")
iris$Sepal_Category <- cut(
  iris$Sepal.Length,
  breaks = c(4, 5, 6, 7, 8),
  labels = c("Short", "Medium", "Long", "Very Long"),
  include.lowest = TRUE
)

print(head(iris))

print("8. Categorical Grouping by Sepal Length")
print(table(iris$Sepal_Category, iris$Species))

print("9. Mean Sepal Length by Category")
print(aggregate(Sepal.Length ~ Sepal_Category,
                data = iris, FUN = mean, na.rm = TRUE))
