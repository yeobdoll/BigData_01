# 도수분포표 계산하기
favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
favorite
table(favorite) # 도수분포 (각 데이터의 종류별 빈도 파악) 계산
# 도수분포를 도표로 나타낸 것이 도수분포표

# 막대 그래프 작성
ds <- table(favorite)
ds
# main: 막대그래프 상단의 그래프 타이틀을 지정한다.
# col: 막대의 색 지정
barplot(ds, main='favorite season', col='blue') # 막대그래프 작성

colors() # R 그래프에 사용할 수 있는 색의 이름 표시

# 막대의 색을 각각 지정할 수도 있음
barplot(ds, main='favorite season', col=c('violet', 'tomato', 'tan', 'thistle'))

# col=rainbow()
barplot(ds, main='favorite season', col=rainbow(4),
        xlab='계절', # x축 설명
        ylab='빈도수') # y축 설명

# 그래프 막대 수평 방향으로 출력하기
# horiz =TRUE
barplot(ds, main='favorite season', col='blue', horiz = TRUE) # 막대그래프 작성

# x축의 그룹 이름 바꾸기
barplot(ds, main='favorite season', 
        col='blue',
        names=c('FA','SP','SU','WI'))

# x축의 그룹 이름을 수직 방향으로 출력
barplot(ds, main='favorite season',
        col='green',
        las=2) # 그룹 이름을 수직 방향으로 설정
# 0: 축 방향(기본값), 1: 수평 방향, 2: 축을 기준으로 수직 방향, 3:수직 방향







# 중첩 그룹의 막대 그래프
# 데이터 입력
age.A <- c(13709, 10974, 7979, 5000, 4250)
age.B <- c(17540, 29701, 36209, 33947, 24487)
age.C <- c(991, 2195, 5366, 12980, 19007)

# rbind: 행 결합
ds <- rbind(age.A, age.B, age.C)
# 열 이름 바꾸기
colnames(ds) <- c('1970','1990','2010','2030','2050')
ds

# 그래프 작성
barplot(ds, main='인구 추정', col=c('green','blue','yellow'))

# 연령대를 각각의 막대로 표현하기 (beside = TRUE)
barplot(ds, main='인구 추정', col=c('green','blue','yellow'), beside=TRUE)

# 막대 그래프 범례 추가 (legend.text=T)
barplot(ds, main='인구 추정', col=c('green','blue','yellow'), beside=TRUE,
        legend.text=T,
        args.legend = list(x='topright', bty='n',inset=c(-0.25,0))) # 범례를 그래프 밖에 표시하기
# args.legend 지정사항
# x='topright' : 범례를 출력할 기본 위치를 지정하는데, topright은 그래프 출력 영역의 위쪽에서 오른쪽을 의미한다. 
# bty='o' : 범례가 표시되는 영역에 테두리 선을 표시할지의 여부를 지정한다. 'n'은 테두리선 표시 x
# inset=c(-0.25,0) : 범례를 x축과 y축 방향으로 얼마나 이동시킬지를 지정한다. -1~1사이의 값을 지정 (%를 의미함)
# 즉, x축 반대 방향으로 25% 만큼 이동, y축 방향으로 0% 이동을 의미한거임


# 범례를 그래프 밖에 표시하기
# par() 함수는 그래프를 표시할 창에 대해 설정
# mfrow=c(1,1) : 창을 분할하지 않음을 의미
# mar=c(5,5,5,7) : 그래프 출력 창과 그래프 영역 밖의 여유 공간을 지정
# c(bottom, left, top, right)
par(mfrow=c(1,1), mar=c(5,5,5,7))

# 범례의 내용 바꾸기 
par(mfrow=c(1,1), mar=c(5,5,5,7))
barplot(ds, main='인구추정',col=rainbow(3), beside=TRUE,
        legend.text=c('0~14세','15~64세','65세 이상'), # 범례의 내용 바꾸기
        args.legend = list(x='topright', bty='n', inset=c(-0.25, 0)))
par(mfrow=c(1,1), mar=c(5,4,4,2)+0.1) #그래프 창 설정 해제


# 사업부문별 매출액 그래프 그리기.R [참고]

