
calculate_thetaHat <- function(X, y) {
  X <- as.matrix(X)
  y <- as.matrix(y)
  theta_hat <- solve(t(X) %*% X) %*% t(X) %*% y
  return(as.vector(theta_hat))
}


calculate_RSS <- function(y_actual, y_predicted) {
  residuals <- y_actual - y_predicted
  RSS <- sum(residuals^2)
  return(RSS)
}


library(tidyverse)


data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset1.csv")


model1 <- function(data) {
  X <- cbind(1, data$x4, data$x3^2)   # Include intercept (1) and predictors
  y <- data$x2                       # Response variable
  theta_hat <- calculate_thetaHat(X, y)
  y_hat <- X %*% theta_hat           # Predicted values
  RSS <- calculate_RSS(y, y_hat)     # Residual Sum of Squares
  return(list(theta_hat = theta_hat, RSS = RSS))
}

model2 <- function(data) {
  X <- cbind(1, data$x4, data$x3^2, data$x5)
  y <- data$x2
  theta_hat <- calculate_thetaHat(X, y)
  y_hat <- X %*% theta_hat
  RSS <- calculate_RSS(y, y_hat)
  return(list(theta_hat = theta_hat, RSS = RSS))
}

model3 <- function(data) {
  X <- cbind(1, data$x3, data$x4, data$x5^3)
  y <- data$x2
  theta_hat <- calculate_thetaHat(X, y)
  y_hat <- X %*% theta_hat
  RSS <- calculate_RSS(y, y_hat)
  return(list(theta_hat = theta_hat, RSS = RSS))
}

model4 <- function(data) {
  X <- cbind(1, data$x4, data$x3^2, data$x5^2)
  y <- data$x2
  theta_hat <- calculate_thetaHat(X, y)
  y_hat <- X %*% theta_hat
  RSS <- calculate_RSS(y, y_hat)
  return(list(theta_hat = theta_hat, RSS = RSS))
}

model5 <- function(data) {
  X <- cbind(1, data$x4, data$x1^2, data$x3^2)
  y <- data$x2
  theta_hat <- calculate_thetaHat(X, y)
  y_hat <- X %*% theta_hat
  RSS <- calculate_RSS(y, y_hat)
  return(list(theta_hat = theta_hat, RSS = RSS))
}

l
results <- list(
  model1 = model1(data),
  model2 = model2(data),
  model3 = model3(data),
  model4 = model4(data),
  model5 = model5(data)
)


for (i in 1:5) {
  cat("\nModel", i, "Theta Hat (Coefficients):\n")
  print(results[[paste0("model", i)]]$theta_hat)
  cat("Residual Sum of Squares (RSS):\n")
  print(results[[paste0("model", i)]]$RSS)
}

