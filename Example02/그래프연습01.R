# 히스트 연습
str(cars)
head(cars)
d <- cars[,2]
hist(d, main='제동거리', col='green',xlab='제동거리',ylab='빈도수',
     ylim=c(0,20), breaks=5)

# 다중 그래프
library(reshape2)
iris
par(mfrow=c(2,2), mar=c(3,3,4,2))
hist(iris$Sepal.Length, main='Sepal.Length', col='red')
hist(iris$Sepal.Width, main='Sepal.Width', col='blue')
hist(iris$Petal.Length, main='Petal.Length', col='green')
hist(iris$Petal.Width, main='Petal.Width', col='orange')
par(mfrow=c(1,1), mar=c(5,4,4,2)+.1)