# 데이터 분석의 절차
# 문제 정의 및 계획 -> 데이터 수집 -> 데이터 정제 및 전처리 -> 데이터 탐색 -> 데이터 분석 -> 결과 보고


# 단일변수 데이터 분석
# install.packages('carData')
library(carData)

# 1. 데이터 준비 
room.class <- TitanicSurvival$passengerClass # 선실정보
room.class

# 2. 도수분포 계산
tbl <- table(room.class)
tbl
sum(tbl) # 전체 탑승객수

# 3. 막대그래프 작성
barplot(tbl, main='선실별 탑승객', xlab='선실등급', ylab='탑승객수',
        col=c('blue','green', 'yellow'))

# 4. 원그래프 작성
tbl/sum(tbl) # 선실별 탑승객 비율
par(mar=c(1,1,4,1))
pie(tbl, main='선실별 탑승객', col=c('blue','green','yellow'))
par(mar=c(5.1,4.1,4.1,2.1))




# 단일변수 수치형 데이터 분석 -> 미국의 주별 고등학교 졸업률 분석
# 1. 데이터 분석
grad <- state.x77[,'HS Grad'] # 주별 고등학교 졸업률
grad

# 2. 사분위수
summary(grad) # 최소값, 중앙값, 평균값, 3분위값, 최대값을 빠르게 계산하여 보여줌
var(grad) # 분산
sd(grad) # 표준 편차
# 분산과 표준편차는 값이 흩어져 있는 정도, 값이 클수록 퍼져 있는 정도가 넓은 거임.

# 3. 히스토그램
hist(grad, main = '주별 졸업률', xlab='졸업률', ylab='주의 개수', col='orange')
# 졸업률 50~60%사이에 가장 많은 주가 몰려 있다.

# 4. 상자그림
boxplot(grad, main='주별 졸업률', col='orange')
# 대략 48%~58%에 전체의 절반 25개의 주의 졸업률이 위치
# 상자의 상하 방향의 폭이 클수록 분산과 표준편차가 큰거임
# 상자 위와 아래의 점선 길이가 비슷 = 데이터의 범위에서 가운데를 중심으로 값들이 어느 한쪽으로 치우치지 않고 균형있게 분포함.

# 5. 졸업률이 가장 낮은 주
# which() : 조건에 해당하는 인덱스를 출력함
idx <-which(grad == min(grad))
grad[idx]

# 6. 졸업률이 가장 높은 주
idx <- which(grad == max(grad))
grad[idx]

# 7. 졸업률이 평균 이하인 주
idx <- which(grad < mean(grad))
grad[idx]



# 단일변수 수치형 데이터 분석 -> 영국 폐질환 사망자 분석
# 1. 데이터 준비
ds <- read.csv('C:/Users/User/Desktop/Programming/Rstudy/dataSet/fdeaths.csv', row.names='year')
ds

# 2. 선그래프 작성 
my.col <- c('black', 'blue','red', 'green','purple','dark gray')
my.lty <- 1:6

plot(1:12,# x data
     ds[1,], # y data(1974년 데이터)
     main='월별 사망자 추이',
     type='b', 
     lty=my.lty[1], # 선의 종류
     xlab='Month', 
     ylab='사망자수',
     ylim=c(300,1200), # y축 값의 범위
     col=my.col[1])
for(i in 2:6) {
  lines(1:12, ds[i,],
        type='b', lty=my.lty[i],
        col=my.col[i])
}
legend(x='topright', lty=my.lty, col=my.col, legend=1974:1979)

# 자동차 가격 및 성능 데이터 분석.R [참고]