# 블럭 잡기 shift + 방향키
# 명령문 실행: Ctrl + enter
# 소스창에 있는 모든 명령어 실행: Ctrl + Alt + R
# 바로 직전 명령문 실행행: Ctrl + Alt + P
# Alt + - 누르면 '<-'생성
3 + (4*5); A <- 51:80; print(A)

2+3; (3+6)*8; 2^3
4%%3
8/3
8%%3
log(10) + 5 
sqrt(25) # 제곱근
max(5,3,2) 

# 1. 5시간 48분 32초를 모두 초로 환산해봅시다
second <- 5 * 60^2 + 48 * 60 + 32
cat("5시간 48분 32초는", second,"초 입니다")
# 2.
10000 - (5*1000 + 500*3)

# 3.
max(63,95,84,36,48)*500

print("sunmoon")
cat("sunmoon", "sunmoon")

.libPaths()
.libPaths("C:/Program Files/R/R-4.1.2/library")

install.packages('ggplot2')

library(ggplot2)
ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) + geom_point()

install.packages('cowsay')
library(cowsay)
say('Hello world!', by='cat')
say('좋은 아침', by = 'snowman')

# ((m*4)+9)* 25 + m = 931
# 태어난 일
A <- (931-225)%%100
# 태어난 달
B <- ((932-225) - ((931-225)%%100))/100
cat("소윤이 생일은", B, "월", A, "일 입니다")
