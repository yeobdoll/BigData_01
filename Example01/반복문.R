numrow <- nrow(iris)
a <- iris
Lable <- c() # 빈 벡터 생성 (초기화)
for (i in 1:numrow) {
  if (iris$Petal.Length[i] <= 1.6 ) {
    Lable[i] <-  'L'
  } else if (iris$Petal.Length[i] >= 5.1 ) {
    Lable[i] <-  'H'
  } else {
    Lable[i] <-  'M'
  }
}
print(Lable)
newdf <- data.frame(iris$Petal.Length, Lable)
head(newdf)


