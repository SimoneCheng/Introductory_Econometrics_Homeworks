#���ƥs�iR studio
load("C:/Users/simone/Desktop/�p�q�g�پ�(�@)/R/wage1.RData")
View(data)

#log(wage) on educ,exper,tenure���h�ܶq�^�k�ҫ�
regression = lm(formula = log(wage)~educ+exper+tenure,data)
summary(regression)

#partialling out interpretation of the OLS 
#�B�J�@:��Xeduc on exper,tenure���h�ܶq�^�k�ҫ��Asave the residuals to excel
regression1 = lm(formula = educ~exper+tenure,data)
summary(regression1)
u = residuals(regression1)
View(u)

#��ݮt�Mwage�s�b�P�@��excel��(�ɦWWage11)�A�⥦�s�i��
library(readxl)
wage1 <- read_excel("wage11.xlsx")
View(wage11)

#��log(wage) on V1(�ݮt)���j�k���R
regression2 = lm(formula = log(wage)~V1, wage11)
summary(regression2)