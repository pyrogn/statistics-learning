college = read.csv('College.csv')
rownames(college)=college[, 1]
college=college[,-1]
fix(college)
summary(college)
pairs(college[, 1:10])
attach(college)
plot(Private, Outstate, xlab='Private', ylab='Outstate')

chisq.test(Elite, Private) 
cor.test(PhD, S.F.Ratio)