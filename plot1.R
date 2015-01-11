x=read.table("household_power_consumption.txt",head=1,sep=";")
x.sub=x[x$Date=="1/2/2007"|x$Date=="2/2/2007",]
x.DateTime = strptime(paste(x.sub$Date, x.sub$Time), format="%d/%m/%Y %H:%M:%S")
x.sub2=data.frame(Datetime=x.DateTime,x.sub[,3:9])
png(filename="plot1.png",width = 480, height = 480, units = "px", bg="transparent")
hist(as.numeric(as.character(x.sub2$Global_active_power)),xlab="Global Active Power (killowatts)",main="Global Active Power",col="red")
dev.off()
