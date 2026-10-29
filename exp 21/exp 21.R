library(nnet)
data(iris)

set.seed(123)

index <- sample(1:nrow(iris), 0.8 * nrow(iris))

train_data <- iris[index, ]
test_data <- iris[-index, ]

model <- multinom(Species ~ Petal.Length + Petal.Width,
                  data = train_data)

print("Logistic Regression Model")
print(summary(model))

predictions <- predict(model, newdata = test_data)

print("Predicted Species")
print(predictions)

print("Confusion Matrix")
confusion_matrix <- table(
  Actual = test_data$Species,
  Predicted = predictions
)
print(confusion_matrix)

accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix) * 100

print("Model Accuracy")
print(paste(round(accuracy, 2), "%"))