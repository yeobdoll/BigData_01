# 정성엽 2018315006

# install.packages('Stat2Data')
library(Stat2Data)
data(ChildSpeaks)
str(ChildSpeaks)

# 말문이 트인 시기
idx <- which(ChildSpeaks$Age < 9)
ChildSpeaks[idx,'m1'] <-  5
idx <- which(ChildSpeaks$Age >= 9 & ChildSpeaks$Age < 14)
ChildSpeaks[idx,'m1'] <-  4
idx <- which(ChildSpeaks$Age >= 14 & ChildSpeaks$Age < 20)
ChildSpeaks[idx,'m1'] <-  3
idx <- which(ChildSpeaks$Age >= 20 & ChildSpeaks$Age < 26)
ChildSpeaks[idx,'m1'] <-  2
idx <- which(ChildSpeaks$Age >= 26)
ChildSpeaks[idx,'m1'] <-  1 

# 언어 이해력
idx <- which(ChildSpeaks$Gesell < 70)
ChildSpeaks[idx,'m2'] <- 1
idx <- which(ChildSpeaks$Gesell >= 70 & ChildSpeaks$Gesell < 90 )
ChildSpeaks[idx,'m2'] <- 2
idx <- which(ChildSpeaks$Gesell >= 90 & ChildSpeaks$Gesell < 110 )
ChildSpeaks[idx,'m2'] <- 3
idx <- which(ChildSpeaks$Gesell >= 110 & ChildSpeaks$Gesell < 130 )
ChildSpeaks[idx,'m2'] <- 4
idx <- which(ChildSpeaks$Gesell >= 130 )
ChildSpeaks[idx,'m2'] <- 5

ChildSpeaks$t <-ChildSpeaks$m1 + ChildSpeaks$m2

# 총점
idx <- which(ChildSpeaks$t < 3)
ChildSpeaks[idx, 'result'] <- '매우느림'
idx <- which(ChildSpeaks$t >= 3 & ChildSpeaks$t < 5 )
ChildSpeaks[idx, 'result'] <- '느림'
idx <- which(ChildSpeaks$t >= 5 & ChildSpeaks$t < 7 )
ChildSpeaks[idx, 'result'] <- '보통'
idx <- which(ChildSpeaks$t >= 7 & ChildSpeaks$t < 9 )
ChildSpeaks[idx, 'result'] <- '빠름'
idx <- which(ChildSpeaks$t >= 9 )
ChildSpeaks[idx, 'result'] <- '매우빠름'

par(mfrow = c(1,3))
a = hist(ChildSpeaks$Age, main = '말문이 트이는 시기', xlab='개월수', ylab='인원수',
         density=30, angle=45, col=rainbow(10),xlim=c(0,50))

max(a$counts)

breaks = seq(0,50,by=5)
xlim = range(0,50,by=5)

# 축 설정
x_axis_tick = seq(0, 50 , by=5)
axis(side=1, at=x_axis_tick)
y_axis_tick = seq(0, max(a$counts), by=2)
axis(side=2, at=y_axis_tick)

temp <- table(ChildSpeaks$m2, ChildSpeaks$Age)
temp

barplot(temp, main='언어 이해의 점수', beside=T, ylim=c(0,4), col=rainbow(4))

temp1 <-  table(ChildSpeaks$result, ChildSpeaks$Age)
temp1

barplot(temp1, main='언어발달진단', ylim=c(0,10), col=rainbow(4))

par(mfrow=c(1,1), mar=c(5,4,4,2)+.1) # 그래프창 초기화