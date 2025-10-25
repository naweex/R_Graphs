#creating graph

plot(mtcars$wt,mtcars$mpg)
abline(lm(mtcars$mpg~mtcars$wt)) #Linear regression
title("Regression of  MPG over Weight")

#simple histogram

hist(mtcars$mpg)
hist(mtcars$mpg,breaks =  10,col = "purple")

#add a normal curve
x = mtcars$mpg
hist(x, breaks = 10 ,freq = F ,col="red" ,xlim = c(0,max(x)), xlab = "miles per gallon",main = "histogram with normal curve")
xfit = seq(0,max(x),length =40)
yfit = dnorm(xfit , mean = mean(x) , sd = sd(x))
lines(xfit , yfit,col="blue",lwd = 2)
