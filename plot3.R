#Coursera Exploratory data analysis

# Download the data and take a look at them.
household_power_consumption <- read.csv("./household_power_consumption.txt", sep=";", na.strings="?")
View(household_power_consumption)
# Subsetting and view the final data. You can use the filter option to get the number of rows.
data<-household_power_consumption[66637:69516, ]
View(data)

#Transform date date and time variables.
time1<-strptime(paste(data$Date,data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#Create the third plot and save it in a correct file format.
png(file="plot3.png",width=480,height=480)
plot(time1, data$Sub_metering_1, pch=".", ylab = "Energy sub metering", xlab=" ")
lines(time1, data$Sub_metering_1)
lines(time1, data$Sub_metering_2, col="red")
lines(time1, data$Sub_metering_3, col="blue")
legend("topright",lwd=1,pch =c(NA,NA,NA) , col = c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()