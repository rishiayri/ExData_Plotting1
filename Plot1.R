dataframe <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subdataframe <- dataframe[dataframe$Date %in% c("1/2/2007", "2/2/2007") ,]
globalactivepower <- as.numeric(subdataframe$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globalactivepower, col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()
