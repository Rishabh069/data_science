

variance_model2 <- 1.443774

N <- length(df$y)  


residuals_model2 <- rnorm(N, mean = 0, sd = sqrt(variance_model2))


windows()  


qqnorm(residuals_model2, 
       main = "QQ Plot of Prediction Errors for Model 2",
       col = "blue", 
       pch = 19)  
qqline(residuals_model2, col = "red", lwd = 2)  
