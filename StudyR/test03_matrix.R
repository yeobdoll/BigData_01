# 매트릭스와 데이터프레임의 차이점은 매트릭스에 저장되는 모든 자료의 종류(data type)가 동일한 반면 데이터프레임에는 서로 다른 종류의 데이터가 저장

# 매트릭스
z <- matrix(1:20, nrow=4, ncol=5); z
z <- matrix(1:20, nrow=4, ncol=5, byrow=T); z # 행 방향으로 값을 채우려면 byrow=T 

x <- 1:4 				# 벡터 x 생성
y <- 5:8 				# 벡터 y 생성
z <- matrix(1:20, nrow=4, ncol=5); z 	# 매트릭스 z 생성
m1 <- cbind(x,y); m1     # x와 y를 열 방향으로 결합하여 매트릭스 생성
m2 <- rbind(x,y); m2     # x와 y를 행 방향으로 결합하여 매트릭스 생성
m3 <- rbind(m2,x); m3   # 매트릭스 m2와 벡터 x를 행 방향으로 결합
m4 <- cbind(z,x); m4     # 매트릭스 z와 벡터 x를 열 방향으로 결합

z
z[2,3] 				  # 2행 3열에 있는 값
z[1,4] 				  # 1행 4열에 있는 값
z[2,] 				  # 2행에 있는 모든 값
z[,4] 				  # 4열에 있는 모든 값 

z[2,1:3] 		      # 2행의 값 중 1~3열에 있는 값
z[1,c(1,2,4)] 		      # 1행의 값 중 1, 2, 4열에 있는 값
z[1:2,] 			      # 1~2행에 있는 모든 값
z[,c(1,4)] 		      # 1, 4열에 있는 모든 값 

# 문제
a <- matrix(seq(1,23,2), nrow=3, ncol=4); a
a[1, 2] # 7을 출력하라
a[2,] # 3,9,15,21을 출력하라
a[,4] # 19,21,23을 출력하라
a[seq(1,3,2), c(3, 4)] # 13,19,17,23을 출력하라

# 행과 열에 이름 붙이기
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4)
rownames(score) <- c('John','Tom','Mark','Jane')
colnames(score) <- c('English','Math','Science')
score

score['John','Math'] 		# John의 수학 성적
score['Tom',c('Math','Science')] 	# Tom의 수학, 과학 성적
score['Mark',] 			# Mark의 모든 과목 성적
score[,'English'] 		# 모든 학생의 영어 성적
rownames(score) 			# score의 행의 이름
colnames(score) 			# score의 열의 이름
colnames(score)[2] 		# score의 열의 이름 중 두 번째 값

# 햄버거 영양 성분 정보 제공하기
burger <- matrix(c (514, 917, 11, 533, 853, 13, 566, 888, 10), nrow = 3, byrow = T)
rownames(burger) <- c('M', 'L', 'B')
colnames(burger) <- c('kcal', 'na', 'fat')
burger 		# 매트릭스의 내용 확인
burger['M', 'na'] # M사의 나트륨 함량
burger['M', ] 		# M사의 모든 영양 정보
burger[, 'kcal'] 	# 모든 브랜드의 칼로리 정보


