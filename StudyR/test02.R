# 변수
total <- 10
total # 방법 1
print(total) # 방법 2
cat('합계 :', total) # 방법 3

# 변수의 특징
a <- 10
b <- 20
c <-  a + b
c

c <- 20
c

# 논리형
5 > 3
2 > 7
TRUE + TRUE # 산술연산에서 TRUE는 1임
a <-  T; a
b <-  F; b
a + b

# NULL: '정의되지 않음'을 의미하는 특수한 값, 초깃값을 어떤 것으로 정해야 할지 애매할 때 사용
addr <- NULL
print(addr)

# NA: 'Not Applicable"의 약자로 결측값 or 누락된 값을 나타낼 때 사용
a <-  NA; a
b <- 'NA'; b

# NaN, Inf, -Inf: 각각 수학적으로 정의가 불가능한 값
1/0; -2/0; sqrt(-5)

# 소금물의 농도 구하기
salt <- 50
water <- 100
result <- salt / (salt + water) * 100
cat("소금=", salt, ", 물=", water, ": 농도=", result, "%")

# 벡터: R에서 제공하는 여러 개의 값을 한꺼번에 저장하는 기능으로, 일반적인 프로그래밍 용어로는 1차원 배열(array)이라고도 함
x <- c(1,2,3); x
y <- c('a','b','c'); y
z <- c(T, T, F, T); z
# 벡터 생성 시 주의할 점은 하나의 벡터에는 동일한 자료형(data type)의 값이 저장되어야 함
v1 <- 50:90; v1
v2 <- c(1,2,5, 50:90); v2
v3 <- seq(1, 101, 3); v3 # seq(시작, 종료, 간격)
v4 <- rep(1, times=5); v4 # 1을 5번 반복
v5 <- rep(1:5, times=3); v5
v6 <- rep(c(1,5,9), times=3); v6
v7 <- rep(c('a','b','c'), each=3); v7 # each하면 각각 반복시킴


# 벡터의 값에 이름 붙이기 & 인덱스
absent <-  c(8,2,0,4,1)
names(absent) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
absent
absent[1]
absent[1:3]
absent[c(1,3,5)] # 1, 3, 5번째 자료 출력
absent[seq(1,5,2)] # 홀수 번째 자료 출력
absent[-1] # 1번째 인덱스 값을 제외하고 출력
absent[-c(3:5)]

absent[1] <- 5; absent # 인덱스 값 변경
absent[c(1,5)] <-  c(10, 20); absent # 1,5번째 값을 각각 10, 20으로 변경

# 적금 만기 금액 계산하기
customer <- c('kim', 'lee', 'park', 'choi', 'seo')
deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000)
rate <- c(3.5, 3, 4, 5, 4.5)
period <- c(2, 2, 5, 7, 4)

names(deposit) <- customer
names(rate) <- customer
names(period) <- customer

# who <- 'kim'

sum <- deposit[customer] * ( 1 + rate[who] / 100)^ period[who]
sum

# sort() 함수
d <- c(1,7,4,2,3)
sort(d)
sort(d, decreasing = TRUE) # 벡터 d의 값들을 내림차순으로 정렬하여 출력
sort(d, TRUE) # 매개변수값을 함수에 지정된 순서대로 입력하는 경우, 매개변수명을 생략 가능

# paste() 함수로 문자열 만들기
str <-  paste('good', 'morning', sep=' / '); 

a <- '나의 나이는'
b <- 20
c <- '입니다'
paste(a, b, c, sep=' ')

a <- 1:12
b <- '월'
c <- paste(a,b, sep='')
c

# 월별 매출액 분석하기
sales <- c(750,740,760,680,700,710,850,890,700,720,690,730)
names(sales) <- paste(1:12, '월', sep="")
sales
# sort()를 이용해 매출액이 가장 많은 달을 알아보자
max.month <- sort(sales, T)
max.month[1]
# 상반기 매출액의 합계 알아보기
sum(sales[1:6])





