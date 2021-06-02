# Data Structures of R
# Vector - 1D Collection of elements
# Matrix - Multi-Dimensional type of data (row x column)
# DataFrame - Contain data in 2D (row x column)
# Array - Collection of similar type of data
# List - Collection of any type of data
# Factor - Collection of categorical type of data

vec <- c(12,34,11,45,54,6,8,4,67)

# Indexes start from 1
vec[1]

Slicing of data
vec[1:4]

vec[1] <- 24
vec

seq(1,10, length.out = 20)


matrix(1:9, nrow=3, ncol=3)

matrix(1:9, nrow=3, ncol=3, byrow = TRUE)

matrix(1:9, nrow=3, ncol=3, byrow = TRUE,
       dimnames = list(c('A','B','C'),
                       c('X','Y','Z')))

data <- list('id'=101, 'name'='John', 'salary'=45000)
data[1]
data$name



