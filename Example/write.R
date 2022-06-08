# install.packages('xlsx') # 엑셀 파일 읽어오는 패키지 설치
# getwd()
# setwd('C:/StudyR/Rdata')
library(xlsx)
air <- read.xlsx('airquality.xlsx', header = T)
str(air)
air_subset <- subset(air, Month == '5')
class(air_subset)
write.csv(air_subset, 'air_month_5.csv', row.names = F)