z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0 # NA를 0으로 치환
z1

z2 <- as.vector(na.omit(z2)) #NA를 제거하고 새로운 벡터 생성
z2

x <- iris # NA를 포함한 데이터프레임 생성 
x[1,2] <- NA
x[1,3] <- NA
x[2,3] <- NA
x[3,4] <- NA
head(x)

#for 문을 이용하여 각 열별로 NA 개수 확인 후 cat 함수를 이용하여 출력
for(i in 1:ncol(x)){
  this.na <- is.na(x[,i])
  cat(colnames(x)[i],'\t',sum(this.na),'\n')
}
  

#apply 함수를 이용한 방법 (각 열별로 col_na 함수를 적용)
col_na <- function(y){
  return(sum(is.na(y)))
}

na_count <- apply(x,2,FUN = col_na)
na_count