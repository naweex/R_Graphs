#Dot plots

dotchart(mtcars$mpg , labels = row.names(mtcars) , xlab = "Miles Per Gallon" , main = "Gas Milage for Car Models ")

x = mtcars[order(mtcars$mpg),] #order moratab sazi ast
x$color[mtcars$cyl == 4] = "red"
x$color[mtcars$cyl == 6] = "blue"
x$color[mtcars$cyl == 8] = "green"

dotchart(x$mpg , labels = row.names(x) , groups = factor(x$cyl),xlab = "Miles Per Gallon",gcolor = "black",color = x$color)
