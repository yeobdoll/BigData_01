# 종업원의 팁 계산하기
install.packages('reshape2')
library(reshape2)
tips

is.matrix(tips)
class(tips)
str(tips)

head(tips)
tail(tips)

table(tips$day)

dinner <- subset(tips, time == 'Dinner')
lunch <- subset(tips, time == 'Lunch')
table(dinner$day)
table(lunch$day)

colMeans(dinner[c('total_bill', 'tip', 'size')])
colMeans(lunch[c('total_bill', 'tip', 'size')])

# 결제 금액 평균적으로 몇 퍼센트의 팁을 주었는가?
tip.rate <- tips$tip / tips$total_bill
mean(tip.rate)
