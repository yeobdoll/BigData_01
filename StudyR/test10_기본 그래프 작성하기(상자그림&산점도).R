# 상자 그림
# 데이터의 분포 등 다양한 정보를 전달하여 단일변수 수치형 자료를 파악하는 데 자주 사용

dist <- cars[,2]
boxplot(dist, main='자동차 제동거리')
boxplot.stats(dist)
# 사분위수, 관측값들의 개수, 중앙값 관련 신뢰구간, 특이값 순으로 나타내줌

# 그룹이 있는 데이터의 상자그림
View(iris)
# Petal.Length~Species 의미: 꽃잎의 길이(Petal.Length)를 품종(Species)별로 나누어서 그리시오
boxplot(Petal.Length~Species, # 데이터와 그룹 정보
        data=iris, # 데이터가 저장된 자료구조
        main='품종별 꽃잎의 길이',
        col=c('green', 'yellow', 'blue'))

# 자동차 데이터 분석하기.R [참고]


# 산점도
# 다중변수 데이터에서 두 변수에 포함된 값들을 2차원 그래프상에 점으로 표현하여 분포를 관찰할 수 있도록 하는 도구

wt <- mtcars$wt # 중량
mpg <- mtcars$mpg # 연비
plot(wt, mpg, # 2개의 변수 (x축, y축)
     main='중량-연비 그래프',
     xlab='중량',
     ylab='연비(MPG)',
     col = 'red', 
     pch=19 # point의 종류
     )
# 탐색: 중량이 증가할수록 연비는 감소하는 경향을 확인할 수 있다.

# 여러 변수들 간의 산점도
View(mtcars)
vars <- c('mpg','disp','drat','wt') # 대상 변수
target <- mtcars[,vars] # 대상 데이터 생성 (mtcars 데이터셋의 변수 중 4개만 선택)
head(target)
plot(target, # 대상 데이터
     main='Multi plots') 

# 그룹 정보가 있는 2개 변수의 산점도
iris.2 <- iris[,3:4]
levels(iris$Species)
group <-  as.numeric(iris$Species)
group
color <-  c('red', 'green', 'blue')
plot(iris.2, main='Iris plot',  
     pch=c(group),
     col=color[group])

legend(x='bottomright', # 범례의 위치
       legend=levels(iris$Species), # 범례의 내용
       col=c('red','green','blue'), # 색 지정
       pch=c(1:3)) # 점의 모양

# 자동차 선팅 분석하기.R [참고]
# 호주의 사회 복지 서비스와 만족도 분석하기.R [참고]