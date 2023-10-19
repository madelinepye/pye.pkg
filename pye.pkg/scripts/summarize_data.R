summarize_data <- function(data, group_variable, continuous_variable){
  summary_data <- data %>% 
    group_by({{group_variable}}) %>% 
    summarize(mean_data = mean({{continuous_variable}}),
              min_data = min({{continuous_variable}}),
              max_data = max({{continuous_variable}}))
  return(summary_data)
}

#This function allows one to summarize a continuous variable based on a categorical grouping variable. By doing this, one can compare the continuous data trends between the different categories of the data frame.  