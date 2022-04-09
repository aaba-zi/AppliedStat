#question1
#a)
training <- read.csv("training.csv")
head(training)
tail(training)
#b)
training$Formal <- as.factor(training$Formal)
plot(Injury~Time, 
     data=training, pch = 19, col = Formal)
boxplot(Injury ~ Formal, data = training)
#c)
training.lm1 <- lm(Injury ~ Time * Formal, data = training)
summary(training.lm1)
anova(training.lm1)
#d)
plot(training.lm1, which = 1)
plot(training.lm1, which = 2)
plot(training.lm1, which = 4)
#e)
#f)


#question2
#a)
autompg <- read.csv("autompg.csv")
autompg$Cyl <- as.factor(autompg$Cyl)
#b)
plot(MPG~Disp, 
     data=autompg, pch = 19, col = Cyl)
# black for the 4 cylinder cars, red for the 6 cylinder cars and 
# green for the 8 cylinder cars
#c)
cars.lm1 <- lm(MPG ~ Disp * Cyl, data = autompg)
summary(cars.lm1)
anova(cars.lm1)
#d)
plot(cars.lm1, which = 1)
plot(cars.lm1, which = 2)
plot(cars.lm1, which = 4)
