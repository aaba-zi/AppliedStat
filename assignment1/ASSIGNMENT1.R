wine <- read.csv("wine.csv")
head(wine)
names(wine)
ncol(wine)
nrow(wine)
summary(wine$Colour)
summary(wine)
# the average price is 17.32 ang the median is a little bit lower, 
# the limitation is from 9.09 to 28.92 and there is the histogram of the price

hist(wine$Price)
hist(wine$Price, xlab = "price", main = "Histogram of Pirce")
plot(Price~Age, data = wine)
price.lm <- lm(Price~Age, data=wine)
ls()
summary(price.lm)
summary(price.lm)$coef


# Assignment
Price<-c(15.00, 14.10, 15.50, 18.50, 17.50, 19.50)
mean(Price)

wine <- read.csv("wine.csv")
View(wine)
mean(wine$Price)
aggregate(wine$Price, list(wine$Colour), FUN=mean)


hist(wine$Price)
hist(wine$Price, xlab = "Price($)", ylab = "Count", main="Wine Price")
plot(wine$Age, wine$Price)
plot(wine$Age, wine$Price, xlab="Age", ylab = "Price($)", main="Wine Prices with Age")
