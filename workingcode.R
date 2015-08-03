install.packages("lubridate")
library(lubridate)
## Entire.Data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
## Index <- as.character(Entire.Data$Date) == "1/2/2007" | as.character(Entire.Data$Date) == "2/2/2007"
## DataSet <- Entire.Data[Index, ]
## save(DataSet, file = "Project1.Data")
## Load Plot.data.Rdata; file name "DataSet"
load("Project1.Data")
tmpDate <- dmy(as.character(DataSet$Date))
tmpTime <- hms(as.character(DataSet$Time), tz = "American/Chicago")
Plot.Time <- paste(tmpDate, tmpTime)
Plot.Time <- Plot.Time[1:2880]
DataToPlot <- cbind(Plot.Time, DataSet)

plot(DataToPlot$Global_active_power, ylab = "Global Active Power (kilowatts)")


plot(DataToPlot$Global_active_power, wday(Plot.Time, label = T), ylab = "Global Active Power (kilowatts)")

dow <- wday(Plot.Time, label = T)
dow[1]; dow[1440]; dow[1441]; dow[2880]

plot(DataToPlot$Global_active_power, xaxt="n", xlab = "", ylab = "Global active power (kilowatts)")
axis(1, xaxp=as.character(wday(Plot.Time, label = T)))

str(as.character(wday(Plot.Time, label = T)))
