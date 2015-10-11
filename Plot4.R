dev.copy(png, file = "Plot4.png")  
par(mfrow = c(2, 2))
with(data,{
  plot(data$Time, data$Global_active_power, type="l", col="black",ylab="Global Active Power (kilowatts)",xlab=NA)
  plot(data$Time, Voltage, type="l",xlab="datetime")
  
  plot(data$Time, data$Sub_metering_1,type="l", col=("black"),ylab = "Energy sub  metering",xlab=NA)
  lines(data$Time, data$Sub_metering_2,type="l", col=("red"),ylab = "Energy sub  metering",xlab=NA)
  lines(data$Time, data$Sub_metering_3,type="l", col=("blue"),ylab = "Energy sub  metering",xlab=NA)
  legend("topright", pch = "-", col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
  
  
  plot(data$Time, Global_reactive_power, type="l",xlab="datetime")
  
})

dev.off() 
