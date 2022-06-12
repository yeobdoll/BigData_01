# 히스토그램 작성
# 히스토그램은 관측값들이 어느 구간에 어느 빈도로 분포하는지를 쉽게 파악 가능
View(cars)
head(cars)
dist <- cars[,2] # 자동차 제동거리
dist
hist(dist, main='Histogram for 제동거리', xlab='제동거리',  ylab='빈도수',
     border='blue', col='green', # border: 막대 테두리 색
     las=2, # x축 글씨 방향(0~3)
     breaks=5) # 막대 개수 조절

result <- hist(dist, main='Histogram for 제동거리', breaks=5)
result
freq <- result$counts # 구간별 빈도수 저장
names(freq) <- result$breaks[-1] # 구간값을 이름으로 지정
freq # 구간별 빈도수 출력

# 다이아몬드 시세 파악하기.R [참고]

# 다중 그래프
par(mfrow=c(2,2), mar=c(3,3,4,2)) # 화면 분할 (2x2)

hist(iris$Sepal.Length,
     main='Sepal.Length',
     col='orange')

barplot(table(mtcars$cyl),
        main='mtcars', col=c('red', 'green', 'blue'))

barplot(table(mtcars$gear),
        main='mtcars', col=rainbow(3), horiz = TRUE)

pie(table(mtcars$cyl), main='mtcars',col=topo.colors(3), radius=2) # topo팔레트 사용 

par(mfrow=c(1,1), mar=c(5,4,4,2)+.1) # 화면 분할 취소

# 정책 지지도 그래프 그리기
#install.packages('carData')
# 1
library(carData)
ds <- Chile
colors <-  rainbow(20)

# 2
par(mfrow=c(2,3))

# 3
barplot(table(ds$region), main = '지역별 분포', col=colors[1:5])
barplot(table(ds$sex), main = '성별 분포', col=colors[6:7])
barplot(table(ds$education), main = '교육수준별 분포', col=colors[8:10])

# 4
hist(ds$age, breaks = 6, main = '연령', xlab = 'age', col=colors[1:6])
hist(ds$income, breaks = 4, main = '수입', xlab = 'income',
     col=colors[11:14])
hist(ds$statusquo, breaks = 9, main = '정책 지지도', xlab = 'support',
     col=colors[15:20]) 

# 5
par(mfrow = c(1,1))

# 종업원의 팁 정보 그래프 작성하기.R [참고]