library(dplyr)
library(rpart)
library(rpart.plot)
library(caTools)

df <- read.csv('Covid_Data.csv')
View(df)

shuffle_index <- sample(1:nrow(df))
head(shuffle_index)
df <- df[shuffle_index, ]
View(df)

df$Contact_with_covid_patient = tolower(df$Contact_with_covid_patient)

table(df$Contact_with_covid_patient)

# table(df$Severity)

# df$Severity[3]

cleaned_df <- df %>%
  select(-c(Country,Gender)) %>%
  mutate(Severity = factor(Severity, labels = c(1,2,3),
                           levels = c('Mild','Moderate','Severe')),
         Contact_with_covid_patient = factor(Contact_with_covid_patient,
                                             labels = c(1,2,3),
                                             levels = c('yes','no','not known')))


# cleaned_df <- df %>%
#   select(-c(Country,Gender,Severity,Contact_with_covid_patient))
  
View(cleaned_df)

glimpse(cleaned_df)

split <- sample.split(cleaned_df$Infected, SplitRatio = 0.70)
train_set <- subset(cleaned_df, split == T)
test_set <- subset(cleaned_df,  split == F)


model <- rpart(Infected ~ ., data = train_set,
               method = 'class')

rpart.plot(model)

test_set_2 <- test_set[-10]
View(test_set_2)
View(test_set)

y_pred <- predict(model, newdata = test_set_2,
                  type = 'class')

conf_mat <- table(test_set$Infected, y_pred)
conf_mat

acc <- sum(diag(conf_mat)) / sum(conf_mat)
paste("Accuracy is : ",acc)

