#bar plots

counts = table(mtcars$gear)
counts

barplot(count,main = "Car Distribution by Gear" , xlab = "# of Gears",ylim = c(0,20),col = "red")

barplot(count,main = "Car Distribution by Gear" , horiz = T , names.arg = c("3 Gears","4 gears","5 gears"),xlim = c(0,20),col = "yellow")


#stacked bar plots with color and legend

counts = table(mtcars$vs,mtcars$gear)
counts
barplot(counts,,main = "Car Distribution by Gear and Vs" , xlab = "# of Gears",ylim = c(0,20),col = c("darkblue","red"),legend= rownames(counts))

#Grouped bar plots

counts = table(mtcars$vs,mtcars$gear)
counts
barplot(counts,,main = "Car Distribution by Gear and Vs" , xlab = "# of Gears",ylim = c(0,20),col = c("darkblue","red"),legend= rownames(counts),beside = T)



