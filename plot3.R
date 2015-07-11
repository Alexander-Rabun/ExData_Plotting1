Entire.Data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

Index <- as.character(Entire.Data$Date) == "1/2/2007" | as.character(Entire.Data$Date) == "2/2/2007"

DataSet <- Entire.Data[Index, ]

png(filename = "plot3.png")

plot(DataSet$Sub_metering_1, xlab = "", ylab = "Energy submetering",  xaxt="n", type = "l")

lines(DataSet$Sub_metering_2, type="l", col="red")

lines(DataSet$Sub_metering_3, type="l", col="blue")

axis(side = 1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"), pos = -.07) 

legend( x = "topright", 
        legend = c("Sub_metering_1","Sub_metering_1", "Sub_metering_3"), 
        col = c("black","red","blue"), lwd = 1, merge = FALSE )

dev.off()
