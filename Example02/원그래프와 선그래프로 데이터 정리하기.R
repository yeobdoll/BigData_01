# 정성엽 2018315006

# 1
# install.packages("DAAG")
library(DAAG)
ds <- table(science$like)
ds
pie(ds, main='선호 점수별 비율',
    col=cm.colors(length(ds)),
    radius=1)

# 2
# explode: 원의 간격
library(plotrix)
ds <- table(science$State)
ds
rate <-  round(ds/sum(ds)*100, 1)
lab <- paste(names(ds),',', rate,'%')

pie3D(ds, main='주별 학생 비율', 
      labels=lab, labelcex=1.5,radius=1.5, 
      explode=0.1 ,col=topo.colors(2))

# 3
data("LakeHuron")
year = 1875:1972
year
str(LakeHuron)
help(LakeHuron)

ds <-  data.frame(year, LakeHuron)

plot(ds$year, # x data
     ds$LakeHuron,# y data
     main='수위 변화',
     type='o', 
     lty=1, lwd=1.5, 
     xlab='연도', ylab='수위', col='blue')
