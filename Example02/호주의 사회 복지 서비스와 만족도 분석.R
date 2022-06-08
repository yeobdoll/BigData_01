# 정성엽 2018315006

# 1
library(DAAG)
str(socsupport)
help(socsupport)
data("socsupport")

# 2
library(plotrix)
ds <- table(socsupport$age)
rate <- round(ds/sum(ds)*100, 1)
rate <- paste(names(ds), ',', rate, '%')
pie3D(ds, main="연령 분포",
      labels=rate,
      labelcex=0.7,
      explode=0.1,
      radius=1,
      col=cm.colors(length(ds)))

# 3
boxplot(socsupport$emotional~socsupport$country, main="정서적 지원 제도 비교")

# 4
boxplot(socsupport$emotional~socsupport$gender, main="정서적 지원 제도 비교")

# 5
boxplot(socsupport$emotionalsat~socsupport$age,
        main='연령대별 정서적 지원제도 만족도 비교',
        col=rainbow(5))

# 6
group <- as.numeric(socsupport$gender)
color <- c('blue', 'red') # 여: 파랑, 남: 빨강
plot(socsupport[, c("emotionalsat", "tangiblesat", "age")], 
     pch=group,
     col=color[group])
