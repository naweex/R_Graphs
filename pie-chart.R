#pie chart 

myNumbers = c(20,80,60,50,30)
categories = c("A","B","C","D","E")

pie(myNumbers , labels = categories , main = "pie chart")

percentage = round(myNumbers / sum(myNumbers) * 100) #darsad har kodaM AZ SAHM HA
percentage

l = paste(categories,":",percentage,"%")
l


pie(percentage , labels = l , main = "pie chart" , col = rainbow(length(l)))
