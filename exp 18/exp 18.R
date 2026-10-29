
data(iris)

print("1. Boxplot")
boxplot(iris$Sepal.Length,
        main = "Boxplot of Sepal Length",
        ylab = "Sepal Length",
        col = "lightblue")

print("2. Histogram")
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length",
     col = "lightgreen",
     border = "black")

print("3. Bar Plot")
species_count <- table(iris$Species)
barplot(species_count,
        main = "Number of Flowers by Species",
        xlab = "Species",
        ylab = "Count",
        col = c("red", "blue", "green"))

print("4. Line Chart")
plot(1:10, 1:10,
     type = "o",
     main = "Line Chart",
     xlab = "X Values",
     ylab = "Y Values",
     col = "blue",
     pch = 16)

print("5. Scatter Plot")
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col = "purple",
     pch = 16)
