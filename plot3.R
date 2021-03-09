# Plot 3
with(data, {
  plot(datetime, Sub_metering_1, type="l", xlab = " ", ylab = "Energy sub metering")
      lines(datetime, Sub_metering_2, col = "red")
      lines(datetime, Sub_metering_3, col = "blue")
})
      legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col=c("black", "red", "blue"))

      dev.copy(png, "plot3.png",
               width  = 480,
               height = 480)

dev.off()