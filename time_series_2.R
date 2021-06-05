install.packages("jsonlite")
install.packages("curl")
install.packages("lubridate")
install.packages("flipTime")
library("jsonlite")
library(dplyr)
library(lubridate)

df <- fromJSON("https://api.covid19india.org/states_daily.json")

View(df)
options(scipen = 1000)

df_2 = data.frame(df$states_daily)
View(df_2)

confirmed <- filter(df_2, status == "Confirmed")
View(confirmed)

df_3 <- data.frame(confirmed$dateymd, confirmed$tt)
View(df_3)

df_3$confirmed.dateymd <-  as.Date(df_3$confirmed.dateymd)


# df_3$month = months(df_3$confirmed.dateymd)

xlabs = as.Date(df_3$confirmed.dateymd)
xlabs

plot(df_3$confirmed.dateymd,df_3$confirmed.tt)















