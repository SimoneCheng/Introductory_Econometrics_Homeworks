#�s��ƶi��R studio
load("C:/Users/simone/Desktop/�p�q�g�پ�(�@)/R/wage2.RData")
View(data)

#�e�Xwage on IQ���^�k�ҫ�
library(ggplot2)
ggplot(data,aes(IQ,wage))+geom_point(col="black")+geom_smooth(method=lm)

#wage on IQ���^�k��{��
Y = lm(wage~IQ,data)
summary(Y)

#log(wage) on IQ���^�k��{��
X = lm(log(wage)~IQ,data)
summary(X)

#��L(�[����)
summary(data)
                 