students <- data.frame(
  Roll_No = c(101, 102, 103, 104, 105),
  Student_Name = c("Arun", "Priya", "Kavi", "Ravi", "Meena"),
  Department = c("IT", "CSE", "ECE", "IT", "CSE"),
  Marks = c(85, 92, 78, 88, 95)
)

write.csv(students, "students.csv", row.names = FALSE)

csv_data <- read.csv("students.csv")

print("Student Details Read from CSV File:")
print(csv_data)

print("Number of Students:")
print(nrow(csv_data))

print("Column Names:")
print(names(csv_data))