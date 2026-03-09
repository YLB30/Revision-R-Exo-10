# Revision-R-Exo-10

<h1> Exploratory Data Analysis: Vehicle Performance (mtcars) </h1>

📌 Project Overview
This project serves as a comprehensive Data Science workflow demonstration, covering everything from environment setup and version control to data transformation and visualization. Using the built-in mtcars dataset, I explored the relationships between vehicle design, engine power, and fuel efficiency.
📊 Dataset Choice
Dataset: mtcars (Motor Trend Car Road Tests)
Justification: I chose this dataset because it provides a clean, multifaceted look at performance metrics (11 variables) for 32 different car models. It is ideal for testing correlations—specifically how physical attributes like weight and engine size impact fuel economy.
🛠️ Technical Workflow
1. Project Environment & Version Control
Environment: Initialized using renv to ensure package dependency reproducibility.
Version Control: Managed via Git, with a remote repository hosted on GitHub.
Packages Used: ggplot2 for visualization and dplyr for data manipulation.
2. Data Cleaning & Transformation
A standard data-cleaning workflow was followed:
Validation: Checked for missing values using is.na() (Result: 0 NAs found).
Transformation: Created a new metric, Kilometers Per Liter (kml), derived from mpg to provide international standard units.
Normalization: Scaled the hp (Horsepower) variable to a 0-1 range to prepare for potential future modeling.
Note on Workflow: A good data-cleaning workflow must include: (1) Inspection, (2) Handling missing values/outliers, (3) Data type conversion, and (4) Documentation of all changes.
📈 Key Findings & Visualizations
1. Fuel Efficiency Leaders
Using a ranked bar chart, I identified the top-performing vehicles:
Insight: The Toyota Corolla and Fiat 128 are the most efficient models.
Trend: There is a drastic drop-off in efficiency as the number of cylinders increases; 4-cylinder engines consistently outperform 8-cylinder engines in MPG.
2. Power vs. Weight Correlation
Through a scatter plot with a linear regression trend line:
Insight: There is a strong positive correlation between vehicle weight and horsepower.
Trend: Heavier vehicles require more powerful engines, which directly correlates with the lower fuel efficiency observed in the first plot.
