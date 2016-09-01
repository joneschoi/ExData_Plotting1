df <- read.table("household_power_consumption.txt",header = TRUE,sep = ";", na.strings = "?")

org <- df[(df$Date == "1/2/2007" | df$Date == "2/2/2007"),]

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

DateType <- as.POSIXct(paste(as.Date(org$Date, format = "%d/%m/%Y"), org$Time))

plot(DateType, as.double(org$Global_active_power), xlab = "", ylab = "Global Active Power", type = "l")

plot(DateType, as.double(org$Voltage), xlab = "datetime", ylab = "", type = "l")

plot(DateType, as.double(org$Sub_metering_1), xlab = "", ylab = "Energy sub metering", type = "l")
lines(DateType, as.double(org$Sub_metering_2), col = "red")
lines(DateType, as.double(org$Sub_metering_3), col = "blue")
legend("topright", col = c("black","red","blue"), legend = c(paste0("Sub_metering_", 1:3)), lwd = 1)

plot(DateType, as.double(org$Global_reactive_power), xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()