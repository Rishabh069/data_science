
calculate_thetaHat <- function(model, y) {
  theta_hat <- solve(t(model) %*% model) %*% t(model) %*% y
  return(theta_hat)
}
