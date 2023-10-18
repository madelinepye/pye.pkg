bargraph_plot <- function(data, x_var, y_var, color, title, x_title, y_title){
  bar_plot <- ggplot(data, mapping = aes (x = {{x_var}}, y = {{y_var}}, fill = {{color}})) + geom_col()
  bar_plot1 <- bar_plot + labs(title = title, x = x_title, y = y_title)
  return(bar_plot1)
}

#This function allows one to create a bar graph with colored bars along with editable title and axes titles.