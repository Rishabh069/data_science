


library(ggplot2)


data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset1.csv") 


ggplot(data, aes(x = x2)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.5, fill = "green", color = "black", alpha = 0.5) +
  geom_density(color = "black", size = 2) +  # Add density line (pen-like line)
  labs(title = "Distribution of X2", x = "X2", y = "Density") +
  theme_minimal()

