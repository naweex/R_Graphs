#Advanced graphics: ggplot2

install.packages("ggplot2")

library("ggplot2")

qplot(mtcars$mpg , mtcars$wt,col = mtcars$cyl) #parakandegi data
