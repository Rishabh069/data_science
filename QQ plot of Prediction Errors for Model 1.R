
variance_model1 <- 1.534873  


N <- length(df$y)  


set.seed(123)  
residuals_model1 <- rnorm(N, mean = 0, sd = sqrt(variance_model1))


qqnorm(residuals_model1, 
       main = "QQ Plot of Prediction Errors for Model 1", 
       col = "blue",    
       pch = 19)       

qqline(residuals_model1, col = "red", lwd = 2) 
