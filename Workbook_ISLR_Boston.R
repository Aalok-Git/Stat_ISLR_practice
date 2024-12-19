library(MASS)
library(ISLR2)
#??ISLR2
#View(Boston)
##str(Boston)
head(Boston)

?lm()
lm.fit<- lm(medv ~ lstat, Boston)
lm.fit
summary(lm.fit)
names(lm.fit)
lm.fit$coefficients
coef(lm.fit)
residuals(lm.fit)
fitted.values(lm.fit)
