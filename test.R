install.packages("ggplot2")
library(ggplot2)
library(dplyr)
data(mtcars)
head(mtcars)
summary(mtcars)
str(mtcars)
sum(is.na(mtcars))

# Option A: Remove rows with any missing values
mtcars_clean <- na.omit(mtcars)

# Create a new column 'kml' (1 mpg ≈ 0.425 km/l)
mtcars$kml <- mtcars$mpg * 0.425144

# Alternatively, normalize a feature (e.g., 'hp') to a 0-1 scale
mtcars$hp_norm <- (mtcars$hp - min(mtcars$hp)) / (max(mtcars$hp) - min(mtcars$hp))

# View the first few rows to see the new columns
head(mtcars)
# Basic R summary table
summary_table <- summary(mtcars)
print(summary_table)

# For a more detailed table (requires the 'psych' package)
install.packages("psych")
library(psych)
describe(mtcars)

# Load the library
library(ggplot2)

library(ggplot2)

# --- PLOT 1: Fuel Efficiency Ranking ---
# Which cars have the best MPG?
ggplot(mtcars, aes(x = reorder(row.names(mtcars), mpg), y = mpg)) +
  geom_col(fill = "steelblue") +
  coord_flip() +  # Flip for readability of car names
  labs(
    title = "Fuel Efficiency Across Car Models",
    x = "Car Model",
    y = "Miles Per Gallon (mpg)"
  ) +
  theme_minimal()

# INSIGHT 1: The Toyota Corolla and Fiat 128 are the most fuel-efficient 
# cars in the dataset, both exceeding 30 mpg. Large luxury sedans like 
# the Cadillac Fleetwood fall at the bottom.


# --- PLOT 2: Horsepower vs. Weight Correlation ---
# Is there a link between weight and power?
ggplot(mtcars, aes(x = wt, y = hp)) +
  geom_point(color = "darkorange", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "blue", linetype = "dotted") +
  labs(
    title = "Correlation: Vehicle Weight vs. Horsepower",
    x = "Weight (1000 lbs)",
    y = "Horsepower (hp)"
  ) +
  theme_bw()

# INSIGHT 2: There is a strong positive correlation between weight and 
# horsepower; as cars get heavier, they tend to have more powerful engines 
# to maintain performance.
