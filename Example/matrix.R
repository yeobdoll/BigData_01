# 수학 성적표
score <-c(30 , 50, 70, 88, 45, 91, 95, 78, 88, 86)
names(score) <-  paste('S', 1:10, sep="")

# 1반 학생의 총 점수는?
sum(score)

# 1반 학생 중 제일 높은 점수와 낮은 점수는?
max(score)
min(score)

# 1반 학생 점수 중 70점이 넘는 학생 이름은?
names(score[score >= 70])

# 1반 학생 점수 중 70점이 넘는 학생 수는?
length(score[score >= 70])

# 1반 평균 점수보다 높은 학생은?
score.mean <- mean(score)
score[score >= score.mean]

# Matrix
z <- matrix(1:20, nrow=4, ncol=5)
View(z)

z1 <- matrix(1:20, nrow=4, ncol=5, byrow = T)
View(z1)

z2 <- z <- matrix(1:20, nrow=4, byrow = T)
View(z2)

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow = 4, ncol = 5)
z
m1 <- cbind(x, y)
View(m1)
m2 <- rbind(x, y)
View(m2)
m3 <- cbind(z, y)
View(m3)
# m4 <- rbind(z, y) 당연히 이러면 오류

z[2, 3]
z[2,]
z[,4]