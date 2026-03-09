# Define the function
plot_correlation <- function(data, x_var, y_var, point_color = "darkorange") {
  ggplot(data, aes(x = .data[[x_var]], y = .data[[y_var]])) +
    geom_point(color = point_color, size = 3) +
    geom_smooth(method = "lm", se = FALSE, color = "blue", linetype = "dotted") +
    labs(
      title = paste("Correlation:", x_var, "vs.", y_var),
      x = paste(x_var, "(Units)"),
      y = paste(y_var, "(Units)")
    ) +
    theme_bw()
}

# Call the function for wt vs hp
plot_correlation(mtcars, "wt", "hp")