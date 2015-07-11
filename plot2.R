Entire.Data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

Index <- as.character(Entire.Data$Date) == "1/2/2007" | as.character(Entire.Data$Date) == "2/2/2007"

DataSet <- Entire.Data[Index, ]

png(filename = "plot2.png")

plot(DataSet$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)",  xaxt="n", type = "l")

axis(side = 1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"), pos = -.07) 

dev.off()
