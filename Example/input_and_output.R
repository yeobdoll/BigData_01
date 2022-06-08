# install.packages('svDialogs')
library(svDialogs)
user_input <- dlgInput('Input income')$res
print(user_input)
income <- as.numeric(user_input)
income <-  income * 10000
print(income)
tax <- income * 0.05
cat('당신의 세금은 :',tax, '원 입니다.')

# 체질량 지수 계산하기 1
library(svDialogs)
height <- dlgInput('Input height(cm)')$res
weight <- dlgInput('Input weight(kg)')$res
height <- as.numeric(height)
weight <- as.numeric(weight)
height <- height / 100
bmi <- weight / (height^2)
cat('입력한 키는 ', height*100, 'cm, 몸무게는 ', weight, 'kg 입니다. \n', sep="")
cat('BMI는', bmi, '입니다.', sep="")
