# set working directory
setwd("~/Desktop/R Programing /Explanatory Data Analysis/Assignment 1")
# read the .txt file in table format in R, turn "?" and "," into NA in table.
hshpc<-read.table("household_power_consumption.txt", header=TRUE, sep= ";", na.strings = c("?",""))
# reformat time and date vairbales
# use as.Date( ) to convert strings to dates 
hshpc$Date <- as.Date(hshpc$Date, format = "%d/%m/%Y")
hshpc$timetemp <- paste(hshpc$Date, hshpc$Time)
hshpc$Time <- strptime(hshpc$timetemp, format = "%Y-%m-%d %H:%M:%S")

# subset only "2007-2-1" and "2007-2-2"
data<-subset(hshpc, hshpc$Date>="2007-02-01" & hshpc$Date<="2007-02-02")
# Plot 1 
hist(data$Global_active_power,xlab="Global Active Power (kilowatts)", col=c("red"),main="Global Active Power")
## Copy my plot to a PNG file
dev.copy(png, file = "Plot1.png")  
dev.off()  
