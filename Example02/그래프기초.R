favorite <- c('winter', 'summer', 'spring', 'summer', 'summer','fall', 'winter')
ds <- table(favorite)
barplot(ds, main='좋아하는 계절', col=rainbow(4),
        xlab='계절', ylab='빈도수',
        names = c('FA','SU','SP','WI'), horiz = T, las = 1)

# 데이터 입력
age.A <- c(13709, 10974, 7979, 5000, 4250)
age.B <- c(17540, 29701, 36209, 33947, 24487)
age.C <- c(991, 2195, 5366, 12980, 19007)
ds <- rbind(age.A, age.B, age.C)
colnames(ds) <- c('1970','1990','2010','2030','2050')
# 그래프 작성
# beside: 나란히 그리겠다
# bty='n' 테두리가 없는 상태 (있게 하려면 'o'입력)
par(mfrow=c(1, 1), mar=c(5, 5, 5, 7)) 	# 그래프 윈도우 설정
barplot(ds, main='인구 추정',
        col= rainbow(3),
        beside=TRUE,
        legend.text=c('0~14세','15~64세','65세 이상'),
        args.legend = list(x='topright', bty='o', 
                           inset=c(-0.25,0)))

