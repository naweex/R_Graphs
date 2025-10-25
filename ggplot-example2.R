#ggplot example 2 nemudar parakandegi

x = 1:30 + rnorm(30,sd = 1.5)
y = 1:30 + rnorm(30 , sd = 2)

cond = rep(c("A","B"),each = 15)
cond

r = data.frame(x,y,cond)
head(r)
tail(r)

ggplot(r,aes(x,y)) +
  geom_point(shape= 1 , size =2)

ggplot(r,aes(x,y,color = cond)) +
  geom_point(shape= 1 , size =2)

ggplot(r, aes(x, y)) +
  geom_point(shape=23, fill="blue", color="darkred", size=3)

ggplot(r,aes(x,y)) +
  geom_point(shape= 1 , size =2) +
  geom_smooth(method = NULL)

ggplot(r,aes(x,y,shape = cond)) +
  geom_point()

#ggplot and boxplot

ggplot(r,aes(cond ,x , fill = cond)) +
  geom_boxplot() +
  guides(fill = FALSE) +
  ggtitle("Box Plot")


