install.packages("ggplot2")
library(ggplot2)

sales <-  c(750, 740, 760, 680, 700, 710, 850, 890, 700, 720, 690, 930)
names(sales) <- paste(1:12, "M", sep="")
sales

ds <-  sales
barplot(ds, main="월별매출액", xlab="월", ylab="매출액")

# 1. 7월의 매출액을 출력해보세요.
sales['7M']
# 2. 1월과 2월의 매출액 합계
 sales['1M'] + sales['2M']
# 3. sort() 함수를 이용해서 매출액이 가장 많은 달부터 순서대로 출력
sort(sales, decreasing=TRUE)