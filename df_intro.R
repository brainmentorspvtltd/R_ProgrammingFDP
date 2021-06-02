df <- data.frame('id' = 1:4,
                 'name' = c('John','Sam','Tom','Jack'),
                 'company' = c('TCS','Infy','IBM','TCS'))
df

View(df)
df[1,'name'] = "Ravi"

# this will return first 2 columns
df[1:2]

# this will return first 2 rows and first 3 columns
df[1:2,1:3]

# datasets::mtcars
df <- mtcars
View(df)

# first 6 observations
head(df)
# last 6 observations
tail(df)

# will tell you how many rows and cols are available
dim(df)

df$mpg
df['mpg']

# df[1:3]

# 1st and 4th col
df[c(1,4)]

# 1st and 4th row, 1st and 3rd col
df[c(1,4),c(1,3)]

# it will return columns
df[seq(1,10,2)]

# it will return rows
df[seq(1,10,2),]






