# install.packages("caTools")

library(caTools)
library(ggplot2)

df <- read.csv('headbrain.csv')
View(df)
dim(df)

split <- sample.split(df$Brain.Weight.grams., SplitRatio = 0.7)
# split
train_data <- subset(df, split == T)
test_data <- subset(df, split == F)

# X <- df$Head.Size.cm.3.
# y <- df$Brain.Weight.grams.

model <- lm(formula = Brain.Weight.grams. ~ Head.Size.cm.3.,
   data = train_data)

# Multiple linear regression
# model <- lm(formula = Brain.Weight.grams. ~ .,
#             data = train_data)


summary(model)
y_pred <- predict(model, newdata = test_data)
View(y_pred)

pred_df = data.frame(actual_y = test_data$Brain.Weight.grams.,
                      pred_y = y_pred)
View(pred_df)


ggplot(train_data, aes(x = Head.Size.cm.3.,
                       y = Brain.Weight.grams.)) +
  geom_point() +
  geom_line(mapping = aes(Head.Size.cm.3.,
                          predict(model, 
                                  newdata = train_data)))


ggplot(test_data, aes(x = Head.Size.cm.3.,
                       y = Brain.Weight.grams.)) +
  geom_point() +
  geom_line(mapping = aes(Head.Size.cm.3.,
                          predict(model, 
                                  newdata = test_data)))

