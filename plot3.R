library(lubridate)
library(chron)
#I started be downloading the datafile to my local WD

x <- names(read.table("household_power_consumption.txt", header = T, nrows=1,sep=";", na.strings="?"))
power <- read.table("household_power_consumption.txt", skip=66637, nrows=2880,sep=";", na.strings="?")
power <- setNames(power,x)
power$Time <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")

plot(power$Time,  power$Sub_metering_1, type = "l", ylab="Energy sub metering", xlab="" )
lines(x =power$Time, y= power$Sub_metering_2, col="red")
lines(x =power$Time, y= power$Sub_metering_3, col="blue")
legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"), text.width=50000, cex=0.75 , 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

dev.copy(png, file = "plot3.png")  ## Copy my plot to a PNG file 
dev.off() # Close the PNG device!

head(power)
tail(power)
str(power)
