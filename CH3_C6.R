#�swage2����ƶi��
load("C:/Users/simone/Desktop/�p�q�g�پ�(�@)/R/wage2.RData")
View(data)

#��IQ on educ���j�k���R
a = lm(formula = IQ~educ,data)
summary(a)

#��log(wage) on educ���j�k���R
b = lm(formula = log(wage)~educ,data)
summary(b)

#��log(wage) on educ,IQ���j�k���R
lm(formula = log(wage)~educ+IQ,data = data)