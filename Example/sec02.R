# 내장 함수
print("HelloWorld")
a <-sum(1:100)
a

# 오늘 날짜 출력
Sys.Date()

# 사용자 정의 함수
multi_three_return <-  function(x, y, z) {
  res <- x * y * z
  return(res)
}
multi_three_return(3, 5, 6)

install.packages("reshape2")

library(reshape2)

20 %/% 7 # 몫
20 %% 7 # 나머지

# 제곱
6 ** 2
6^2

x <- 1:3
x
y <- 3:1
y
(x > 0) & (y > 1)
(x > 0) | (y > 1)

a <-10
if(a%%2==0) {
  print("짝수입니다")
} else {
  print("홀수입니다")
}

b <-80
if(b >= 90) {
  print("A 학점입니다")
} else if (b >= 80) {
  print("B 학점입니다")
} else {
  print("C 학점입니다")
}

for(i in 1:9){
  a <-  2 * i
  print(a)
}

for(i in 2:9) {
  for(j in 1:9) {
    print(paste(i, "*", j, "=", i*j)) # paste() 함수는 나열된 값을 이어서 출력하는 함수
  }
}

x <-  matrix(1:4, 2, 2)
x

apply(x, 1,sum)
apply(x, 2, min)
apply(x, 1, max)

# 내장 데이터 세트
str(iris)
View(iris)

apply(iris[, 1:4], 2, sum)
apply(iris[, 1:4], 2, mean)
apply(iris[, 1:4], 2, min)
apply(iris[, 1:4], 2, max) 
apply(iris[, 1:4], 2, median) # 중간값

lapply(iris[, 1:4], sum)
sapply(iris[, 1:4], mean)