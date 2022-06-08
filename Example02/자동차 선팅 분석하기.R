# 정성엽 2018315006

# 1
library(DAAG)
str(tinting)

# 2
plot(tinting$it, tinting$csoa)
plot(tinting$csoa, tinting$age)

# 3
group <- as.numeric(tinting$tint)
levels(tinting$tint)
color <- c('red', 'green', 'blue')
plot(tinting$it, tinting$csoa, 
     pch = c(group),
     col=color[group])

# 4
group <- as.numeric(tinting$agegp)
color <-  c('red', 'blue')
plot(tinting$it, tinting$csoa,
     pch=c(group),
     col=color[group])