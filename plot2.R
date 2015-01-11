x=read.table("household_power_consumption.txt",head=1,sep=";")
x.sub=x[x$Date=="1/2/2007"|x$Date=="2/2/2007",]
x.DateTime = strptime(paste(x.sub$Date, x.sub$Time), format="%d/%m/%Y %H:%M:%S")
x.sub2=data.frame(Datetime=x.DateTime,x.sub[,3:9])
png(filename="plot2.png",width = 480, height = 480, units = "px", bg="transparent")
plot(x.sub2$Datetime,as.numeric(as.character(x.sub2$Global_active_power)),pch=NA,xlab=NA,ylab="Global Active Power (killowatts)")
lines(x.sub2$Datetime,as.numeric(as.character(x.sub2$Global_active_power)))
dev.off()