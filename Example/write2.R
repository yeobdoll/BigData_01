# install.packages('rJava')
install.packages('xlsx')
getwd()
setwd('C:/StudyR/Rdata')
library(xlsx)
a <-  read.xlsx('airquality.xlsx', sheetIndex=1)
str(a)
write.xlsx(a, 'a.xlsx', r)

install.packages('ggplot2')
library(ggplot2)
str(diamonds)
diamonds_new <- subset(diamonds, cut == 'Premium' & carat >= 2)
write.table(diamonds_new, 'b.txt', sep='\t')

a <- 20
b <- 40
sink('result.txt', append = T) # append 함수는 기본값 False
cat('a+b= ', a+b, '\n')
sink()