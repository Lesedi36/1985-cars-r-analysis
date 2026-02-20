# 1985 Cars Dataset Analysis in R

## Overview

This project explores the **1985 Cars Dataset** to identify a car for a hypothetical collection based on **engine size, horsepower, and price**.\
It demonstrates data cleaning, transformation, filtering, and sorting using R.

## Dataset

-   Source: [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/automobile)\
-   Format: CSV\
-   Contains specifications for 1985 cars, including make, engine size, horsepower, and price.

## Analysis Workflow

1.  Imported and inspected dataset\
2.  Selected and renamed relevant columns\
3.  Created a new column categorizing engines as `Large` (≥250) or `Small`\
4.  Filtered cars by high horsepower and large engines\
5.  Sorted filtered cars by ascending price\
6.  Selected the final car: **highest horsepower, large engine, lowest price**

## Skills Demonstrated

-   Data frame manipulation (`select`, `mutate`, `filter`, `arrange`)\
-   Conditional logic (`ifelse`)\
-   Feature engineering\
-   Multi-criteria decision making

## Folder Structure

1985-cars-project/ ├── data/ \# Dataset ├── scripts/ \# Analysis R script └── README.md

## Outcome

The analysis narrowed the dataset to three top-performing cars.\
The final selection combined **performance** and **cost efficiency**, highlighting the ability to make data-driven decisions.
