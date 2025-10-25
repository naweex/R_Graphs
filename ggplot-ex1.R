#ggplot first example

x = rnorm(200 , mean = 0.8) #rnorm (normal distribution)
cond = sample(c("A","B"),replace = T ,200)
d = data.frame(cond,x)
head(d)

ggplot(d,aes(x)) + geom_histogram()

ggplot(d,aes(x)) + geom_histogram(binwidth = 0.25,color = "black" , fill = "white")

ggplot(d,aes(x)) + geom_density()

ggplot(d,aes(x)) +
  geom_histogram(aes(y=..density..),binwidth = 0.25, color = "black", fill = "white") +
  geom_density(alpha = 0.5 , fill ="red")

ggplot(d,aes(x)) +
  geom_histogram(aes(y=..density..),binwidth = 0.25, color = "black", fill = "white") +
  geom_vline(aes(xintercept = mean(x)),color = "red",size = 1.5 ,linetype = "dashed") +
  geom_density(alpha = 0.25 , fill ="blue")

ggplot(d,aes(x , color = cond)) +
  geom_density()

ggplot(d,aes(x, fill = cond)) + 
  geom_density(alpha = 0.5)