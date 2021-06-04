df <- read.csv('Social_Network_Ads.csv')

df <- df[3:5]
View(df)

df$Purchased <- factor(df$Purchased,
                       levels = c(0,1))

library(caTools)

split <- sample.split(df$Purchased, SplitRatio = 0.75)
training_set <- subset(df, split == T)
test_set <- subset(df, split == F)

training_set[-3] <- scale(training_set[-3])
test_set[-3] <- scale(test_set[-3])

# will be used to implement decision tree
library(rpart)
# will be used to plot the decision tree
library(rpart.plot)

model <- rpart(formula = Purchased ~ ., 
      data = training_set)

y_pred <- predict(model, newdata = test_set[-3], type='class')

# confusion matrix
table(test_set[,3], y_pred)


plot(model)
text(model)


rpart.plot(model)






