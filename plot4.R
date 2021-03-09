# Plot 4
par(mfrow=c(2,2))

# Sub Plot 1
with(data, plot(datetime, Global_active_power, type="l", xlab = " ", ylab =  "Global Active Power (kilowatts)"))

# Sub Plot 2
with(data, plot(datetime, Voltage, type = "l"))

# Sub Plot 3
with(data, {
  plot(datetime, Sub_metering_1, type="l", xlab = " ", ylab = "Energy sub metering")
  lines(datetime, Sub_metering_2, col = "red")
  lines(datetime, Sub_metering_3, col = "blue")
})
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col=c("black", "red", "blue"))

# Sub Plot 4
with(data, plot(datetime, Global_reactive_power, type = "l"))

dev.copy(png, "plot4.png",
         width  = 480,
         height = 480)

dev.off()