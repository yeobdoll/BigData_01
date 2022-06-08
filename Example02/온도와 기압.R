library(ggplot2)

# 1
head(pressure)
str(pressure)

# 2
plot(pressure$temperature,
     pressure$pressure,
     main='온도와 기압',
     xlab='온도(화씨)',
     ylab='기압')

ggplot(data=pressure,aes(x=temperature, y= pressure))+
  geom_point()+
  ggtitle('온도와 기압')+
  theme(plot.title = element_text(family = "serif",
                                  face = 'bold',hjust = 0.5,
                                  size = 15, color='darkblue'))+
  labs(x='온도', y='기압')+
  theme(axis.title = element_text(face = 'bold',
                                  size = 13, color = 'darkblue'))