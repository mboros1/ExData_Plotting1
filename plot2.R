HousePower <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")  ## Load the data table
HousePowerWantedDates <- HousePower[HousePower$Date == "1/2/2007"|HousePower$Date == "2/2/2007",]                    ## Sort the table by the desired dates 
plot(HousePowerWantedDates[,3], type = "l", xaxt = 'n', xlab = '', ylab = "Global Active Power (kilowatts)")
axis(side = 1, at = c(0, 1440,2880), labels = c("Thursday", "Friday", "Saturday"))
dev.copy(png, filename = "plot2.png", height = 480, width = 480)
dev.off()