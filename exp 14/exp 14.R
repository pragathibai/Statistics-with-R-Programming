data(ChickWeight)

print("First Six Rows:")
print(head(ChickWeight))

print("Dataset Structure:")
str(ChickWeight)

sorted_data <- ChickWeight[order(ChickWeight$weight), ]
print("Sorted by Weight:")
print(head(sorted_data))

melted_data <- data.frame(
  Chick = ChickWeight$Chick,
  Diet = ChickWeight$Diet,
  Time = ChickWeight$Time,
  Weight = ChickWeight$weight
)

print("Melted Data:")
print(head(melted_data))

diet_summary <- aggregate(
  Weight ~ Diet + Time,
  data = melted_data,
  FUN = mean
)

print("Average Weight by Diet and Time:")
print(diet_summary)

cast_data <- reshape(
  diet_summary,
  idvar = "Time",
  timevar = "Diet",
  direction = "wide"
)

print("Cast Data by Diet:")
print(cast_data)