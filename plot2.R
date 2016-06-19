#Coursera Exploratory data analysis

# Download the data and take a look at them.
household_power_consumption <- read.csv("./household_power_consumption.txt", sep=";", na.strings="?")
View(household_power_consumption)
# Subsetting and view the final data. You can use the filter option to get the number of rows.
data<-household_power_consumption[66637:69516, ]
View(data)

#Transform the required variables.
time1<-strptime(paste(data$Date,data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
View(time1)
GAP<-as.numeric(data$Global_active_power)
View(GAP)

##Create the second plot and save it in the correct file format.
png(file="plot2.png",width=480,height=480)
plot(time1,GAP, pch=".",ylab = "Global Active Power (kilowatts)", xlab = " ")
lines(time1, GAP)
dev.off()