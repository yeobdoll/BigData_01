# 학과: AI소프트웨어
# 학번: 2018315006
# 성명: 정성엽

v <- seq(from=1, to=23, by=2)
a <- matrix(v, nrow=3, byrow=F)
a

# 7을 추출하는 명령문을 작성하시오.
a[1, 2]
# 3,9,15,21을 한번에 추출하는 명령문을 작성하시오.
a[2,]
# 19,21,23을 한번에 추출하는 명령문을 작성하시오.
a[,4]
# 13,19,17,23을 추출하는 명령문을 작성하시오.
a[c(1,3),3:4]
# a[c(1,3),c(3,4)]

score <-  matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4)
score
rownames(score) <- c('John', 'Tom', 'Mark', 'Jane')
colnames(score) <- c('English', 'Math', 'Science')
score
score['John', ]
score['Mark', 'Math']
rownames(score)
colnames(score)