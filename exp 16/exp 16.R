
data(USArrests)

print("1. Summary Statistics")
print(summary(USArrests))

print("2. State with Largest Rape Arrest Rate")
print(rownames(USArrests)[which.max(USArrests$Rape)])
print(max(USArrests$Rape))

print("3. Maximum and Minimum Murder Rates")
print(rownames(USArrests)[which.max(USArrests$Murder)])
print(max(USArrests$Murder))
print(rownames(USArrests)[which.min(USArrests$Murder)])
print(min(USArrests$Murder))

print("4. Correlation Among Features")
print(cor(USArrests))

print("5. States Above Median Assault Rate")
median_assault <- median(USArrests$Assault)
print(USArrests[USArrests$Assault > median_assault, ])

print("6. States in Bottom 25 Percent for Murder")
q1 <- quantile(USArrests$Murder, 0.25)
print(USArrests[USArrests$Murder <= q1, ])

print("7. Histogram of Murder Rates")
hist(USArrests$Murder,
     main = "Histogram of Murder Rates",
     xlab = "Murder Arrest Rate",
     col = "lightblue")

print("8. Density Plot of Murder Rates")
plot(density(USArrests$Murder),
     main = "Density of Murder Rates",
     xlab = "Murder Arrest Rate",
     col = "blue",
     lwd = 2)

print("9. Scatterplot: Murder vs Assault")
plot(USArrests$Murder, USArrests$Assault,
     main = "Murder vs Assault",
     xlab = "Murder Arrest Rate",
     ylab = "Assault Arrest Rate",
     pch = 19,
     col = "red")

print("10. Bar Graph of Murder Rates")
barplot(USArrests$Murder,
        names.arg = rownames(USArrests),
        main = "Murder Rates by State",
        xlab = "States",
        ylab = "Murder Arrest Rate",
        col = "lightgreen",
        las = 2,
        cex.names = 0.5)
