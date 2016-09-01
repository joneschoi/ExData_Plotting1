df <- read.table("household_power_consumption.txt",header = TRUE,sep = ";", na.strings = "?")

org <- df[(df$Date == "1/2/2007" | df$Date == "2/2/2007"),]

png(filename = "plot2.png", width = 480, height = 480)

plot(as.POSIXct(paste(as.Date(org$Date, format = "%d/%m/%Y"), org$Time)),as.double(org$Global_active_power), xlab = "", ylab = "Global Active Power (kilowatt)", type = "l")

dev.off()