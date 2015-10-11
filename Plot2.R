with(data, plot(data$Time, data$Global_active_power, type="l", col="black",ylab="Global Active Power (kilowatts)",xlab=NA))
dev.copy(png, file = "Plot2.png")  
dev.off() 
