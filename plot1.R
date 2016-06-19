#Coursera Exploratory data analysis

# Download the data and take a look at them.
household_power_consumption <- read.csv("./household_power_consumption.txt", sep=";", na.strings="?")
View(household_power_consumption)
# Subsetting and view the final data. You can use the filter option to get the number of rows.
data<-household_power_consumption[66637:69516, ]
View(data)

#First plot
png(file="plot1.png",width=480,height=480)
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", col = "red", main = "Global Active Power", ylim =c(0,1200))
dev.off()