HousePower <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")  ## Load the data table
HousePowerWantedDates <- HousePower[HousePower$Date == "1/2/2007"|HousePower$Date == "2/2/2007",]                                  ## Sort the table by the desired dates 
hist(as.numeric(HousePowerWantedDates[,3]), breaks = 20, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")  ## Create the histogram
dev.copy(png, filename = "plot1.png", height = 480, width = 480)                                                                  ## Copy it to the .png file
dev.off()                                                                                                                        ## Close the device
