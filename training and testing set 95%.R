
library(MASS)


data <- read.csv("C:/Users/aiden/Desktop/assignment_dataset1.csv")


set.seed(123)  
sample_indices <- sample(1:nrow(data), size = 0.7 * nrow(data))
training_set <- data[sample_indices, ]
testing_set <- data[-sample_indices, ]


generateModels <- function(dataset) {
  model_matrix <- model.matrix(~ x1 + x3 + x4 + x5, data = dataset)
  return(model_matrix)
}


X_training_model <- generateModels(training_set)
X_testing_model <- generateModels(testing_set)


training_thetaHat <- ginv(t(X_training_model) %*% X_training_model) %*% t(X_training_model) %*% training_set$x2


Y_training_hat <- X_training_model %*% training_thetaHat
Y_testing_hat <- X_testing_model %*% training_thetaHat


result <- t.test(
  Y_training_hat,
  Y_testing_hat,
  mu = 500, 
  alternative = "two.sided",
  conf.level = 0.95
)


print("Theta Hat (Model Coefficients):")
print(training_thetaHat)

print("T-test Results:")
print(result)
