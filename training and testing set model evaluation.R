


library(caTools)

str(data)

set.seed(123)

split <- sample.split(Y = data$x2, SplitRatio = 0.7)
training_set <- subset(data, split == TRUE)
testing_set <- subset(data, split == FALSE)

dim(training_set)
dim(testing_set)
