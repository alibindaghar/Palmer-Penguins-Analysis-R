# ---------------------------------------------------------
# Project: Palmer Penguins Data Visualization
# Author: Ali Sultan
# Date: March 2026
# Description: Exploratory Data Analysis using R to visualize 
#              the relationship between flipper length and body mass.
# ---------------------------------------------------------

# 1. Load Essential Libraries
library(palmerpenguins) # Dataset
library(ggplot2)       # Visualization
library(dplyr)         # Data Manipulation
library(tidyr)         # Data Cleaning (drop_na)

# 2. Data Cleaning
# Removing rows with missing values to ensure accurate statistical plotting
clean_penguins <- penguins %>% 
  drop_na()

# 3. Data Visualization with ggplot2
# Creating a scatter plot with regression lines for each species
ggplot(data = clean_penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species), size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, aes(color = species)) +
  labs(
    title = "Penguin Size Analysis: Flipper Length vs Body Mass",
    subtitle = "Statistical visualization performed in RStudio",
    x = "Flipper Length (mm)",
    y = "Body Mass (g)",
    color = "Penguin Species",
    shape = "Penguin Species",
    caption = "Source: Palmer Penguins Dataset | Analysis by Ali Sultan"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    legend.position = "bottom"
  )

# ---------------------------------------------------------
# End of Script
# ---------------------------------------------------------
