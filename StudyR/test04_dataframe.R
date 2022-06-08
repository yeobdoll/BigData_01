# 데이터프레임 생성
city <- c("Seoul","Tokyo","Washington") 	# 문자로 이루어진 벡터
rank <- c(1,3,2) 				# 숫자로 이루어진 벡터
city.info <- data.frame(city, rank) 		# 데이터프레임 생성
city.info 				# city.info의 내용 출력

# iris 데이터셋
iris
iris[,c(1:2)] 			     # 1~2열의 모든 데이터
iris[,c(1,3,5)] 			     # 1, 3, 5열의 모든 데이터
iris[,c("Sepal.Length","Species")]    # 1, 5열의 모든 데이터
iris[1:5,] 			     # 1~5행의 모든 데이터
iris[1:5,c(1,3)] 	    # 1~5행의 데이터 중 1, 3열의 데이터

# 햄버거 영양 성분 정보 추가하기
kcal <- c(514, 533, 566)
na <- c(917, 853, 888)
fat <- c(11, 13, 10)
menu <- c('새우', '불고기', '치킨')
burger <- data.frame(kcal, na, fat, menu)
rownames(burger) <- c('M', 'L', 'B')
burger

burger['M', 'na'] 		# M사의 나트륨 함량
burger['M', ] 			# M사의 모든 영양 정보
burger[, 'kcal' ] 		# 모든 브랜드의 칼로리 정보
burger[c('M','B'),'menu'] 	# M과 B사의 menu 정보

# 데이터셋의 기본 정보 알아보기
dim(iris) 	# 행과 열의 개수 보이기
nrow(iris) 	# 행의 개수 보이기
ncol(iris) 	# 열의 개수 보이기
colnames(iris) 	# 열 이름 보이기, names() 함수와 결과 동일
head(iris) 	# 데이터셋의 앞부분 일부 보기
tail(iris) 	# 데이터셋의 뒷부분 일부 보기

str(iris) 		# 데이터셋 요약 정보 보기
iris[,5] 		# 품종 데이터 보기
levels(iris[,5]) 	# 품종의 종류 보기(중복 제거)
table(iris[,"Species"]) 	# 품종의 종류별 행의 개수 세기

# 행별, 열별로 평균 계산하기
colSums(iris[,-5]) 		# 열별 합계
colMeans(iris[,-5]) 		# 열별 평균
rowSums(iris[,-5]) 		# 행별 합계
rowMeans(iris[,-5]) 		# 행별 평균

# 행과 열의 방향 변환
z <- matrix(1:20, nrow=4, ncol=5)
z
t(z) 		# 행과 열 방향 변환

# subset() 함수는 전체 데이터에서 조건에 맞는 행들만 추출
IR.1 <- subset(iris, Species=='setosa')
IR.1
IR.2 <- subset(iris, Sepal.Length>5.0 & 
                 Sepal.Width>4.0)
IR.2
IR.2[, c(2,4)] 		# 2열과 4열의 값만 추출

# 매트릭스 & 데이터프레임 산술연산 적용
a <- matrix(1:20,4,5); a
b <- matrix(21:40,4,5); b
2 * a 		# 매트릭스 a에 저장된 값들에 2를 곱하기
a+b
a <- a*3
b <- b-5

# 매트릭스와 데이터프레임의 자료구조 확인하기기
# iris는 데이터프레임이고, state.x77은 기본적으로는 매트릭스이면서 상위 개념인 배열(array)에도 속함 
class(iris) 		# iris 데이터셋의 자료구조 확인
class(state.x77) 	# state.x77 데이터셋의 자료구조 확인
is.matrix(iris) 		# 데이터셋이 매트릭스인지 확인하는 함수
is.data.frame(iris) 	# 데이터셋이 데이터프레임인지 확인하는 함수
is.matrix(state.x77)
is.data.frame(state.x77)

# 자료구조 변환하기
# 매트릭스를 데이터프레임으로 변환
is.matrix(state.x77)
st <- data.frame(state.x77)
head(st)
class(st)
# 데이터프레임을 매트릭스로 변환
is.data.frame(iris[,1:4])
iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

# 데이터프레임에만 적용되는 열 추출 방법
iris[,"Species"] 	# 결과가 벡터-매트릭스, 데이터프레임 모두 가능
iris[,5] 		# 결과가 벡터-매트릭스, 데이터프레임 모두 가능
iris["Species"] 	# 결과가 데이터프레임-데이터프레임만 가능
iris[5] 		# 결과가 데이터프레임-데이터프레임만 가능
iris$Species 	# 결과가 벡터-데이터프레임만 가능 

# 벚나무 판매하기
# 데이터셋 확인
class(trees)
str(trees)
girth.mean <- mean(trees$Girth)
candidate <- subset(trees, Girth >= girth.mean & Height > 80 &
                      Volume > 50)
candidate
nrow(candidate)

# 종업원의 팁 계산하기
install.packages('reshape2')
library(reshape2)
tips
is.matrix(tips)
class(tips)
head(tips)
str(tips)
# tips 데이터셋에서 요일(day)별 팁을 받는 빈도를 구하기기
table(tips$day)
# 요일별로 시간대(time)가 'Dinner'인 경우와 'Lunch'인 경우로 나누어 팁의 빈도에 차이가 있는지 알아보기.
dinner <- subset(tips, time == 'Dinner')
lunch <- subset(tips, time == 'Lunch')
table(dinner$day) # table()함수는 데이터의 빈도를 보여준다.
table(lunch$day)

# dinner와 lunch의 데이터셋을 이용하여 결제 금액(total_bill), 팁(tip), 일행 수(size)에 대한 평균 구하기
colMeans(dinner[c('total_bill','tip','size')])
colMeans(lunch[c('total_bill','tip','size')])
# 손님들은 결제 금액 대비 평균적으로 몇 퍼센트(%)를 팁 알아보기
tip.rate <- tips$tip / tips$total_bill # 손님별 팁의 비율
mean(tip.rate) # 평균 팁의 비율