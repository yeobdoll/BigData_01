d <- c(3, 5, 7, 9 , 11, 13)
2 * d
3 * d - 5

d1 <- c(3, 5, 7, 9,  11, 13)
d2 <- c(5, 3, 4, 5, 6, 7)

x <-  d1 + d2

d <-  1:9
d >= 5
d[d>5]
sum(d>5)
sum(d[d>5])
d==5

condi <-  d > 5 & d < 8
d[condi]

# R 카페의 매출액 분석하기 1
espresso <-  c(4, 5, 3, 6, 5, 4, 7)
americano <- c(63, 68, 64, 68, 72, 89, 94)
cafe_latte <- c(61, 70, 59, 71, 71, 92, 88)

# 각 요일별 판매 금액
sale.espresso <-  2 * espresso
sale.americano <-  2.5 * americano 
sale.cafe_latte <-  3 * cafe_latte

# 요일별 매출액
day <-  sale.espresso + sale.americano + sale.cafe_latte
names(day) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
day
# 총 매출액
sum(day)

# 평균 매출액
mean(day)
sale_mean <- mean(day)

# 평균 매출 이상인 요일
names(day[day >= sale_mean])

