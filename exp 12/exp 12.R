data(airquality)

aq <- airquality
aq$Temperature <- aq$Temp

melted_data <- data.frame(
  Month = rep(aq$Month, times = 4),
  Measurement = rep(c("Ozone", "Solar.R", "Wind", "Temperature"),
                    each = nrow(aq)),
  Value = unlist(aq[, c("Ozone", "Solar.R", "Wind", "Temperature")],
                 use.names = FALSE)
)

print("Melted Data")
print(head(melted_data))

monthly_avg <- aggregate(
  Value ~ Month + Measurement,
  data = melted_data,
  FUN = mean,
  na.rm = TRUE
)

print("Monthly Averages in Long Format")
print(monthly_avg)

cast_data <- reshape(
  monthly_avg,
  idvar = "Month",
  timevar = "Measurement",
  direction = "wide"
)

print("Cast Data")
print(cast_data)