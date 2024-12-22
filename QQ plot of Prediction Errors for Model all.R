

variances <- c(1.534873, 1.443774, 1.508888, 1.52947, 1.517873)


N <- length(df$y) 


par(mfrow = c(2, 3)) 


for (i in 1:5) {

  residuals <- rnorm(N, mean = 0, sd = sqrt(variances[i]))
  

  qqnorm(residuals, 
         main = paste("QQ Plot of Model", i),
         col = "blue", 
         pch = 19)  
  qqline(residuals, col = "red", lwd = 2)  
}



