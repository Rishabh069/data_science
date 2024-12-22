
calculateBIC <- function(N, model_thetahat, likelihood_model) {
  k_model <- length(model_thetahat)  
  bic <- log(N) * k_model - 2 * likelihood_model  
  return(bic)
}


N <- length(df$y)  


likelihood_model1 <- -162.8162
likelihood_model2 <- -159.7569
likelihood_model3 <- -161.9625
likelihood_model4 <- -162.6399
likelihood_model5 <- -162.2593


model_thetahat1 <- c(-0.12167769, 0.88481155, 0.05485661)  
model_thetahat2 <- c(-0.05929464, 0.76073534, 0.03927117, 0.16073311)  
model_thetahat3 <- c(0.036643292, -0.114608741, 0.927307947, 0.005279506) 
model_thetahat4 <- c(-0.102226434, 0.881351300, 0.059955635, -0.009196835)  
model_thetahat5 <- c(-0.09919425, 0.88614620, -0.03576666, 0.07754541)  


bic_model1 <- calculateBIC(N, model_thetahat1, likelihood_model1)
bic_model2 <- calculateBIC(N, model_thetahat2, likelihood_model2)
bic_model3 <- calculateBIC(N, model_thetahat3, likelihood_model3)
bic_model4 <- calculateBIC(N, model_thetahat4, likelihood_model4)
bic_model5 <- calculateBIC(N, model_thetahat5, likelihood_model5)


cat("Model 1: BIC =", bic_model1, "\n")
cat("Model 2: BIC =", bic_model2, "\n")
cat("Model 3: BIC =", bic_model3, "\n")
cat("Model 4: BIC =", bic_model4, "\n")
cat("Model 5: BIC =", bic_model5, "\n")
