# Load the necessary libraries
library(caret)
library(randomForest)
library(e1071)
library(cluster)

# Load the dataset
data <- read.csv("data.csv")

# Split the dataset into training and test sets
set.seed(123)
train_indices <- createDataPartition(data$target, p = 0.8, list = FALSE)
train <- data[train_indices, ]
test <- data[-train_indices, ]

# Perform regression
regression_model <- train(target ~ ., data = train, method = "lm")
regression_predictions <- predict(regression_model, test)

# Perform classification
classification_model <- train(target ~ ., data = train, method = "rf")
classification_predictions <- predict(classification_model, test)

# Perform clustering
clustering_model <- kmeans(train, 3)
clustering_predictions <- predict(clustering_model, test)
