# Load necessary libraries
library(ggplot2)
library(tidyr)
source('hw.R')

# Assuming your imported data frame is named fs(Federal spending)
# Create the data frame (example, adjust as necessary)
fs <- data.frame(
  Year = c(1966, 1975, 1985, 1995, 2005, 2015),
  Interest = c(7, 7, 13.7, 15.3, 7.4, 6.1),
  Medicare = c(0, 3.9, 6.6, 10.5, 11.9, 14.5),
  Medicaid = c(0, 2.1, 2.4, 5.9, 7.4, 9.5),
  Social_Security = c(15.1, 19.1, 19.7, 22, 21, 23.9),
  Income_Security = c(3.8, 8.7, 5.5, 7.7, 8, 8.1),
  Other_Mandatory = c(6.6, 11.7, 8.2, 2.7, 5.1, 6.3),
  Military_Defense = c(43.9, 26.4, 26.7, 18, 20, 15.8),
  Other_Domestic = c(19, 19, 15.5, 16.8, 17.8, 14.7),
  Other_Intl = c(4.2, 2.1, 1.7, 1.1, 1.4, 1.2)
)

# Reshape the data to long format
fs_long <- pivot_longer(fs, cols = -Year, names_to = "Topic", values_to = "Percentage")

  # Plot the data in Line Graph
  ggplot(fs_long, aes(x = Year, y = Percentage, color = Topic)) +
    geom_line(size = 1) +
    geom_point(size = 2) +
    labs(title = "Trends in Federal Spending",
         x = "Year",
         y = "Percentage") +hw +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Plot the data in Scatter plot
ggplot(fs_long, aes(x = Year, y = Percentage, color = Topic)) +
  geom_point(size = 3) +
  labs(title = "Trends in Federal Spendings",
       x = "Year", y = "Percentage") + hw





