# Example R script for Git tutorial
# Alice Lepissier 
# alepissier@bren.ucsb.edu

## ## ## ## ## ## ## ## ## ## ##
# INDEX                     ####
## ## ## ## ## ## ## ## ## ## ##
# Preamble
# Plotting penguin data



## ## ## ## ## ## ## ## ## ## ##
# PREAMBLE                  ####
## ## ## ## ## ## ## ## ## ## ##

library(ggridges)
library(here)
library(palmerpenguins)
library(tidyverse)



## ## ## ## ## ## ## ## ## ## ##
# PLOTTING PENGUIN DATA     ####
## ## ## ## ## ## ## ## ## ## ##

summary(penguins)

viz <- ggplot(penguins, 
              aes(x = flipper_length_mm, y = species, fill = species)) +
  geom_density_ridges() +
  theme_minimal() +
  theme(legend.position = "none") +
  labs(title = "Distribution of penguin flipper length")
ggsave(here("Figures", "Flipper-length.png"),
       width = 6, height = 5, units = "in")

viz <- ggplot(penguins, 
       aes(x = bill_length_mm, y = bill_depth_mm, color = species)) + 
  geom_point() +
  theme_minimal() +
  labs(title = "Length and depth of penguin bills")
ggsave(here("Figures", "Bill-features.png"),
       width = 6, height = 5, units = "in")

#this is a comment

## ## ## ## ## ## ## ## ## ## ##
# ADD YOUR OWN CODE BELOW   ####
## ## ## ## ## ## ## ## ## ## ##
#testing save