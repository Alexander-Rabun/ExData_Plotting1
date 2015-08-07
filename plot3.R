Entire.Data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

library(dplyr)

Plot.Data <- Entire.Data %>% filter(as.character(Entire.Data$Date) == "1/2/2007" | 
                                    as.character(Entire.Data$Date) == "2/2/2007")

png(filename = "plot3.png")

plot(Plot.Data$Sub_metering_1, xlab = "", ylab = "Energy submetering",  
                     xaxt="n", type = "l")

lines(Plot.Data$Sub_metering_2, type="l", col="red")

lines(Plot.Data$Sub_metering_3, type="l", col="blue")

axis(side = 1, at = c(1, 1441, 2881), labels = c("Thu", "Fri", "Sat"))

legend( x = "topright", 
        legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
        col = c("black","red","blue"), lwd = 1, merge = FALSE )

dev.off()





png(filename = "plot2.png")

with(Plot.Data, plot(Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)",  xaxt="n", type = "l"))
axis(side = 1, at = c(1, 1441, 2881), labels = c("Thu", "Fri", "Sat"))

dev.off()


