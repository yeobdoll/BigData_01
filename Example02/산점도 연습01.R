# 정성엽 2018315006 

help(mtcars)

# 2개 변수 산점도
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg, 
     main = '중량-연비 그래프',
     xlab = '중량',
     ylab = '연비(MPG)',
     col = 'red',
     pch=19)

# 여러 변수 산점도
vars <- c('mpg','disp', 'drat', 'wt')
target <- mtcars[,vars]
head(target)
plot(target, main = 'Multi plots')

# 그룹룹
iris
iris.2 <- iris[,3:4]
levels(iris$Species)
group <- as.numeric(iris$Species)
group
color <-  c('red', 'green', 'blue')
plot(iris.2, main="Iris plot", pch=group, col = color[group])

legend(x='bottomright', legend=levels(iris$Species),
       col=c <- c('red', ' green', 'blue'),
       pch = c(1:3),
       cex = 0.5)
