# 팩터
bt <-  c('A', 'B', 'B', 'O', 'AB', 'A')
bt.new <-  factor(bt)
bt[4]
bt.new[4]
levels(bt.new)
as.integer(bt.new)
bt.new[7] <-  'B'
# bt.new[8] <-  'C'  # 오류가 뜸. 'C'가 Levels에 없는 값이기 때문이다.
bt.new

# 리스트
h.list <-  c('balling', 'tennis', 'ski')
person <-  list(name='Tom', age=25, student=TRUE, hobby=h.list)
person
person[[1]]
person$name
person[[4]]

# 실전분석. 월별 감전사고 통계 분석하기
accident <-  c(31, 26, 42, 47, 50, 54, 70, 66, 43, 32, 32 ,22)
names(accident) <-  paste('M', 1:12, sep="")
sum(accident)
