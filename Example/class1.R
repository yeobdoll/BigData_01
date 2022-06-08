z <- matrix(1:20, nrow = 5)
z
t(z) # 행과 열 방향 변환
is.data.frame(iris) # 데이터 프레임이 맞는지 확인
is.data.frame(z)
is.matrix(iris) # 메트릭스인지 확인
str(iris)
colnames(iris)
iris_setosa <- subset(iris, Species=='setosa')
iris_setosa

a <- mean(iris_setosa$Sepal.Length) # $ 하면 열 나옴 (벡터-데이터프레임만 가능)
iris_setosa2 <-  subset(iris_setosa, Sepal.Length >= a 
                        | iris_setosa2, Sepal.width >= 4.0)
iris_setosa2

class(iris) 
class(cars)
class(stack.x)
str(stack.x)

class(state.x77)
b <-data.frame(state.x77)
class(b)
c <- as.matrix(b) # 데이터 프레임에 스트링 자료가 하나도 없었기에 바꿔줄수 있었다.
class(c)
