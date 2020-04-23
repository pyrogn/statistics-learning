auto = read.table('Auto.data', header = TRUE, na.strings = '?')
str(auto)
range(auto$mpg) #for example
auto=na.omit(auto)
sd(auto$mpg)
lapply(auto, mean, na.rm=TRUE)
apply(auto, 2, sd)

auto_less <- auto[-c(seq(10:85)), ]
lapply(auto_less, mean, na.rm=TRUE)

pairs(auto)
attach(auto)
plot(weight, displacement)
auto$origin = as.factor(auto$origin)
plot(auto$origin, auto$horsepower)

plot(mpg, horsepower)
plot(mpg, weight)
plot(mpg, displacement)
plot(origin, mpg)
