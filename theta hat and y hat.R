
library(tidyverse)


data <- read.csv("assignment_dataset1.csv")


regression_models_fit <- function(data) {

  results <- list()
  

  data$X3_sq <- data$x3^2
  model1 <- lm(x2 ~ x4 + X3_sq, data = data)  # Replace x2 with the target variable in your dataset
  y_hat1 <- predict(model1, newdata = data)
  theta_hat1 <- coef(model1)
  

  model2 <- lm(x2 ~ x4 + X3_sq + x5, data = data)
  y_hat2 <- predict(model2, newdata = data)
  theta_hat2 <- coef(model2)

  data$X5_cube <- data$x5^3
  model3 <- lm(x2 ~ x3 + x4 + X5_cube, data = data)
  y_hat3 <- predict(model3, newdata = data)
  theta_hat3 <- coef(model3)
  

  data$X5_sq <- data$x5^2
  model4 <- lm(x2 ~ x4 + X3_sq + X5_sq, data = data)
  y_hat4 <- predict(model4, newdata = data)
  theta_hat4 <- coef(model4)
  

  data$X1_sq <- data$x1^2
  model5 <- lm(x2 ~ x4 + X1_sq + X3_sq, data = data)
  y_hat5 <- predict(model5, newdata = data)
  theta_hat5 <- coef(model5)
  

  results$model1 <- list(theta_hat = theta_hat1, y_hat = y_hat1)
  results$model2 <- list(theta_hat = theta_hat2, y_hat = y_hat2)
  results$model3 <- list(theta_hat = theta_hat3, y_hat = y_hat3)
  results$model4 <- list(theta_hat = theta_hat4, y_hat = y_hat4)
  results$model5 <- list(theta_hat = theta_hat5, y_hat = y_hat5)
  
  return(results)
}


results <- regression_models_fit(data)


for (i in 1:5) {
  cat("\nModel", i, "Theta Hat (Coefficients):\n")
  print(results[[paste0("model", i)]]$theta_hat)
  cat("Y Hat (Predicted Values):\n")
  print(head(results[[paste0("model", i)]]$y_hat))  # Print first few predicted values
}
