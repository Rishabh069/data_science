

variance_model4 <- 1.52947


N <- length(df$y) 


residuals_model4 <- rnorm(N, mean = 0, sd = sqrt(variance_model4))


windows() 


qqnorm(residuals_model4, 
       main = "QQ Plot of Prediction Errors for Model 4",
       col = "blue", 
       pch = 19)  
qqline(residuals_model4, col = "red", lwd = 2)  