df <- read.table("household_power_consumption.txt",header = TRUE,sep = ";", na.strings = "?")

org <- df[(df$Date == "1/2/2007" | df$Date == "2/2/2007"),]

png(filename = "plot1.png", width = 480, height = 480)

hist(as.double(org$Global_active_power), xlab = "Global Active Power (kilowatts)", col ="red", main = "Global Active Power")

dev.off()