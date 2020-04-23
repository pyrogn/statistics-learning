library(MASS)
pairs(Boston)
attach(Boston)


plot(Boston$chas, Boston$crim)
plot(Boston$rad, Boston$crim)
Boston$rad = as.factor(Boston$rad)
Boston$chas = as.factor(Boston$chas)
plot(~crim+black+lstat+medv+nox+age+dis)

cor.test(crim, tax) #and so on
plot(crim, tax)
# I don't find the variable with suburbs