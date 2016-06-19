#Coursera Exploratory data analysis

# Download the data and take a look at them.
household_power_consumption <- read.csv("./household_power_consumption.txt", sep=";", na.strings="?")
View(household_power_consumption)
# Subsetting and view the final data. You can use the filter option to get the number of rows.
data<-household_power_consumption[66637:69516, ]
View(data)

#Transform the tim and date variables and GAP.
time1<-strptime(paste(data$Date,data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP<-as.numeric(data$Global_active_power)


#Fourth plot
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))

plot(time1,GAP, pch=".",ylab = "Global Active Power (kilowatts)", xlab = " ")
lines(time1, GAP)

plot(time1,data$Voltage,pch=".", xlab = "datetime", ylab = "Voltage")
lines(time1,data$Voltage)

plot(time1, data$Sub_metering_1, pch=".", ylab = "Energy sub metering", xlab=" ")
lines(time1, data$Sub_metering_1)
lines(time1, data$Sub_metering_2, col="red")
lines(time1, data$Sub_metering_3, col="blue")
legend("topright",lwd=1,pch =c(NA,NA,NA) , col = c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

plot(time1,data$Global_reactive_power,pch=".", xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0,0.5))
lines(time1,data$Global_reactive_power)

dev.off()
