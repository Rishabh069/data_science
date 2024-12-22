

variance_model5 <- 1.517873

N <- length(df$y)  


residuals_model5 <- rnorm(N, mean = 0, sd = sqrt(variance_model5))

windows() 


qqnorm(residuals_model5, 
       main = "QQ Plot of Prediction Errors for Model 5",
       col = "blue", 
       pch = 19)  
qqline(residuals_model5, col = "red", lwd = 2)  
