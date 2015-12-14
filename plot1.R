

data=read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE) #Read data

data$Date=as.Date(data$Date,format="%Y-%m-%d")
data$Time=strptime(data$Time, format="%Y-%m-%d %H:%M:%S")
data$Global_active_power=as.numeric(data$Global_active_power)
data$Global_reactive_power=as.numeric(data$Global_reactive_power)
data$ Voltage =as.numeric(data$ Voltage )
data$Global_intensity =as.numeric(data$Global_intensity )
data$Sub_metering_1 =as.numeric(data$Sub_metering_1 )
data$Sub_metering_2 =as.numeric(data$Sub_metering_2 )
data$Sub_metering_3 =as.numeric(data$Sub_metering_3 )

data1=subset(data, Date >= "2007-02-01" & Date <= "2007-02-02") # Subset Data
hist(data1$Global_active_power,
      main="Global Active Power",
      col="red",  
      xlab="Global Active Power (kilowatts)")

png(filename="plot1.png", height=480, width=480, 
    bg="white")
dev.off()

                                  