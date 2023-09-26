remove_nas <- function(data, columns){
  clean <- data %>% 
    na.omit(data) %>% 
    select(all_of({{columns}}))
  return(clea)}

# make sure to set a variable equal to the column names that you want to select for