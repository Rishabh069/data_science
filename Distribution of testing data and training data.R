
C_L1 <- result$conf.int[1]
C_L2 <- result$conf.int[2]
S_ERROR <- result$stderr


training_plot <- ggplot(training_set, aes(x = x2)) +
  stat_density(geom = "line", color = "#195f90") +  # Density line
  geom_vline(xintercept = C_L1, linetype = "dashed", color = "red") +  
  geom_vline(xintercept = C_L2, linetype = "dashed", color = "red") + 
  geom_vline(xintercept = S_ERROR, linetype = "dashed", color = "black") +  
  labs(
    title = "Distribution of Training Data",
    x = "x2",
    y = "Density"
  ) +
  theme_minimal()


print(training_plot)


testing_plot <- ggplot(testing_set, aes(x = x2)) +
  stat_density(geom = "line", color = "#195f90") +  # Density line
  geom_vline(xintercept = C_L1, linetype = "dashed", color = "red") +  # Lower confidence interval
  geom_vline(xintercept = C_L2, linetype = "dashed", color = "red") +  # Upper confidence interval
  geom_vline(xintercept = S_ERROR, linetype = "dashed", color = "black") +  # Standard error
  labs(
    title = "Distribution of Testing Data",
    x = "x2",
    y = "Density"
  ) +
  theme_minimal()


print(testing_plot)
