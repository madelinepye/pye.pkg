#'Creating a linear model of data
#'
#'This function allows one to create a linear model of a data frame with color variation of the scatterplot points based on a categorical variable in the data and specifically purple and pink coloring for the linear model.
#'
#'@param data Where the data is selected from (data frame)
#'@param x_var The column of the data that serves as the x-axis
#'@param y_var The column of the data that serves as the y-axis
#'@param color The column of data that will determine bar colors
#'@return The visual graph with the linear model
#'
#'@export


lm_plot <- function(data, x_var, y_var, color){
      lm_plot <- ggplot(data, aes(x = {{x_var}}, y = {{y_var}}, color = {{color}})) + geom_point()
      lm_plot1 <- lm_plot + geom_smooth(method = "lm", color = "purple", linewidth = 0.5, fill = "pink")
      return(lm_plot1)
}
