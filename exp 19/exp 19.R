
Spend <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
Sales <- c(15, 20, 25, 30, 35, 40, 45, 50, 55, 60)

advertising <- data.frame(Spend, Sales)

print("Advertising Dataset")
print(advertising)

model <- lm(Sales ~ Spend, data = advertising)

print("Regression Model Summary")
print(summary(model))

new_data <- data.frame(Spend = 75)

predicted_sales <- predict(model, newdata = new_data)

print("Predicted Sales for Spend = 75")
print(predicted_sales)

plot(advertising$Spend, advertising$Sales,
     main = "Advertising Spend vs Sales",
     xlab = "Advertising Spend",
     ylab = "Sales",
     pch = 19,
     col = "blue")

abline(model, col = "red", lwd = 2)
