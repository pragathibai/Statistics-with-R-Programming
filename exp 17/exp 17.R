
data(Titanic)

titanic_df <- as.data.frame(Titanic)

print("1. Titanic Dataset")
print(head(titanic_df))

print("2. Survival vs Passenger Class")
survival_class <- xtabs(Freq ~ Class + Survived, data = titanic_df)
print(survival_class)

barplot(t(survival_class),
        beside = TRUE,
        col = c("tomato", "lightgreen"),
        main = "Survival vs Passenger Class",
        xlab = "Passenger Class",
        ylab = "Number of Passengers",
        legend.text = TRUE,
        args.legend = list(title = "Survived"))

print("3. Survival by Gender")
survival_gender <- xtabs(Freq ~ Sex + Survived, data = titanic_df)
print(survival_gender)

barplot(t(survival_gender),
        beside = TRUE,
        col = c("tomato", "lightgreen"),
        main = "Survival by Gender",
        xlab = "Gender",
        ylab = "Number of Passengers",
        legend.text = TRUE,
        args.legend = list(title = "Survived"))

print("4. Passenger Age Distribution")

age_group <- c("Child", "Adult")
age_count <- xtabs(Freq ~ Age, data = titanic_df)
print(age_count)

barplot(age_count,
        col = "skyblue",
        main = "Titanic Passengers by Age Group",
        xlab = "Age Group",
        ylab = "Number of Passengers")
