

library(ggplot2)
library(gridExtra)


data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset.csv") 


plot_x1 <- ggplot(data, aes(x = x1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.5, fill = "blue", color = "black") +
  labs(title = "Distribution of X1", x = "X1", y = "Density") +
  theme_minimal()

plot_x3 <- ggplot(data, aes(x = x3)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.5, fill = "blue", color = "black") +
  labs(title = "Distribution of X3", x = "X3", y = "Density") +
  theme_minimal()

plot_x4 <- ggplot(data, aes(x = x4)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.5, fill = "blue", color = "black") +
  labs(title = "Distribution of X4", x = "X4", y = "Density") +
  theme_minimal()

plot_x5 <- ggplot(data, aes(x = x5)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.5, fill = "blue", color = "black") +
  labs(title = "Distribution of X5", x = "X5", y = "Density") +
  theme_minimal()

grid.arrange(plot_x1, plot_x3, plot_x4, plot_x5, ncol = 2)
