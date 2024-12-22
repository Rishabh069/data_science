
library(tidyr)


data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset1.csv")


cor_x1_x2 <- cor(data$x1, data$x2)
cor_x3_x2 <- cor(data$x3, data$x2)
cor_x4_x2 <- cor(data$x4, data$x2)
cor_x5_x2 <- cor(data$x5, data$x2)


cat("Correlation between x1 and x2:", cor_x1_x2, "\n")
cat("Correlation between x3 and x2:", cor_x3_x2, "\n")
cat("Correlation between x4 and x2:", cor_x4_x2, "\n")
cat("Correlation between x5 and x2:", cor_x5_x2, "\n")

