
library(tidyverse)

generate_bias <- function(data) {
  bias <- matrix(1, nrow = nrow(data), ncol = 1)
  return(bias)
}
generateModel1 <- function(data) {
  set.seed(100)
  bias <- generate_bias(data)
  x4 <- 2 * data$x4
  x3_sq <- 3 * (data$x3^2)
  y <- bias + x4 + x3_sq
  return(cbind(Bias = bias, X4 = x4, X3_Squared = x3_sq, Y = y))
}
generateModel2 <- function(data) {
  set.seed(100)
  bias <- generate_bias(data)
  x4 <- 2 * data$x4
  x3_sq <- 3 * (data$x3^2)
  x5 <- 4 * data$x5
  y <- bias + x4 + x3_sq + x5
  return(cbind(Bias = bias, X4 = x4, X3_Squared = x3_sq, X5 = x5, Y = y))
}
generateModel3 <- function(data) {
  set.seed(100)
  bias <- generate_bias(data)
  x3 <- 2 * data$x3
  x4 <- 3 * data$x4
  x5_cubed <- 4 * (data$x5^3)
  y <- bias + x3 + x4 + x5_cubed
  return(cbind(Bias = bias, X3 = x3, X4 = x4, X5_Cubed = x5_cubed, Y = y))
}
generateModel4 <- function(data) {
  set.seed(100)
  bias <- generate_bias(data)
  x4 <- 2 * data$x4
  x3_sq <- 3 * (data$x3^2)
  x5_sq <- 4 * (data$x5^2)
  y <- bias + x4 + x3_sq + x5_sq
  return(cbind(Bias = bias, X4 = x4, X3_Squared = x3_sq, X5_Squared = x5_sq, Y = y))
}
generateModel5 <- function(data) {
  set.seed(100)
  bias <- generate_bias(data)
  x4 <- 2 * data$x4
  x1_sq <- 3 * (data$x1^2)
  x3_sq <- 4 * (data$x3^2)
  y <- bias + x4 + x1_sq + x3_sq
  return(cbind(Bias = bias, X4 = x4, X1_Squared = x1_sq, X3_Squared = x3_sq, Y = y))
}
