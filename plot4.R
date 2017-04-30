source("loadData.R")

#
# Configure a 2 x 2 Canvas
#
par(mfrow=c(2,2))

#
# Plot Global Active Power vs. Date/Time
#
with(consumption,
     plot(datetime, Global_active_power,
          type = "l",
          xlab = "",
          ylab = "Global Active Power"))

#
# Plot Global Voltage vs. Date/Time
#
with(consumption,
     plot(datetime, Voltage,
          type = "l"))

#
# Plot Sub Metering Energy vs. Date/Time
#
with(consumption, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(consumption, lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(consumption, lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = c(1,1), bty = "n")

#
# Plot Global Reactive Power vs. Date/Time
#
with(consumption,
     plot(datetime, Global_reactive_power,
          type = "l"))

#
# Save to PNG
#
dev.copy(png, filename = "plot4.png")
dev.off ()