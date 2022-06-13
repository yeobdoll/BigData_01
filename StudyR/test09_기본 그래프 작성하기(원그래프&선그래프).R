# 원 그래프 작성
favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
ds <- table(favorite)
ds
# radius는 파이의 크기 지정
pie(ds, main='선호 계절', 
    col=c('brown', 'yellow', 'red', 'blue'),
    radius=1)

# 3차원 원그래프 작성
# install.packages('plotrix')
library(plotrix)
pie3D(ds, main='선호 계절',
      labels=names(ds), # 파이별 레이블 지정
      labelcex=1.0, # 레이블의 폰트 크기
      explode=0.1, # 파이 간 간격
      radius=1.5,
      col=c('yellow','blue','red','brown'))

# 선 그래프 작성
# 선 그래프는 연도별 인구 증가 추이와 같이 시간의 변화에 따라 수집된 데이터를 시각화 하는 데 주로 사용

month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month, # x데이터
     late, # y데이터
     main='지각생 통계',
     type='l', # 그래프의 종류 선택(알파벳)
     lty=1, # 선의 종류 선택 
     lwd=1, # 선의 굵기 선택
     xlab='Month',
     ylab='Late cnt')

# 복수의 선 그래프 작성
month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month, late1, main='Late students', type='b', lty=1, lwd=1,
     col='red', xlab='Month', ylab='Late cnt')
# lines()함수 : plot()함수로 작성한 그래프 위에 선을 겹쳐서 그린다.
lines(month, late2, type='b',col='blue')