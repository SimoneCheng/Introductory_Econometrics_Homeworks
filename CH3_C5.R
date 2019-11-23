#把資料叫進R studio
load("C:/Users/simone/Desktop/計量經濟學(一)/R/wage1.RData")
View(data)

#log(wage) on educ,exper,tenure的多變量回歸模型
regression = lm(formula = log(wage)~educ+exper+tenure,data)
summary(regression)

#partialling out interpretation of the OLS 
#步驟一:算出educ on exper,tenure的多變量回歸模型，save the residuals to excel
regression1 = lm(formula = educ~exper+tenure,data)
summary(regression1)
u = residuals(regression1)
View(u)

#把殘差和wage存在同一個excel檔(檔名Wage11)，把它叫進來
library(readxl)
wage1 <- read_excel("wage11.xlsx")
View(wage11)

#對log(wage) on V1(殘差)做迴歸分析
regression2 = lm(formula = log(wage)~V1, wage11)
summary(regression2)