# 1번
cars
# 이 데이터 셋의 자료구조는 무엇인가?
class(cars)
# 이 데이터 셋의 관측값과 컬럼의 개수를 구하라
dim(cars)
# 이 데이터 셋의 앞쪽 일부분의 내용을 보여라
head(cars)
# 이 데이터 셋의 요약 정보를 보여라
str(cars)
# 이 데이터 셋의 컬럼별 평균을 구하라
colSums(cars)
# 가장 긴 제동거리(dist)를 구하라
max(cars$dist)
# 제동거리가 가장 길 때의 속력(speed)과 제동거리(dist)를 구하시오
subset(cars, dist == max(cars$dist))

# 2번
InsectSprays
# 매트릭스인가?
is.matrix(InsectSprays)
# 요약 정보를 보여라
str(InsectSprays)
# 데이터 셋의 뒤 쪽 10개 내용을 보여라
tail(cars, n=10)
# 실험에 사용한 살출제(spray)의 종류를 구하라
levels(InsectSprays$spray)
# 살충제 종류별 데이터의 빈도를 구하라
table(InsectSprays$spray)
# 살충제 E의 자료만 추출하여 InsectSprays.e에 저장하라
InsectSprays.e <- subset(InsectSprays, spray == 'E')
# 살충제 E가 박멸한 해충수(count)의 평균을 구하라
mean(InsectSprays.e$count)