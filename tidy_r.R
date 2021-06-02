install.packages('tidyr')
library('tidyr')

View(mtcars)

mtcars$cars <- rownames(mtcars)
View(mtcars)

# wide to long
mtcars_new <- mtcars %>% gather(attribute, value, -cars)
View(mtcars_new)

# long to wide
mtcars_2 <- mtcars_new %>% spread(attribute, value)
View(mtcars_2)
