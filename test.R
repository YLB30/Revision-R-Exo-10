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
