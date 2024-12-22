



library(ggplot2)
library(tidyr)


data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset.csv")


long_data <- data %>%
  gather(key = "variable", value = "value", x1, x3, x4, x5)


ggplot(long_data, aes(x = value, y = x2, color = variable)) +
  geom_point() +
  geom_hline(yintercept = 0, color = "black", size = 1.2) +  # Add horizontal line at y = 0
  geom_vline(xintercept = 0, color = "black", size = 1.2) +   # Add vertical line at x = 0
  labs(title = "Correlation of X Inputs with X2 Output", x = "X Inputs", y = "X2 Output") +
  theme_minimal() +
  theme(
    legend.title = element_blank(),
    axis.line = element_line(color = "black", size = 1),  # Highlight axes
    axis.text = element_text(color = "black", size = 12),  # Set axis text color and size
    axis.title = element_text(color = "black", size = 14),  # Set axis title color and size
    panel.grid.major = element_blank(),  # Remove major grid lines
    panel.grid.minor = element_blank()   # Remove minor grid lines
  )


