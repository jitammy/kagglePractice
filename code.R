titanic <- read_csv("machinLearningKaggle/titanic.csv")

titanic$Pclass  = as.factor(titanic$Pclass)
titanic$Survived = as.factor(titanic$Survived)
titanic$Sex = as.factor(titanic$Sex)
titanic$Embarked = as.factor(titanic$Embarked)
ggplot(titanic, aes(x = Survived) ) + geom_bar()
prop.table(table(titanic$Survived))

ggplot(titanic, aes(x = Survived) ) + 
   theme_bw() +
   geom_bar() +
   labs(y = "passenger count",
         title = "Titanic Survival Rate"
         ) 


ggplot(titanic, aes(x = Sex, fill = Survived) ) + 
  theme_bw() +
  geom_bar() +
  labs(y = "passenger count",
       title = "Titanic Survival Rate by Sex"
  ) 

ggplot(titanic, aes(x = Pclass, fill = Survived) ) + 
  theme_bw() +
  geom_bar() +
  labs(y = "passenger count",
       title = "Titanic Survival Rate by Passenger Class"
  ) 

prop.table(table(titanic$Pclass))

ggplot(titanic, aes(x = Sex, fill = Survived)) + 
  theme_bw() +
  facet_wrap(~ Pclass) +
  geom_bar() +
  labs(y = "passenger count",
       title = "Titanic Survival Rate by Pclass and Sex"
  ) 


ggplot(titanic, aes(x=Age)) + 
  theme_bw() +
  geom_histogram(binwidth = 1) +
  labs( y= "Passenger count",
        x= "Age(binwidth = 5)", 
        title = "Titanic Age Distribution")


ggplot(titanic, aes((x=Age), fill = Survived)) + 
  theme_bw() +
  geom_histogram(binwidth = 5) +
  labs( y= "Passenger count",
        x= "Age(binwidth = 5)", 
        title = "Titanic Age Distribution by Age")

ggplot(titanic, aes(x=Survived, y = Age)) + 
  theme_bw() + 
  geom_boxplot() + 
  labs(y="Age",
       x = "Survived",
       title = "Titanic Survival Rages by Age"
       )

ggplot(titanic, aes(x=Age, fill = Survived)) +
  theme_bw() +
  facet_wrap(Sex ~ Pclass) +
  geom_density(alpha = 0.5) +
  labs(y="Age",
       x = "Survived",
       title = "Titanic Survival Rages by Age, Pclass and Sex")

ggplot(titanic, aes(x=Age, fill = Survived)) +
  theme_bw() +
  facet_wrap(Sex ~ Pclass) +
  geom_histogram(binwidth = 5) +
  labs(y="Age",
       x = "Survived",
       title = "Titanic Survival Rages by Age, Pclass and Sex")