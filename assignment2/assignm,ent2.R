# question1
# (a)
poverty <- read.csv("poverty.csv")
head(poverty)
tail(poverty)
# (b)
plot(poverty$Dep, poverty$Cime,
     xlab = "deprivation score",
     ylab = "crime",
     main = "the relationship between deprivation and the crime")
hist(poverty$Crime, xlab = "Crime", ylab = "Percentage", main="Crime percentage")
# From the first graph we can see there is not a strong relationship between the deprivation score of poverty in the State
# and the percentage of people who have experienced crime, 
# From the histogram we can see there is not a approximate normal distribution

# (c)
poverty.lm1<-lm(Crime ~ Dep, data = poverty)

# (d)
summary(poverty.lm1)
#  the percentage of people who have experienced crime = 0.4931 * deprivation score of poverty + 0.4062
# there is not such a strong linear relationship between poverty and crime


# (e)
plot(poverty.lm1, which = 1)
# Residuals vs Fitted detects the linearity
plot(poverty.lm1, which = 2)
# Normal Q-Q detects normality
plot(poverty.lm1, which = 4)
# Cook's distance to see if there is any outliers.

# (f)
# crime = 0.4931 * Dep + 0.4062
# when a deprivation score of 10 
# crime = 0.4931 * 10 + 0.4062 = 5.3372

# (g)
pred<-data.frame(Dep=c(10,15,20))
predict(poverty.lm1, pred, interval = "prediction")


# question2
# (a)
airquality <- read.csv("airquality.csv")
head(airquality)
tail(airquality)
plot(airquality$Time, airquality$Pollution)
hist(airquality$Pollution)
# from the scatter plot, we can see there is a negative relationship between pollution and time
# from the histogram, we can see there is not obvious bell shape.

# (b)
air.lm1 <- lm(Pollution~Time, data = airquality)
summary(air.lm1)
# the relationship between pollution and time is
# pullution = -0.12267 * time + 15.78676
# then the time is 0, there are 15.78676 pollution
# As one unit increase in time, there is a decrease in 0.12267 in pollution

# (c)
plot(poverty.lm1, which = 1)
plot(poverty.lm1, which = 2)
plot(poverty.lm1, which = 4)
# comments?
# the Cook's distance measures the change in the coefficients from deleting a single observation
# when Cook's distance is greater than 0.4, there is a dodgy

# (d)
air.lm2<-lm(Pollution~Time+I(Time^2), data = airquality) 
summary(air.lm2)

# (e)
# Does the summary output suggest you can reduce the quadratic model to the simpler linear model?

# (f)
# residual plots
plot(poverty.lm1, which = 1)
plot(poverty.lm1, which = 2)
plot(poverty.lm1, which = 4)

# (g)
x<-airquality$Time
plot(Pollution~Time, data = airquality)
lines(airquality$Time[x], fitted(air.lm1)[x], lwd=2)
lines(airquality$Time[x], fitted(air.lm2)[x], lwd=2, col="blue")
# quadratic model performs better is because it matched the observations on the tails.
