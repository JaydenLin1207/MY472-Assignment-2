# Dataset used in the function
data("iris")

# Package required in the function
library(tidyverse)

# A function enters the iris dataset
# and returns the average sepal length of the three species.
# The  argument of the function should be the iris dataset.
sepal_length_avg <- function(data) {
  data_transformed <- data %>%
    group_by(Species) %>%
    summarise(sepal_length_avg = mean(Sepal.Length))
  return(data_transformed)
}

# Test the function
sepal_length_avg(iris)
