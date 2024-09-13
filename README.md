# Correlation-Matrix-Analysis-in-R

## Overview

This repository contains an R script for generating a **Correlation Matrix** and visualizing the relationships between numeric variables. Correlation matrices are useful for identifying the strength and direction of linear relationships between variables in a dataset. The script uses the **corrplot** package to create both basic and significance-filtered correlation plots.

## Why a Correlation Matrix?

Correlation matrices provide a clear visual representation of how different variables are related. This can be particularly useful when you have many interrelated variables, such as in environmental, biological, or ecological datasets. A correlation matrix helps to quickly identify which variables move together (positive correlation) or in opposite directions (negative correlation).

### Data Structuring

To run this analysis effectively:
- **Numeric Data**: All data included in the correlation matrix must be numeric.
- **Missing Data**: Any missing data is handled by omitting rows with `NA` values, ensuring that only complete cases are used in the correlation calculations.

### Repository Content

This repository contains one script that performs the complete correlation matrix analysis, including both basic and significance-filtered correlation plots.

- **correlation_matrix_analysis.R**: This script performs the following tasks:
  - **Data Preparation**: Cleans the dataset by removing rows with missing values and converting character columns to numeric.
  - **Correlation Matrix Creation**: Generates the correlation matrix using `cor()`.
  - **Significance Testing**: Calculates the p-values for each correlation to highlight statistically significant relationships.
  - **Plotting**: Visualizes the correlation matrix using the `corrplot()` function, both with and without significance filtering.

### Getting Started

To use this repository:

1. **Clone the repository** to your local machine.
2. **Install the required R libraries**:
   - Run the following commands in R to install the necessary packages:
     ```r
     install.packages("corrplot")
     install.packages("dplyr")
     install.packages("ggplot2")
     install.packages("RColorBrewer")
     ```
3. **Modify the file path**: Adjust the file path in the script to point to your dataset.
4. **Run the script**: The script will:
   - Clean your dataset.
   - Generate a correlation matrix.
   - Visualize both a full correlation plot and a plot showing only statistically significant correlations.

### Results and Visualizations

Running the script will generate two main visual outputs:

1. **Full Correlation Plot**: Shows all the correlations between the selected variables.
2. **Significance-Filtered Plot**: Displays only correlations that are statistically significant, based on the chosen significance level (p-value < 0.05).

Both plots use the **RdBu** color palette from the **RColorBrewer** package, but you can easily customize the colors by changing the `col` argument.

### Customization

- **Color Palette**: You can modify the color palette in the `corrplot()` function using the `RColorBrewer` library. For example, `RdBu` can be replaced with `"Blues"`, `"Greens"`, or another palette.
- **Significance Threshold**: The `sig.level` parameter allows you to adjust the p-value threshold for significance filtering. The default is set to `0.05`.

### Contributing

Contributions to improve or extend the script are welcome. Please fork the repository and submit pull requests with your enhancements.

---

## Acknowledgments

Thanks to the contributors and users of the **corrplot** and **RColorBrewer** packages, as well as the scientific community for continued support and insights into data visualization and correlation analysis.
