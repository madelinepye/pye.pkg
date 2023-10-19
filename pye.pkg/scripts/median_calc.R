median_calc <- function(data, column){
  number <- data %>% 
    summarize(median({{column}}))
  return(number)
}

#This function allows data to be described in terms of median for a data set that is based on averages taken from individuals.