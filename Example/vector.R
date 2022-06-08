score <- c(68, 95, 83, 76, 90, 80, 85, 91, 82, 70)
a <- mean(score) # 평균 출력
cat('평균은',a,'입니다.')

x <- c(1,2,3)
y <- c('a', 'b', 'c')
z <- c(TRUE, TRUE, FALSE, TRUE)
x
y
z

v1 <- 1:50
v1
v2 <- c(1,2,3, 10:20)
v2

v3 <- seq(1, 100, 2) # 시작, 종료, 간격
v3
v4 <- rep(5, times=3)
v4

v5 <- rep(c("선","문","대"), each=3)
v5

v6 <- rep(1:5, times=3)
v6
v7 <- rep(c(1,5,9), times=3)
v7
v8 <- rep(c('a','b','c'), each=3)
v8

absent <- c(8,2,0,4,1)
absent
names(absent) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
absent
names(absent)
absent[1]
absent[3]
absent[5]
absent[-c(3,5)]

v1 <- c(1,5,7,8,9)
v1 <- c(100, 200, 300)
v1

# 적금 만기 금액 계산하기
customer <- c("kim", "lee", "park", "choi", "seo")
deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000) # 원금
rate <- c(3.5, 3, 4, 5, 4.5) # 이율
period <- c(2,2,5,7,4) # 기간간
names(deposit) <- customer
names(rate) <- customer
names(period) <- customer
sum = deposit["kim"] * (1 + rate["kim"]/100)^period["kim"]
sum
