HousePower <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")  ## Load the data table
HousePowerWantedDates <- HousePower[HousePower$Date == "1/2/2007"|HousePower$Date == "2/2/2007",]                    ## Sort the table by the desired dates 
par(mfrow = c(2, 2)) 
plot(HousePowerWantedDates[,3], type = "l", xaxt = 'n', xlab = '', ylab = "Global Active Power (kilowatts)")
axis(side = 1, at = c(0, 1440,2880), labels = c("Thursday", "Friday", "Saturday"))

plot(HousePowerWantedDates[,5], type = "l", xaxt = 'n', xlab = 'datetime', ylab = "Voltage")
axis(side = 1, at = c(0, 1440,2880), labels = c("Thursday", "Friday", "Saturday"))

plot(HousePowerWantedDates[,7], type = "l", xaxt = 'n', xlab = '', ylab = "Energy sub metering")
axis(side = 1, at = c(0, 1440,2880), labels = c("Thursday", "Friday", "Saturday"))
lines(HousePowerWantedDates[,8], type = "l", col = "red")
lines(HousePowerWantedDates[,9], type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(HousePowerWantedDates[,4], type = "l", xaxt = 'n', xlab = 'datetime', ylab = "Global reactive power")
axis(side = 1, at = c(0, 1440,2880), labels = c("Thursday", "Friday", "Saturday"))
dev.copy(png, filename = "plot4.png", height = 480, width = 480)
dev.off()