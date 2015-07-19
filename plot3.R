a<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
aTRUE<-a[,1]=="1/2/2007" | a[,1]=="2/2/2007"
a1<-a[aTRUE,]
#head(a1)

#strptime(paste(as.character(a1[,1]),as.character(a1[,2])),"%d/%m/%Y %H:%M:%S")

plot(strptime(paste(as.character(a1[,1]),as.character(a1[,2])),"%d/%m/%Y %H:%M:%S")
,as.numeric(as.character(a1[,7])),ylab="Energy sub metering", xlab="", type="l")

points(strptime(paste(as.character(a1[,1]),as.character(a1[,2])),"%d/%m/%Y %H:%M:%S")
,as.numeric(as.character(a1[,8])),ylab="Energy sub metering", xlab="", type="l", col="red")

points(strptime(paste(as.character(a1[,1]),as.character(a1[,2])),"%d/%m/%Y %H:%M:%S")
,a1[,9],ylab="Energy sub metering", xlab="", type="l",col="blue")


legend("topright",paste("Sub_meeting_",1:3),ncol=1,col=c("black","red","blue"), pch="-----")
dev.copy(png,file="plot3.png")
dev.off()