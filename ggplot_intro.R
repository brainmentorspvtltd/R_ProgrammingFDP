# install.packages('ggplot2')
library(ggplot2)
library(dplyr)
df <- read.csv('Covid_Data.csv')
View(df)

table(df$fever)
barplot(table(df$fever))


ggplot(df, aes(x = fever)) + geom_histogram()
ggplot(df, aes(x = fever)) + geom_histogram(bins = 10)

ggplot(df, aes(x = fever)) + geom_bar()

ggplot(df, 
       aes(x = Gender, fill = Severity)) +
  geom_bar()

ggplot(df, 
       aes(x = Gender, fill = factor(Infected))) +
  geom_bar()

ggplot(df, 
       aes(x = factor(Bodypain), fill = factor(Infected))) +
  geom_bar()

# factor(df$Infected)

ggplot(df, 
       aes(x = factor(Bodypain), fill = factor(Infected))) +
  geom_bar(position = 'fill')

ggplot(df, 
       aes(x = Contact_with_covid_patient,
           fill = factor(Infected))) +
  geom_bar(position = 'fill')


ggplot(df, aes(x = factor(Infected), y = fever)) + geom_boxplot()

ggplot(df, aes(x = Contact_with_covid_patient, y = fever)) +
  geom_boxplot()


# scatter plot
ggplot(df, aes(x=Age, y=fever)) + geom_point()






