install.packages('Stat2Data')
library(Stat2Data)
data(ChildSpeaks)
str(ChildSpeaks)

idx <- which(ChildSpeaks$Age < 9)
ChildSpeaks[idx,'m1'] <-  5
idx <- which(ChildSpeaks$Age >= 9 & ChildSpeaks$Age < 14)
ChildSpeaks[idx,'m1'] <-  4
idx <- which(ChildSpeaks$Age >= 14 & ChildSpeaks$Age < 20)
ChildSpeaks[idx,'m1'] <-  3
idx <- which(ChildSpeaks$Age >= 20 & ChildSpeaks$Age < 26)
ChildSpeaks[idx,'m1'] <-  2
idx <- which(ChildSpeaks$Age >= 26)
ChildSpeaks[idx,'m1'] <-  1

idx <- which(ChildSpeaks$Gesell < 70)
ChildSpeaks[idx,'m2'] <- 1
idx <- which(ChildSpeaks$Gesell >= 70 & ChildSpeaks$Gesell < 90 )
ChildSpeaks[idx,'m2'] <- 2
idx <- which(ChildSpeaks$Gesell >= 90 & ChildSpeaks$Gesell < 110 )
ChildSpeaks[idx,'m2'] <- 3
idx <- which(ChildSpeaks$Gesell >= 110 & ChildSpeaks$Gesell < 130 )
ChildSpeaks[idx,'m2'] <- 4
idx <- which(ChildSpeaks$Gesell >= 130 )
ChildSpeaks[idx,'m2'] <- 5

ChildSpeaks$t <-ChildSpeaks$m1 + ChildSpeaks$m2

idx <- which(ChildSpeaks$t < 3)
ChildSpeaks[idx, 'result'] <- '매우느림'
idx <- which(ChildSpeaks$t >= 3 & ChildSpeaks$t < 5 )
ChildSpeaks[idx, 'result'] <- '느림'
idx <- which(ChildSpeaks$t >= 5 & ChildSpeaks$t < 7 )
ChildSpeaks[idx, 'result'] <- '보통'
idx <- which(ChildSpeaks$t >= 7 & ChildSpeaks$t < 9 )
ChildSpeaks[idx, 'result'] <- '빠름'
idx <- which(ChildSpeaks$t >= 9 )
ChildSpeaks[idx, 'result'] <- '매우빠름'