#########################################################
#########################################################
###***RUN EACH LINE ONE AFTER THE OTHER*
#########################################################
#########################################################

library(MASS)
library(ISLR2)
#??ISLR2
View(Boston)
##str(Boston)
head(Boston)

?lm()
lm.fit<- lm(medv ~ lstat, Boston)     #check the documents to know about the syntax
lm.fit
summary(lm.fit)       #displays all the necessary statistics
names(lm.fit)         #displays all the other values that can be checked 
lm.fit$coefficients   #same as the next function
coef(lm.fit)
residuals(lm.fit)
fitted.values(lm.fit)


confint(lm.fit)       #confidence interval of coefficient estimates
predict(lm.fit, data.frame(lstat= c(5, 10, 15)),# generic function for predictions from the results of various model fitting functions
        #interval = c("none", "confidence", "prediction")
        interval = "prediction")
attach(Boston)
plot(lstat, medv, type= "p", lwd= 2, col= "#FF949A", col.sub= "red", pch= 20) 
abline(lm.fit, lwd= 2, col= "blue", col.axis= "blue", col.sub= "red")     #this is the linear regression line

#plot(1:20, 1:20, pch= 1:20)       #to check all the pch shapes


par(mfrow= c(2,2))
plot(lm.fit)

plot(predict(lm.fit), residuals(lm.fit))
plot(predict(lm.fit), rstudent(lm.fit))

plot(hatvalues(lm.fit))
which.max(hatvalues(lm.fit))
str(lm.fit)
