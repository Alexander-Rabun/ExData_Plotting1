Entire.Data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

Index <- as.character(Entire.Data$Date) == "1/2/2007" | as.character(Entire.Data$Date) == "2/2/2007"

DataSet <- Entire.Data[Index, ]

png(filename = "plot2.png")

hist(DataSet$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red") 

dev.off()
