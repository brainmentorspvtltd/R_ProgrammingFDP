# install.packages('dplyr')
library('dplyr')

df <- read.csv('Covid_Data.csv')
View(df)

dim(df)
summary(df)

# df['Gender']

# to get all the column names
colnames(df)

# select
head(select(df, Country))
head(select(df, c(Country, Gender, Infected)))
head(select(df, 6))
head(select(df, c(3,6)))
head(select(df, c(3:6)))

# Ignore columns
head(select(df, -c(3:10)))


# filter
head(filter(df, Country == 'India'))
head(filter(df, Country == 'India' & Gender == 'Male'))
head(filter(df, Country == 'India' & Gender == 'Male' & Age > 50))
head(filter(df, Country == 'India' & fever > 101))
head(filter(df, Country == 'India' | Country == 'China'))
head(filter(df, Contact_with_covid_patient %in% 'Not known'))
head(filter(df, Country %in% c('India','China')))


# pipelining / chaining
# ctrl+shift+m
output <- df %>% 
            select(Country, Gender, Infected) %>% 
            filter(Country == 'India')
head(output)  

output <- df %>% 
  select(1, 2, 6) %>% 
  filter(Country == 'India')
head(output)  


# distinct
distinct(df, Country)
distinct(df, Contact_with_covid_patient)

df %>% 
  select(Country, Gender, Contact_with_covid_patient) %>% 
  filter(Country == 'India') %>% 
  distinct(Gender)

# arrange - sort

temp_df <- df %>% 
  select(Country, Gender, fever, Infected) %>% 
  # arrange(fever)
  arrange(desc(fever))

head(temp_df)


# mutate - make a new column
temp_df <- df %>% 
  select(Country, Gender, fever, Infected) %>% 
  filter(Country == 'India') %>% 
  mutate(Average = mean(fever))
head(temp_df)

df %>% 
  group_by(Country, Gender) %>% 
  filter(Country == 'India') %>% 
  summarise(Average = mean(fever))
