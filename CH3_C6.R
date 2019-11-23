#叫wage2的資料進來
load("C:/Users/simone/Desktop/計量經濟學(一)/R/wage2.RData")
View(data)

#對IQ on educ做迴歸分析
a = lm(formula = IQ~educ,data)
summary(a)

#對log(wage) on educ做迴歸分析
b = lm(formula = log(wage)~educ,data)
summary(b)

#對log(wage) on educ,IQ做迴歸分析
lm(formula = log(wage)~educ+IQ,data = data)