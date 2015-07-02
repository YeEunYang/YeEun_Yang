ict=read.csv("C:\\Users\\yeeun\\Desktop\\ICT_data.csv",header=T)
names(ict)
plot(ict$Value~ict$Year)
nat=c(levels(ict$Country))

af=ict[ict$Country==nat[1],]
ch=ict[ict$Country==nat[2],]
ge=ict[ict$Country==nat[3],]
ja=ict[ict$Country==nat[4],]
ko=ict[ict$Country==nat[5],]
us=ict[ict$Country==nat[6],]
?plot



plot(Value~Year,data=af,col='red',main="ICT Graph",ylim = c(0,367786000) )
par(new=T)
plot(Value~Year,data=ch,col='blue',ylim = c(0,367786000))
par(new=T)
plot(Value~Year,data=ge,col='green',ylim = c(0,367786000))
par(new=T)
plot(Value~Year,data=ja,col='black',ylim = c(0,367786000))
par(new=T)
plot(Value~Year,data=ko,col='purple',ylim = c(0,367786000))
par(new=T)
plot(Value~Year,data=us,col='orange',ylim = c(0,367786000))

k=ict[ict$Year==2013,]
slices <- c(k$Value)
lbls <- c(levels(k$Country))
pie(slices, labels = lbls, main="Pie Chart of Countries")
c(k$Country)
