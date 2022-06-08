# 데이터 입력
age <- c(28, 17, 35, 46, 23, 67, 30, 50)
age

# 정보 추출
young <- min(age)
old <- max(age)

# 처리 결과 출력
cat('가장 젊은 사람의 나이는 ', young, '이고,',
    '가장 나이든 사람의 나이는', old, '입니다. \n')

# 화면에서 데이터 입력받기
# install.packages('svDialogs') 		# 패키지 설치
library(svDialogs)
user.input <- dlgInput('Input income')$res
user.input
income <- as.numeric(user.input) 	# 문자열을 숫자로
income
tax <- income * 0.05 			# 세금 계산
cat('세금: ', tax)

# print()와 cat()
x <- 26
y <- '입니다'
z <- c(10,20,30,40)
print(x) 			# 하나의 값 출력
print(y) 			# 하나의 값 출력
print(z) 			# 벡터 출력
print(iris[1:5,]) 		# 데이터프레임 출력
print(x,y) 		# 두 개의 값 출력(에러 발생)

cat(x,'\n') 		# 하나의 값 출력
cat(y,'\n') 		# 하나의 값 출력
cat(z,'\n') 		# 벡터 출력
cat(x,y,'\n') 		# 두 값을 연결하여 출력
cat(iris[1:5],'\n') 	# 데이터프레임 출력(에러 발생)

# 체질량 지수 계산1
library(svDialogs)
height <- dlgInput('Input height(cm)')$res
weight <- dlgInput('Input weight(kg)')$res
height <- as.numeric(height)
weight <- as.numeric(weight)
height <- height /100
bmi <- weight/(height^2)
cat('입력한 키는 ', height*100, 'cm, 몸무게는 ', weight,'kg 입니다. \n',sep = "")
cat('BMI는 ', bmi, '입니다.', sep = "")

# 작업 폴더
getwd() 			# 현재 작업 폴더 알아내기
setwd('C:\\Users\\User\\Desktop\\Programming\\Rstudy\\dataSet') 	# 작업 폴더 변경하기
getwd() 

# csv 파일 읽기와 쓰기
# header=T : 파일의 첫 번째 행은 데이터의 값이 아닌 열 이름이라는 의미.
air <- read.csv('airquality.csv', header=T)  # .csv 파일 읽기
head(air)
class(air) 

# setosa 품종 데이터만 추출
my.iris <- subset(iris, Species=='setosa') 
# .csv 파일에 저장하기
# write.csv() 함수를 이용해 my.iris의 내용을 작업 폴더에 저장하는 명령문
# row.names=F : my.iris를 저장할 때 행 번호/행 이름은 제외하라는 의미
write.csv(my.iris, 'my_iris.csv', row.names=F) 

# install.packages('xlsx') 		# 패키지 설치하기
library(xlsx) 				# 패키지 불러오기
# sheetIndex=1 : 엑셀 파일의 첫 번째 시트를 읽으라는 의미.
air <- read.xlsx('airquality.xlsx', header=T,
                 sheetIndex=1, encoding='UTF-8') 		# .xlsx 파일 읽기
head(air) 

library(xlsx) 				# 패키지 불러오기
my.iris <- subset(iris, Species=='setosa') 	# setosa 품종 데이터만 추출
write.xlsx(my.iris, 'my_iris.xlsx', row.names=F) 	# 파일에 저장하기

# 다이아몬드 정보 제공하기
library(ggplot2)
str(diamonds)
diamonds.new <- subset(diamonds, cut == 'Premium' & carat >= 2)
write.csv(diamonds.new, 'shiny_diamonds.csv', row.names = F)

diamonds.load <- read.csv('shiny_diamonds.csv', header = T)
diamonds.new <- subset(diamonds.load, color != 'D')
library(xlsx)
write.xlsx(diamonds.new, 'shiny_diamonds.xlsx', row.names=F)

# 실행 결과를 파일로 출력하기
# append=T : 'result.txt'의 내용 맨 마지막에 덧붙여서 출력하라는 의미로, append=F이면 기존에 있던 내용을 지우고 새로 출력하는 것을 의미.
print('Begin work') 		# 화면으로 출력
a <- 10; b <- 30
sink('result.txt', append=T)	# 파일로 출력 시작
cat('a+b=', a+b, '\n')
sink() 				# 파일로 출력 정지

cat('hello world \n') 		# 화면으로 출력
sink('result.txt', append=T)	# 파일로 출력 시작
cat('a*b=', a*b, '\n')
sink() 				# 파일로 출력 정지
print('End work') 		# 화면으로 출력

# 탭이나 공백으로 분리된 파일 읽기
air <- read.table('airquality.txt', header=T, sep=' ') # 파일 읽기
head(air) # 내용 확인


