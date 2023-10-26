length_terms <- function(data) {
  president_terms <- data
  president_terms$term_length <- data$end - data$start
  return(president_terms)
}

# This function can for example be used on the dataset "presidential"
# from the ggplot2 package:
library("ggplot2")
print(length_terms(presidential))