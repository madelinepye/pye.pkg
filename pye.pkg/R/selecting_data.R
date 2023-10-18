selecting_data <- function(data, columns){
  clean <- data %>% 
    select(all_of({{columns}}))
  return(clean)
}

#This function allows one to clean their data by selecting specific columns out of their data frame to work with and visualize.