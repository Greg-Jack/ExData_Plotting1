power_consumption_data=read.table("household_power_consumption.txt",sep = ";",na.strings = "?",header = TRUE)
power_consumption_data$Time = paste(power_consumption_data$Date, power_consumption_data$Time)
power_consumption_data$Time = strptime(power_consumption_data$Time,format = "%d/%m/%Y %H:%M:%S")
power_consumption_data$Date = as.Date(power_consumption_data$Date,format = "%d/%m/%Y")
power_consumption_data = power_consumption_data[power_consumption_data$Date == "2007-02-01"|power_consumption_data$Date == "2007-02-02",]
png("plot2.png")
plot(power_consumption_data$Time,power_consumption_data$Global_active_power,type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()