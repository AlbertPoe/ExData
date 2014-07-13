library(lubridate)
library(chron)
#I started be downloading the datafile to my local WD

x <- names(read.table("household_power_consumption.txt", header = T, nrows=1,sep=";", na.strings="?"))
power <- read.table("household_power_consumption.txt", skip=66637, nrows=2880,sep=";", na.strings="?")
power <- setNames(power,x)
power$Time <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")

hist(power$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")  ## Copy my plot to a PNG file 
dev.off()  # Close the PNG device!

head(power)
tail(power)
str(power)
