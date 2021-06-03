# Data Preprocessing
# - Handle Missing Values
# - Label Encoding
# - Feature Scaling
# - train test split

df <- read.csv('Data.csv')
View(df)

table(is.na(df$Age))

# NA - NOT AVAILABLE
# RM - Remove
df$Age = ifelse(is.na(df$Age),
                ave(df$Age, FUN = function(x) mean(x, na.rm=T)),
                df$Age)
View(df)

df$Salary = ifelse(is.na(df$Salary),
                ave(df$Salary, FUN = function(x) mean(x, na.rm=T)),
                df$Salary)
View(df)


df$Country <- factor(df$Country, 
                     levels = c('France','Spain','Germany'),
                     labels = c(1,2,3))

View(df)

# Standardization
df$Age <- scale(df$Age)
df$Salary <- scale(df$Salary)
View(df)


