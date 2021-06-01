temperature <- c(34,40,28,38,37,29,40)
barplot(temperature)

barplot(temperature, main = "Temp of week",
        xlab = "Day",
        ylab = "Temp",
        names.arg = c("Sun", "Mon", "Tue", "Wed",
                      "Thu", "Fri", "Sat"),
        col = "red")

barplot(temperature, main = "Temp of week",
        xlab = "Temp",
        ylab = "Day",
        names.arg = c("Sun", "Mon", "Tue", "Wed",
                      "Thu", "Fri", "Sat"),
        col = "red",
        horiz = T)

pie(temperature)
