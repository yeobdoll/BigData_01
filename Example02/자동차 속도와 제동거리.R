library(ggplot2)

# 1
head(cars)
str(cars)

# 2
plot(cars$speed,
     cars$dist,
     main="자동차 속도와 제동거리",
     xlab="속도",
     ylab="제동거리")

# 3
cor(cars$speed, cars$dist)

ggplot(data=cars, aes(x=speed, y=dist))+
  geom_point()