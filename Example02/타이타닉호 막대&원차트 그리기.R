# 정성엽_2018315006

# install.packages('carData')
library(carData)
library(ggplot2)
str(TitanicSurvival)
data("TitanicSurvival")

# (1) 데이터 준비
room.class <- TitanicSurvival$passengerClass # 선실 정보
room.class

# (2) 도수분포 계산
tbl <- table(room.class)
tbl
sum(tbl) # 전체 탑승객 수

# (3) 막대그래프 작성
barplot(tbl, main="선실별 탑승객",
        xlab='선실 등급',
        ylab='탑승객수',
        col=c('blue', 'green', 'yellow'))

# (4) 원그래프 작성
rate <- round(tbl/sum(tbl)*100,1)
lab <- paste(names(tbl),',',rate,'%')

par(mar=c(1,1,4,1))
pie(tbl, main='선실별 탑승객',
    col = c('blue', 'green', 'yellow'), labels=lab)
par(mar=c(5.1,4.1,4.1,2.1))

#################################################

#x: x축
#y: y축
#color: 그래프의 색깔, 모양의 경우 테두리
#fill: 채우는 색깔
#size: 라인의 굵기 또는 점의 크기
#alpha: 투명도
#linetype: 선 패턴
#labels: 표나 축의 텍스트

df = data.frame(tbl)
df
ggplot(df, aes(x=room.class, y=Freq))+ # 데이터 및 축 입력
  geom_bar(stat="identity", width=0.7, # 그래프 조율 및 서식 입력
           fill="red")+
  ggtitle("선실별 탑승객")+
  labs(x="선실 등급", y="탑승객수")+
  theme(plot.title = element_text(face="bold", hjust=0.5, size=15, color="darkblue"))+ # 글씨 모양, 가운데 정렬, 크기, 색상
  theme(axis.title = element_text(face="bold", size=13, color="darkblue")) # x축 설정

#################################################

df = data.frame(tbl)
rate <- round(tbl/sum(tbl)*100,1) # 선실별 탑승객 비율
ggplot(df, aes(x="", y=Freq, fill=room.class))+ # 데이터 및 축 입력
  geom_bar(stat="identity", width=1)+ 
  geom_text(aes(label=paste0(rate, '%')),
            position = position_stack(vjust=0.5))+
  coord_polar(theta="y")+
  ggtitle("선실별 탑승객")+
  theme_void()+ # 격자 무늬 X
  theme(plot.title = element_text(face="bold", hjust=0.5, size=15, color="darkblue")) # 글씨 모양, 가운데 정렬, 크기, 색상
  