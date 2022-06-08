# 학과: AI소프트웨어
# 학번: 2018315006
# 성명: 정성엽

city <-  c('Seoul', "Tokyo", "Washington")
rank <-  c(1, 3, 2)
city.info <- data.frame(city, rank) # 데이터 프레임 생성
city.info
str(city.info)

iris
iris[, 5]
iris[5, ]

# 햄버거 영양 성분 정보 추가하기
kcal <- c(514, 333, 566)
na <- c(917, 853, 888)
fat <- c(11, 13, 10)
menu <-  c('새우', '불고기', '치킨')
burger_data <- data.frame(kcal, na, fat, menu)
burger_data

rownames(burger_data) <-  c('M', 'L', 'B')
burger_data

# M 사의 모든 영양정보를 추출하세요.
burger_data['M',]
# L사와 B사의 메뉴정보를 추출하세요.
burger_data[c('L', 'B'), 'menu']

