# Load necessary libraries
library(dplyr)
library(tidyr)
library(corrplot)
library(ggplot2)
library(RColorBrewer)

# Read in the data (replace the file path with your own)
metadata <- read.csv("/Users/yourname/path/to/your/data.csv")

# Ensure all columns are numeric and remove rows with NA values
metadata[metadata == "#N/A"] <- NA
metadata <- na.omit(metadata)
metadata <- metadata %>%
  mutate(
    Richness = as.numeric(Richness),
    Evenness = as.numeric(Evenness),
    Shannons = as.numeric(Shannons)
  )

# Select the columns you want to include in the correlation matrix
metadata_selected <- metadata %>%
  select(Adaptive_Score, Biomass, `percent_clay`, `percent_sand`, `percent_silt`, pH, total_c, maom_c, pom_c, 
         total_n, maom_n, pom_n, fmaoc, c_n_ratio, Richness, Evenness, Shannons)

# Create the correlation matrix
cor_matrix <- cor(metadata_selected, use = 'pairwise.complete.obs')

# Basic correlation plot (upper triangle)
corrplot(cor_matrix, type = "upper")

# Combine with a significance test (from the corrplot package)
p.mat <- cor.mtest(metadata_selected, conf.level = .95)$p

# Define the color palette you want to use (e.g., RdBu)
col <- brewer.pal(n = 11, name = "RdBu")

# Rerun the correlation plot, including only significant results
corrplot(cor_matrix, type = "upper", p.mat = p.mat, sig.level = 0.05, insig = "blank", 
         method = 'square', col = col, tl.col = "black")
