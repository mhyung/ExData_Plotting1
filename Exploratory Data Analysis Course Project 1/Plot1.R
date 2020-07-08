library("data.table")
P [, Global_active_power := lapply(.SD, as.numeric), .SDcols = c("Global_active_power")]
P [, Date := lapply(.SD, as.Date, "%d/%m/%Y"), .SDcols = c("Date")]
P <- P [(Date >= "2007-02-01") & (Date <= "2007-02-02")] 
hist(P[, Global_active_power], main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
png("plot1.png", width=480, height=480)
hist(P[, Global_active_power], main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()



