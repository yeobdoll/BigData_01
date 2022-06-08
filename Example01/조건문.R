a <-  10
b <-  20
if (a > 5 & b > 20) {
  cat('a+b=', a+b)
}
cat('a*b=', a*b)

a <- 70
if(a>=90) {
  g <- 'A'
} else if(a >=80) {
  g <- 'B'
} else if(a >=70) {
  g <- 'C'
}
cat('당신의 등급은 (', g ,') 입니다.')

# ifelse(비교 조건, 조건이 참일 때 선택할 값, 조건이 거짓일 때 선택할 값)
a <- 10
b <- 20
c <-  ifelse(a>b, a , b)
print(c)











