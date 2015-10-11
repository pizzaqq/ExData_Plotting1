plot(data$Time, data$Sub_metering_1,type="l", col=("black"),ylab = "Energy sub  metering",xlab=NA)
lines(data$Time, data$Sub_metering_2,type="l", col=("red"),ylab = "Energy sub  metering",xlab=NA)
lines(data$Time, data$Sub_metering_3,type="l", col=("blue"),ylab = "Energy sub  metering",xlab=NA)
legend("topright", pch = "-", col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))


dev.copy(png, file = "Plot3.png")  
dev.off() 

