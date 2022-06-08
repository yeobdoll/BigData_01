# 정성엽 2018315006
library('ggplot2')

# 영구 폐질환 사망자 분석하기

# 1
ds <- read.csv('C:/StudyR/Rdata/fdeaths.csv', row.names = 'year')
ds

# 2
my.col <- c('black', 'blue', 'red', 'green', 'purple', 'dark gray')
my.lty <- 1:6

plot(1:12,
     ds[1,],
     main="월별 사망자 추이",
     type='b',
     lty=my.lty[1],
     xlab= 'Month',
     ylab='사망자수',
     ylim=c(300, 1200),
     col=my.col[1])

for(i in 2:6){
  lines(1:12,
        ds[i,],
        type='b',
        lty=my.lty[i],
        col=my.col[i])
}

legend(x='topright',
       lty=my.lty,
       col=my.col,
       legend = 1974:1979)


df <- as.data.frame(t(ds))
str(df)
show(df)

my_d1 <- cbind(month=1:12,year=rep(1974,times=12),value=df$`1974`)
my_d2 <- cbind(month=1:12,year=rep(1975,times=12),value=df$`1975`)
my_d3 <- cbind(month=1:12,year=rep(1976,times=12),value=df$`1976`)
my_d4 <- cbind(month=1:12,year=rep(1977,times=12),value=df$`1977`)
my_d5 <- cbind(month=1:12,year=rep(1978,times=12),value=df$`1978`)
my_d6 <- cbind(month=1:12,year=rep(1979,times=12),value=df$`1979`)
data <- rbind(my_d1, my_d2, my_d3, my_d4, my_d5, my_d6)
D <- as.data.frame(data)
show(D)

ggplot(data=D, aes(x=month, y=value, group=year, color=year)) + 
  geom_line()+
  geom_point()+
  geom_text(aes(label=value), vjust=-0.8, size=5)+
  scale_x_continuous(breaks=seq(1,12,1), labels=paste(1:12, '월',''))
