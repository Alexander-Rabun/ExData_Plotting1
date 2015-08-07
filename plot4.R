Entire.Data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

library(dplyr)

Plot.Data <- Entire.Data %>% filter(as.character(Entire.Data$Date) == "1/2/2007" | 
                                    as.character(Entire.Data$Date) == "2/2/2007")

png(filename = "plot4.png")

par(mfrow = c(2, 2))

plot(Plot.Data$Global_active_power, xlab = "", ylab = "Global Active Power",
     xaxt="n", type = "l")

axis(side = 1, at = c(1, 1441, 2881), labels = c("Thu", "Fri", "Sat")) 

plot(Plot.Data$Voltage, xlab = "datetime", ylab = "Voltage",  xaxt="n", type = "l")

axis(side = 1, at = c(1, 1441, 2881), labels = c("Thu", "Fri", "Sat"), pos = 232.5) 

plot(Plot.Data$Sub_metering_1, xlab = "", ylab = "Energy submetering",  xaxt="n",
     type = "l")

lines(Plot.Data$Sub_metering_2, type="l", col="red")

lines(Plot.Data$Sub_metering_3, type="l", col="blue")

axis(side = 1, at = c(1, 1441, 2881), labels = c("Thu", "Fri", "Sat")) 

legend(x = "topright", legend = c("Sub_metering_1","Sub_metering_1", "Sub_metering_3"), 
       col = c("black","red","blue"), lwd = 1, bty = "n", merge = FALSE )

plot(Plot.Data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power",  xaxt="n", type = "l")

axis(side = 1, at = c(1, 1441, 2881), labels = c("Thu", "Fri", "Sat")) 

dev.off()

par(mfrow = c(1, 1))
