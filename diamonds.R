library(ggplot2)
data(diamonds)
str(diamonds)


diamonds$cut
diamonds$color
diamonds$clarity
#cost less than 1000
#14499
summary(diamonds$price <1000)

#cost less than 500
#1729
summary(diamonds$price <500)

#cost less than 250
#no dimond cost less than 250
summary(diamonds$price < 250)

ggplot(data = diamonds) + geom_histogram(mapping = aes(x = price), binwidth = 50, color = "black", fill = "lightblue") 
+ scale_x_continuous(limit = c(300,2000), breaks = seq(300,2000,100)) + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) 
+ ggtitle("PRICE HISTOGRAM BETWEEN 300 & 2000")

ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = price), binwidth = 1, color = "black", fill = "lightblue")
+ scale_x_continuous(limit = c(600,610), breaks = seq(600,610,1)) +
  ggtitle("PRICE HISTOGRAM BETWEEN 600 & 610")


#summary of cut per price
by(diamonds$price, diamonds$cut, summary)
#summary of price by color
by(diamonds$price, diamonds$color, summary)
#summary of price by clarity
by(diamonds$price, diamonds$clarity, summary)
