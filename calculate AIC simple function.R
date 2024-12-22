calculateAIC <- function(N, model_thetahat, likelihood_model) {
  k_model <- length(model_thetahat)
  return (2 * k_model - 2 * likelihood_model)
}
