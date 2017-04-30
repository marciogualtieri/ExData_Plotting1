consumption <- read.csv('./household_power_consumption.txt', 
                        na.strings=c("?"), 
                        sep = ";",
                        header = TRUE,
                        stringsAsFactors = F)

consumption <- subset(consumption, Date == "1/2/2007" | Date == "2/2/2007")

consumption$datetime <- strptime(paste(consumption$Date, consumption$Time, sep = " "), "%d/%m/%Y %H:%M:%S")