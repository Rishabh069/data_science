
library(ggplot2)


data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset1.csv") 


ggplot(data, aes(x = Time, y = x1)) +
  geom_line(color = "blue", size = 1) +
  labs(title = "", x = "Time", y = "X1") +
  theme_minimal()


ggplot(data, aes(x = Time, y = x3)) +
  geom_line(color = "black", size = 1) +
  labs(title = "", x = "Time", y = "X3") +
  theme_minimal()


ggplot(data, aes(x = Time, y = x4)) +
  geom_line(color = "orange", size = 1) +
  labs(title = "", x = "Time", y = "X4") +
  theme_minimal()


ggplot(data, aes(x = Time, y = x5)) +
  geom_line(color = "purple", size = 1) +
  labs(title = "", x = "Time", y = "X5") +
  theme_minimal()

