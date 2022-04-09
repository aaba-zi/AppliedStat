#question1
#a)
animals <- read.csv("animals.csv")
head(animals)
tail(animals)
#b)
animals$Feed
boxplot(Weight~Feed, data = animals, pch = 19)
#c)
animals.lm1<-lm(Weight~Feed, data = animals)
summary(animals.lm1)
anova(animals.lm1)
#d)
plot(animals.lm1, which = 1)
plot(animals.lm1, which = 2)
plot(animals.lm1, which = 4)
#e)
animals.lm2<-aov(Weight~Feed, data = animals)
anova(animals.lm1)
anova(animals.lm2)
TukeyHSD(animals.lm2)
# I am confused about the models,are lm1 and lm2 the same, then why do we need to compare


# question2
#a)
health <- read.csv("health.csv")
head(health)
tail(health)
#b)
interaction.plot(health$Treatment, health$Facility, health$Days)
boxplot(Days~Treatment*Facility, col=c("white", "steelblue"), data 
        =health)
boxplot(Days~Facility*Treatment, col=c("white", "steelblue"), data 
        =health)
#c)
health.lm1<-lm(Days~Treatment*Facility, data = health)
summary(health.lm1)
anova(health.lm1)
#d)
health.lm2<-lm(Days~Treatment+Facility, data = health)
#e)
summary(health.lm2)
anova(health.lm2)
#f)
plot(health.lm2, which = 1)
plot(health.lm2, which = 2)
plot(health.lm2, which = 4)
#g)
# Can you reduce your model ever further by removing either of the main effects (i.e. can you 
# remove Facility or Treatment)?
#h)
health.lm3<-aov(Days~Treatment+Facility, data = health)
anova(health.lm3)
TukeyHSD(health.lm3)





