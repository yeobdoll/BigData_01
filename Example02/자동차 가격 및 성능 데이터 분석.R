# 정성엽 2018315006

# 1
library("DAAG")
library("ggplot2")
str(carprice)
carprice$Price # 자동차 가격

# 2
range(carprice$Price) # 값의 범위
mean(carprice$Price) # 값의 평균

# 3
hist(carprice$Price, main='자동차 가격', 
     xlab='가격대',
     ylab='빈도',
     col='green')

ggplot(carprice, aes(x=Price))+
  geom_histogram(binwidth = 5, fill='darkgreen', color='black')+
  ggtitle("자동차 가격")+
  theme(plot.title = element_text(family="serif",
                                  face = "bold", hjust=0.5,
                                  size=15, color = "darkblue"))+
  labs(x="가격대", y="빈도")+
  theme(axis.title = element_text(face="bold",
                                  size = 13, color="darkblue"))+
  scale_x_continuous(breaks = seq(0,50, 5), labels = seq(0, 50, 5))

# 4
tbl <- table(carprice$Type)
tbl

barplot(tbl, main="자동차 타입별 빈도수",
        xlab="타입",
        ylab="빈도수",
        col=rainbow(length(tbl)))

tbl <-  as.data.frame(tbl)
ggplot(tbl, aes(x=Var1, y=Freq))+
  geom_bar(stat = 'identity', width=0.7,
           fill=cm.colors(6))+
  ggtitle('자동차 타입별 빈도수')+
  theme(plot.title = element_text(family = "serif",
                                  face = "bold", hjust=0.5,
                                  size=15, color="darkblue"))+
  labs(x="타입", y="빈도수")+
  theme(axis.title = element_text(face="bold", size=13, color = "darkblue"))

# 5 최대값
# 가격이 가장 비싼 자동차 타입
idx <- which(carprice$Price == max(carprice$Price))
carprice[idx, c('Type', 'Price')]

#type <-  carprice[idx, c('Type')]
#price <-  carprice[idx, c('Price')]
#cat('가장 비싼 자동차 타입은 ',type, price, "입니다.")

# 6 최소값
# 가격이 가장 싼 자동차 타입
idx <- which(carprice$Price == min(carprice$Price))
carprice[idx, c('Type', 'Price')]

t#ype <-  carprice[idx, c('Type')]
#price <- carprice[idx, c("Price")]
#cat('가장 싼 자동차 타입은 ',type, price, "입니다.")