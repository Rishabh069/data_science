
calculateVariance <- function(N, rss_model) {
  return (rss_model / (N - 1))
}
calculateLikelihood <- function(N, variance_model, rss_model) {
  return (-(N / 2) * (log(2 * pi)) - (N / 2) * (log(variance_model)) - (1 / (2 * variance_model)) * rss_model)
}
N <- length(df$y)
Variance_Model1 <- calculateVariance(N, RSS_Model1) 
Likelihood_1 <- calculateLikelihood(N, Variance_Model1, RSS_Model1)  
