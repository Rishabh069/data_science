

library(ggplot2)



valid_values <- na.omit(data.frame(thetabias = arr_1, thetaone = arr_2))

ggplot(valid_values, aes(x = thetabias, y = thetaone)) +
  geom_point(alpha = 0.5) +
  geom_vline(xintercept = 0, color = "black", linetype = "dashed") + 
  geom_hline(yintercept = 0, color = "black", linetype = "dashed") + 
  labs(title = "Joint Posterior Distribution", x = "thetabias", y = "thetaone") +
  theme_minimal()
