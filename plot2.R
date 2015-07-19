a<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
aTRUE<-a[,1]=="1/2/2007" | a[,1]=="2/2/2007"
a1<-a[aTRUE,]
#head(a1)

#strptime(paste(as.character(a1[,1]),as.character(a1[,2])),"%d/%m/%Y %H:%M:%S")
plot(strptime(paste(as.character(a1[,1]),as.character(a1[,2])),"%d/%m/%Y %H:%M:%S")
,as.numeric(as.character(a1[,3])),ylab="Global Active Power (killowatts)", xlab="", type="l")
dev.copy(png,file="plot2.png")
dev.off()