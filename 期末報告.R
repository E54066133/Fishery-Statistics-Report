#100-105年，宜蘭縣漁業從業人數分布圖
y1000 <- read.table('C:/Users/s0917/Documents/R-intro/期末報告/y1000.txt',header=TRUE,sep='\t')
y2000 <- read.table('C:/Users/s0917/Documents/R-intro/期末報告/y2000.txt',sep='\t',header=TRUE)
y6000 <- read.table('C:/Users/s0917/Documents/R-intro/期末報告/y6000.txt',sep='\t',header=TRUE)
(yl=cbind(y1000,y2000[-1],y6000[-1]))


#針對上述資料畫圖
year=c(100:105)
v1=as.vector(y1000$人數)
names(v1)=year
#y1000遠洋的人數長條圖
barplot(v1,xlab = '年分',ylab='人數', cex.axis= 0.8,ylim=c(0,200),las=1,
        main='100-105年宜蘭縣遠洋漁業從業人數分布圖',cex.main=1.5)
#y2000近海的人數長條圖
v2=as.vector(y2000$人數)
names(v2)=year
barplot(v2,xlab = '年分',ylab='人數', cex.axis= 0.8,ylim=c(0,8000),las=1,
        main='100-105年宜蘭縣近海漁業從業人數分布圖',cex.main=1.5,col.main=2)
#y6000內陸的人數長條圖
v6=as.vector(y6000$人數)
names(v6)=year
barplot(v6,xlab = '年分',ylab='人數', cex.axis= 0.8,ylim=c(0,2000),las=1,
        main='100-105年宜蘭縣內陸養殖從業人數分布圖',cex.main=1.5,col.main=3)

#100-105年宜蘭縣三大漁業從業人數分布圖
y=rbind(y1000,y2000,y6000)

#100,103,105年，宜蘭縣漁業從業人數，產業分布變化圖
(y100=y[c(1,7,13),])
per100 <- paste0(round(y100$人數/sum(y100$人數) * 100, 2), "%")
pie(y100$人數,labels =per100,col=c(2,3,4))
mtext('100年宜蘭縣漁業產業結構',1)
y3fish=c('遠洋漁業','近海漁業','內陸養殖')
legend(-1.9,1.2,legend = (y3fish), cex=1, 
       fill=c('red','green','blue'))
y103=y[c(4,10,16),]
per103 <- paste0(round(y103$人數/sum(y103$人數) * 100, 2), "%")
pie(y103$人數,labels =per103,col=c(2,3,4))
mtext('103年宜蘭縣漁業產業結構',1)
legend(-1.9,1.3,legend = (y3fish), cex=1, 
       fill=c('red','green','blue'))

y105=y[c(6,12,18),]
per105 <- paste0(round(y105$人數/sum(y105$人數) * 100, 2), "%")
pie(y105$人數,labels =per105,col=c(2,3,4))
mtext('105年宜蘭縣漁業產業結構',1)
legend(-2,1.2,legend = (y3fish), cex=1, 
       fill=c('red','green','blue'))
dev.off()
par(mfcol=c(1,3))
pie(y100$人數,labels =per100,col=c(2,3,4))
mtext('100年',1)
y3fish=c('遠洋漁業','近海漁業','內陸養殖')
pie(y103$人數,labels =per103,col=c(2,3,4))
mtext('103年',1)
pie(y105$人數,labels =per105,col=c(2,3,4))
mtext('105年',1)
legend(-1.9,3,legend = (y3fish), cex=1.2, 
       fill=c('red','green','blue'))

#(f2000=rbind(y2000,t2000))
#(t=rbind(t1000,t2000,t6000))
#(f1000=rbind(y1000,t1000))
#(f6000=rbind(y6000,t6000))
