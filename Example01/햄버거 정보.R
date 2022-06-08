# 학과: AI소프트웨어
# 학번: 2018315006
# 성명: 정성엽

# 햄버거 영양 성분 정보 제공하기
burger = matrix(c(514,533,566,917,853,888,11,13,10), nrow=3)
burger
rownames(burger) <- c('M', 'L', 'B')
colnames(burger) <- c('kcal', 'na', 'fat')
burger

# L 사의 모든 영양 정보를 추출해보세요.
burger['L',]
#burger[2, ]

# 모든 브랜드의 칼로리 정보를 추출해보세요.
burger[, 'kcal']
#burger[, 1]