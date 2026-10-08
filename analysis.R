# Synthetic Retail Sales Analysis
# Author: Saravanan Gnanasekaran
# Purpose: Examine fictional retail sales records.
# Input: synthetic_sales.csv
sales <- read.csv("synthetic_sales.csv")

# Preview the first few rows
head(sales)

# Inspect column names and data types
str(sales)

# Check the number of rows and columns
dim(sales)

# Check for missing values
anyNA(sales)

# Summarize sales by category
category_sales <- aggregate(sales_amount ~ category,
                            data = sales,
                            FUN = sum)
category_sales

# Creating bar chart
barplot(category_sales$sales_amount,
        names.arg = category_sales$category,
        main = "Synthetic Sales by Category",
        xlab = "Product Category",
        ylab = "Sales Amount",
        col = "steelblue")