
library(ggplot2)

data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset1.csv") 


ggplot(data, aes(x = Time, y = x2)) +
  geom_line(color = "red", size = 1) +
  labs(title = "Time Series Plot: X2 vs. Time",
       x = "Time", y = "Output Signal X2") +
  theme_minimal()
