a<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
aTRUE<-a[,1]=="1/2/2007" | a[,1]=="2/2/2007"
a1<-a[aTRUE,]
#head(a1)
#hist(as.numeric(as.character(a1[,3])),breaks=c(0,0.5,1,1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5),col=2, main="Global Active Power", xlab="Global active Power(killowatts)")
hist(as.numeric(as.character(a1[,3])),col=2, main="Global Active Power", xlab="Global active Power(killowatts)")
dev.copy(png,file="plot1.png")
dev.off()