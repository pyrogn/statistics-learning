data <- read.table('Auto.data', header = T, na.strings = '?')
attach(data)
model <- lm(mpg~horsepower)
summary(model)


predict(model,data.frame(horsepower=(c(98))), interval ="prediction")
predict(model,data.frame(horsepower=(c(98))), interval ="confidence")

plot(model)
abline(mpg, horsepower)
abline(model) # i don't see anything

