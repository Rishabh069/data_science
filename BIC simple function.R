
calculateBIC <- function(N, model_thetahat, likelihood_model) {
  k_model <- length(model_thetahat)  
  bic <- log(N) * k_model - 2 * likelihood_model  
  return(bic)
}
