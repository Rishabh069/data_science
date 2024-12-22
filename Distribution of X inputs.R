
library(ggplot2)
library(reshape2)


data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset1.csv")


data_long <- melt(data, measure.vars = c("x1", "x3", "x4", "x5"))


ggplot(data_long, aes(x = value, fill = variable)) +
  geom_histogram(aes(y = ..density..), alpha = 0.6, position = "identity", bins = 30) +
  labs(
    title = "Distribution of X Inputs",
    x = "X Variables",
    y = "Density"
  ) +
  theme_minimal() +
  theme(
    text = element_text(size = 14),
    plot.title = element_text(hjust = 0.5)
  ) +
  scale_fill_manual(values = c("#FF9999", "#99CC66", "#66CCCC", "#CC99FF"))

