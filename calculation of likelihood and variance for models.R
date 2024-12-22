
calculateVariance <- function(N, rss_model) {
  return (rss_model / (N - 1))
}

calculateLikelihood <- function(N, variance_model, rss_model) {
  return (-(N / 2) * (log(2 * pi)) - (N / 2) * (log(variance_model)) - (1 / (2 * variance_model)) * rss_model)
}

N <- length(df$y)  


RSS_Model1 <- 151.9524
RSS_Model2 <- 142.9336
RSS_Model3 <- 149.3799
RSS_Model4 <- 151.4175
RSS_Model5 <- 150.2694


Variance_Model1 <- calculateVariance(N, RSS_Model1)
Variance_Model2 <- calculateVariance(N, RSS_Model2)
Variance_Model3 <- calculateVariance(N, RSS_Model3)
Variance_Model4 <- calculateVariance(N, RSS_Model4)
Variance_Model5 <- calculateVariance(N, RSS_Model5)


Likelihood_Model1 <- calculateLikelihood(N, Variance_Model1, RSS_Model1)
Likelihood_Model2 <- calculateLikelihood(N, Variance_Model2, RSS_Model2)
Likelihood_Model3 <- calculateLikelihood(N, Variance_Model3, RSS_Model3)
Likelihood_Model4 <- calculateLikelihood(N, Variance_Model4, RSS_Model4)
Likelihood_Model5 <- calculateLikelihood(N, Variance_Model5, RSS_Model5)


cat("Model 1: Variance =", Variance_Model1, ", Log-Likelihood =", Likelihood_Model1, "\n")
cat("Model 2: Variance =", Variance_Model2, ", Log-Likelihood =", Likelihood_Model2, "\n")
cat("Model 3: Variance =", Variance_Model3, ", Log-Likelihood =", Likelihood_Model3, "\n")
cat("Model 4: Variance =", Variance_Model4, ", Log-Likelihood =", Likelihood_Model4, "\n")
cat("Model 5: Variance =", Variance_Model5, ", Log-Likelihood =", Likelihood_Model5, "\n")

