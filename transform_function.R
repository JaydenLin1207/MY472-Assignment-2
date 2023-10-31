# Dataset used in the function
data("iris")

# Package required in the function
library(tidyverse)

# A function enters the iris dataset and a species
# and returns the average sepal length of the selected species.
# The first argument of the function should be the iris dataset.
# The second argument of the function should be
# one of the species in the iris dataset.
sepal_length_avg <- function(data, species) {
  data_transformed <- data %>%
    filter(Species == species) %>%
    group_by(Species) %>%
    summarise(sepal_length_avg = mean(Sepal.Length))
  return(data_transformed)
}

# Test the function
sepal_length_avg(iris, "virginica")
