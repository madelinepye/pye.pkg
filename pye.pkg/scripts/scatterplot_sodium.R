splot_sodium <- function(data, x_data, y_data, color_data){
  scatterplot <- data %>% 
    ggplot(aes(x = {{x_data}}, y = {{y_data}}, color = {{color_data}})) + geom_point()
  return(scatterplot)
}

#This function allows one to create a scaterplot of a data frame with the color of the points being determined based off of a catergorical variable in the data frame.