#叫資料進到R studio
load("C:/Users/simone/Desktop/計量經濟學(一)/R/wage2.RData")
View(data)

#畫出wage on IQ的回歸模型
library(ggplot2)
ggplot(data,aes(IQ,wage))+geom_point(col="black")+geom_smooth(method=lm)

#wage on IQ的回歸方程式
Y = lm(wage~IQ,data)
summary(Y)

#log(wage) on IQ的回歸方程式
X = lm(log(wage)~IQ,data)
summary(X)

#其他(觀察資料)
summary(data)
                 