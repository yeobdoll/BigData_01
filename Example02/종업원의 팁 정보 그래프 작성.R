library(reshape2)
str(tips)
data <-  tips

# 성별, 요일, 식사 시간대, 일행의 규모에 따라 받은 팁의 빈도를 그래프로 작성
par(mfrow=c(2,2), mar=c(3,3,4,2))
barplot(table(tips$sex), main='성별', col=c('#a8dadc', '#1d3557'))
barplot(table(tips$day), main='요일별', col=c('#a8dadc', '#1d3557','#1d3557','#a8dadc'))
barplot(table(tips$time), main='시간별', col=c('#1d3557','#a8dadc'))
barplot(table(tips$size), main='인원수별', col=c('#a8dadc', '#1d3557', '#a8dadc','#a8dadc','#a8dadc','#a8dadc'))
par(mfrow=c(1,1),mar=c(5,4,4,2) + .1)

# 1인당 주문금액과 팁의 관련성
data$perP <- data$total_bill/data$size # 1인당 금액 (열 추가)
par(mfrow=c(1,3))
hist(data$perP, main = '1인당 주문금액', xlab='$(달러)',breaks=5)
hist(data[data$time == 'Lunch','perP'], main = '1인당 주문금액(런치)', xlab='$(달러)',breaks=5)
hist(data[data$time == 'Dinner','perP'], main = '1인당 주문금액(디너)', xlab='$(달러)',breaks=5)

# (4)
tips.new <- tips
tips.new$perHead <-  tips.new$total_bill / tips.new$size

# 색깔 넣기
color.5 <- rep('#c158dc', 5)
color.5[2] <- '#38006b'

# (5) 
par(mfrow = c(1,3))
hist(tips.new$perHead, main = '1인당 주문 금액', breaks = 5, xlab = '단위:달러', col = color.5)
hist(tips.new[tips.new$time == 'Lunch', 'perHead'], main ='1인당 주문 금액(런치)', breaks = 4, density=40 , xlab='단위:달러', col = color.5)
hist(tips.new[tips.new$time == 'Dinner', 'perHead'], main ='1인당 주문 금액(디너)', breaks = 4, xlab='단위:달러', col = color.5)
par(mfrow = c(1,1))

# 주문 금액 대비 받은 팁의 비율이 차이가 나는지 살펴보아라.
tips.new$percent <-  tips.new$tip / tips.new$total_bill * 100
par(mfrow = c(1, 2))
res.lunch <-hist(tips.new[tips.new$time == 'Lunch', 'percent'], main = '주문 금액 대비 팁의 비율(런치)', xlab = 'percent(%)', breaks=5)
res.dinner <-hist(tips.new[tips.new$time == 'Dinner', 'percent'], main = '주문 금액 대비 팁의 비율(디너)', xlab = 'percent(%)', breaks=10)
par(mfrow = c(1,1))

# ctrl + shift + c: 전체 주석
# par(mfrow=c(1,1))
# res.lunch$breaks
# res.lunch
# res.dinner$breaks
# res.dinner

# (8)
# res.lunch
# res.dinner

res <- rbind(lunch = c(0, res.lunch$counts), dinner=res.dinner$counts[1:6])
colnames(res) <- res.dinner$breaks[2:7]

# (9)
barplot(res, main = '식사 시간에 따른 팁 비율 분포', col=c('#1d3557', '#a8dadc'), legend.text = c('Lunch', 'Dinner'))