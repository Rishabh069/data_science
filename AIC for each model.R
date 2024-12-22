
calculateAIC <- function(N, model_thetahat, rss_model) {
  k_model <- length(model_thetahat) 
  sigma_hat_sq <- rss_model / (N - 1)  
  log_likelihood <- -(N / 2) * (log(2 * pi) + log(sigma_hat_sq) + (rss_model / N)) 
  aic <- 2 * k_model - 2 * log_likelihood  
  return(aic)
}


N <- length(df$y)  


rss_model1 <- 151.9524
rss_model2 <- 142.9336
rss_model3 <- 149.3799
rss_model4 <- 151.4175
rss_model5 <- 150.2694


model_thetahat1 <- c(-0.12167769, 0.88481155, 0.05485661) 
model_thetahat2 <- c(-0.05929464, 0.76073534, 0.03927117, 0.16073311)  
model_thetahat3 <- c(0.036643292, -0.114608741, 0.927307947, 0.005279506) 
model_thetahat4 <- c(-0.102226434, 0.881351300, 0.059955635, -0.009196835)  
model_thetahat5 <- c(-0.09919425, 0.88614620, -0.03576666, 0.07754541) 


aic_model1 <- calculateAIC(N, model_thetahat1, rss_model1)
aic_model2 <- calculateAIC(N, model_thetahat2, rss_model2)
aic_model3 <- calculateAIC(N, model_thetahat3, rss_model3)
aic_model4 <- calculateAIC(N, model_thetahat4, rss_model4)
aic_model5 <- calculateAIC(N, model_thetahat5, rss_model5)


cat("Model 1: AIC =", aic_model1, "\n")
cat("Model 2: AIC =", aic_model2, "\n")
cat("Model 3: AIC =", aic_model3, "\n")
cat("Model 4: AIC =", aic_model4, "\n")
cat("Model 5: AIC =", aic_model5, "\n")

