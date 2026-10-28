
exam_data <- data.frame(
  name = c("Anastasia", "Dima", "Katherine", "James", "Emily", "Michael"),
  score = c(12.5, 9, 16.5, 12, 9, 20),
  attempts = c(1, 3, 2, 3, 2, 1),
  qualify = c("yes", "no", "yes", "no", "no", "yes")
)

print(exam_data)

print(exam_data$name)
print(exam_data[1, ])
print(exam_data[, "score"])

exam_data$grade <- c("B", "C", "A", "B", "C", "A")
print(exam_data)

new_student <- data.frame(
  name = "John",
  score = 15,
  attempts = 1,
  qualify = "yes",
  grade = "B"
)

exam_data <- rbind(exam_data, new_student)
print(exam_data)

exam_data$bonus <- exam_data$score + 2
print(exam_data)

exam_data <- exam_data[order(exam_data$score, decreasing = TRUE), ]
print(exam_data)

write.csv(exam_data, "exam_data.csv", row.names = FALSE)
print("Data saved to exam_data.csv")
