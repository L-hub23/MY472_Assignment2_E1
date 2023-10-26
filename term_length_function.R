length_terms <- function(data, colours = FALSE) {
  president_terms <- data
  # Adding term_length column showing the time difference 
  # between the start and end of term:
  president_terms$term_length <- data$end - data$start
  if (colours == TRUE) {
    # Adding column "party_colors" with Red for Republican and Blue for Democrats
    president_terms$party_colors <- ifelse(president_terms$party == "Republican", "Red", "Blue")
  }
  return(president_terms)
}

# This function can for example be used on the data set "presidential"
# from the ggplot2 package:
library("ggplot2")
print(length_terms(presidential, colours = TRUE))