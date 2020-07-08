library("data.table")
P [, Global_active_power := lapply(.SD, as.numeric), .SDcols = c("Global_active_power")]
P [, dateTime := as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]
P <- P [(dateTime >= "2007-02-01") & (dateTime < "2007-02-03")]
plot(x = P [, dateTime], y = P [, Global_active_power], type="l", xlab="", ylab="Global Active Power (kilowatts)") 
png("plot2.png", width=480, height=480)
plot(x = P [, dateTime], y = P [, Global_active_power], type="l", xlab="", ylab="Global Active Power (kilowatts)") 
dev.off()
