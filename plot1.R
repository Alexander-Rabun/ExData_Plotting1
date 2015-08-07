Entire.Data <- read.table("household_power_consumption.txt", sep = ";", 
                          na.strings = "?", header = TRUE)

library(dplyr)

Plot.Data <- Entire.Data %>% filter(as.character(Entire.Data$Date) == "1/2/2007" | 
                                    as.character(Entire.Data$Date) == "2/2/2007")
png(filename = "plot1.png")

hist(Plot.Data$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red") 

dev.off()