source("loadData.R")

with(consumption, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(consumption, lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(consumption, lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = c(1,1))

dev.copy(png, filename = "plot3.png")
dev.off ()