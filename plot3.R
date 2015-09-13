HousePower <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")  ## Load the data table
HousePowerWantedDates <- HousePower[HousePower$Date == "1/2/2007"|HousePower$Date == "2/2/2007",]                    ## Sort the table by the desired dates 
plot(HousePowerWantedDates[,7], type = "l", xaxt = 'n', xlab = '', ylab = "Energy sub metering")
axis(side = 1, at = c(0, 1440,2880), labels = c("Thursday", "Friday", "Saturday"))
lines(HousePowerWantedDates[,8], type = "l", col = "red")
lines(HousePowerWantedDates[,9], type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.copy(png, filename = "plot3.png", height = 480, width = 480)
dev.off()