Entire.Data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)

library(dplyr)

Plot.Data <- Entire.Data %>% filter(as.character(Entire.Data$Date) == "1/2/2007" | 
                                    as.character(Entire.Data$Date) == "2/2/2007")

png(filename = "plot2.png")

with(Plot.Data, plot(Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)",  xaxt="n", type = "l"))
axis(side = 1, at = c(1, 1441, 2881), labels = c("Thu", "Fri", "Sat"))

dev.off()


