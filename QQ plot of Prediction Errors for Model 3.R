

variance_model3 <- 1.508888


N <- length(df$y) 


residuals_model3 <- rnorm(N, mean = 0, sd = sqrt(variance_model3))


windows() 


qqnorm(residuals_model3, 
       main = "QQ Plot of Prediction Errors for Model 3",
       col = "blue", 
       pch = 19)  
qqline(residuals_model3, col = "red", lwd = 2)  
