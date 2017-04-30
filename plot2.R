source("loadData.R")

with(consumption,
     plot(datetime, Global_active_power,
          type = "l",
          xlab = "",
          ylab = "Global Active Power (kilowatts)"))

dev.copy(png, filename = "plot2.png")
dev.off ()