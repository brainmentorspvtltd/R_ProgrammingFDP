# data("AirPassengers")
install.packages("summarytools")
install.packages("tseries")
install.packages("forecast")
install.packages("ggfortify")

library(forecast)
library(ggplot2)
library(tseries)
library(summarytools)
library(ggfortify)

df <- AirPassengers
View(df)

dfSummary(df)

start(df)
end(df)

# summary(df)

plot(df)

abline(lm(df ~ time(df)))

# Plotting Rolling statistics
  # - we can plot moving average or moving variance
# DF Test - Dickey Fuller Test
  # - statistical test for checking stationarity
  # - Null hypothesis is that the it is non-stationary

  # - Test Statistics and Critical values
  # - If test statistics is less than critical value, 
  # - then we reject null hypothesis



# df <- as.data.frame(df)
# View(df)
cycle(df)

decom_df <- decompose(df, type='multiplicative')
plot(decom_df)

# Test the stationarity
adf.test(df)
# if p_value < 0.05, we reject the null hypothesis


autoplot(df) + geom_smooth(method="lm") + 
  labs(x = "Date", y="Passengers")


# ARIMA - Auto-Regressive Integrated Moving Averages
# p - AR - Auto Regressive - lags of dependent var
# q - MA - Moving Average - lagged forecast error
# d - differences


# ACF - Autocorrelation Function
# PACF - Partial Autocorrelation Function
arima_model <- auto.arima(df)
arima_model
ggtsdiag(arima_model)

pred <- forecast(arima_model, level = c(95))
autoplot(pred)





