# 데이터 입력
favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
ds <- table(favorite)
ds
pie(ds, main='선호 계절', radius=1)

# 코드 9-1에 이어서 실행 
# install.packages('plotrix') 
library(plotrix) # 3차원 원 패키지이다.

# 2022-05-17 수업
month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(5,10,4,6,12,13,8,6,6,4,11,10)
late3 = c(3,2,4,6,12,12,8,6,6,4,10,2)


plot(month,
     late,
     main='지각생 통계',
     type='o',
     lty=1,
     lwd=1, # 선의 굵기기
     xlab='Month',
     ylab='Late cnt')
lines(month, late2, type='o', col='blue')
lines(month, late3, type='o', col='red')

# 원 그래프
numbers <- c('1', '2', '3', '3', '2',
              '2', '3', '4', '1', '1')
nb <- table(numbers)
nb
col = c('red', 'blue', 'green', 'brown')
# pie3D으로 하게 되면 반드시 라벨을 붙여줘라
# labelcex 폰트 값을 설정함
# explode 간격 설정
pie3D(nb, main='선호 계절', radius=1, col=col, labels=names(nb), 
      labelcex =1.0, explode=0.1)

# box plot
# data <-  cars[,2]
# data
# boxplot(data, main = '자동차 제동거리')
# boxplot.stats(data)

iris
# 분석하고 싶은 대상 ~ 그룹 지어지는 기준 (데이터와 그룹 정보)
boxplot(iris$Sepal.Length~iris$Species, col=c('red', 'orange', 'green'),
        main='품종별 길이', xlab='품종', ylab='길이')
