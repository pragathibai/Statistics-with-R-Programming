data(ChickWeight)

print("First Six Rows")
print(head(ChickWeight))

model <- lm(weight ~ Time + Diet, data = ChickWeight)

print("Multiple Regression Model")
print(summary(model))

new_data <- data.frame(
  Time = 10,
  Diet = factor(2, levels = levels(ChickWeight$Diet))
)

predicted_weight <- predict(model, newdata = new_data)

print("Predicted Weight")
print(predicted_weight)

actual_weight <- ChickWeight$weight
predicted_values <- predict(model)

MAE <- mean(abs(actual_weight - predicted_values))
MSE <- mean((actual_weight - predicted_values)^2)
RMSE <- sqrt(MSE)

print("Mean Absolute Error")
print(MAE)

print("Mean Squared Error")
print(MSE)

print("Root Mean Squared Error")
print(RMSE)

plot(ChickWeight$weight, predicted_values,
     main = "Actual vs Predicted Weight",
     xlab = "Actual Weight",
     ylab = "Predicted Weight",
     pch = 19,
     col = "blue")

abline(0, 1, col = "red", lwd = 2)