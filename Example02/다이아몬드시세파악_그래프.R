# 다이아몬드 시세 파악하기_ 그래프
library(Stat2Data)
data(Diamonds)
ds <- Diamonds$PricePerCt

h <- hist(ds)
idx <- which.max(h$counts)
color <- rep('#a8dadc',9)
color[idx] <-  '#1d3557'

hist(ds, main='캐럿당 가격 분포', breaks=9, 
     xlab='캐럿당 가격($)', ylab='빈도수',
     las=1, col=color, xlim=c(0,20000), ylim=c(0,150)
     )

# par(mfrow = c(1,1), mar=c(5,4,4,2)+0.1)