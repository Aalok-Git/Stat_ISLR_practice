loadlibrary<- function(){
  library(ISLR2)
  library(MASS)
  print("All the libraries are loaded")
}
loadlibrary()           #loads all the library with this function
# View(Auto)
attach(Boston)
cor(medv, rm)             #gives us a rough estimate of the co-relation between different variables

mod2<- lm(medv ~ lstat + rm)       #multiple LM for y= medv, and x1= lstat, x2= rm
summary(mod2)
# plot(medv,rm)
# abline(mod2)

mod3<- lm(medv ~ ., data= Boston)      #LM between all the variables 
summary(mod3)
# ?summary.lm              #to check the summary.lm document
summary(mod3)$fstatistic
vif(mod3)            #variance inflation factors

mod4<- lm(medv ~ . -lstat, data= Boston)        #this excludes the lstat column from the LM consideration
summary((mod4))
