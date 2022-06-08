job.type <- 'A'
if (job.type == 'B') {
  bonus <- 200 	# 직군이 B일 때 실행
} else {
  bonus <- 100 	# 직군이 B가 아닌 나머지 경우 실행
}
print(bonus)

# ifelse(비교 조건, 조건이 참일 때 선택할 값, 조건이 거짓일 때 선택할 값)
a <- 10
b <- 20

c <- ifelse(a>b, a, b)
print(c)

# if-else 반복
score <- 85

if (score > 90) {
  grade <- 'A'
} else if (score > 80) {
  grade <- 'B'
} else if (score > 70) {
  grade <- 'C'
} else if (score > 60) {
  grade <- 'D'
} else {
  grade <- 'F'
}

print(grade)

# 회원 등급 분류하고 혜택 부여하기
library(svDialogs)
purchase <- dlgInput('Enter the purchase amount')$res
purchase <- as.numeric(purchase )
type <- NULL
ratio <- NULL
if (purchase >= 300000) {
  type <- '플래티넘'
  ratio <- 0.07
} else if (purchase >=200000) {
  type <- '골드'
  ratio <- 0.05
} else if (purchase >= 100000) {
  type <- '실버'
  ratio <- 0.03
} else {
  type <- '프렌즈'
  ratio <- 0.01
}    
cat('고객님은', type, '회원으로 구매액의', ratio*100, '%가 적립됩니다.')
