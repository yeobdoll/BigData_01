# 정성엽 2018315006

# 상자그림을 이용하여 자동차 데이터 분석하기
View(mtcars)

# 1 
boxplot(mtcars$mpg)
boxplot.stats(mtcars$mpg)

# 2
boxplot(mtcars$mpg~mtcars$gear)

# 3
boxplot(mtcars$mpg~mtcars$vs)