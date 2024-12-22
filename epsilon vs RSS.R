
observed_data <- data.frame(
  x3= c(-1.48E+00,1.60E+00,-1.74E+00,-3.08E+00,2.44E+00),
  x4= c(-2.37E+00,-2.14E+00,-1.96E+00,-1.48E+00,1.94E+00),
  x5= c(-1.40E+00,-4.99E+00,-4.58E-01,2.60E+00,-1.58E+00),
  x2= c(-7.77E-01,-3.12E+00,-1.55E+00,-3.73E-01,1.09E+00)
)

Model2 <- cbind(1, observed_data$x4, observed_data$x3^2, observed_data$x5)
print(model2)

counter <- 0
arr_1 <- numeric(num)
arr_2 <- numeric(num)

num <- 100  
epsilon <- 285.8672  
thetabias <- -0.05929464  
thetaone <- 0.76073534    
thetatwo <- 0.03927117    
thetathree <- 0.16073311  


for (i in 1:num) {
  p1 <- runif(1,-abs(thetabias), abs(thetabias))  
  p2 <- runif(1,-abs(thetaone), abs(thetaone)) 

  abc_thetahat <- matrix(c(p1, p2, thetatwo, thetathree))
  print(abc_thetahat)

  abc_Y_Hat <- Model2 %*% abc_thetahat
  print(abc_Y_Hat)
  
  abc_RSS <- sum((observed_data$x2 - abc_Y_Hat)^2)
  print(abc_RSS)
  print(epsilon)
  
  if (abc_RSS < epsilon) {
    counter <- counter + 1
    arr_1[counter] <- p1
    arr_2[counter] <- p2
  }
}

abc_results <- data.frame(f_value = arr_1[1:counter], s_value = arr_2[1:counter])
print(abc_results)

