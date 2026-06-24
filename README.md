# Telecom Customer Churn Analysis using Python, MySQL & Power BI

## Project Overview

This project analyzes customer churn in a telecom company using Python, MySQL and Power BI. The objective is to identify factors that contribute to customer churn and provide actionable business insights to improve customer retention.

## Project Workflow

1. Data Collection
2. Data Cleaning and Preprocessing
3. Exploratory Data Analysis (EDA)
4. Machine Learning Model Development
5. SQL-Based Business Analysis
6. Interactive Power BI Dashboard Creation

## Tools and Technologies

* Python

  * Pandas
  * NumPy
  * Matplotlib
  * Seaborn
  * Scikit-learn

* MySQL

* Power BI

* Jupyter Notebook

## Dataset Information

Dataset: Telecom Customer Churn Dataset

Original Dataset Size:

* 7043 rows
* 21 columns

Cleaned Dataset Size:

* 7032 rows
* 21 columns

## Data Cleaning

The following preprocessing steps were performed:

* Removed duplicate records
* Handled missing values
* Corrected data types
* Performed feature encoding
* Prepared data for machine learning and analysis

## Exploratory Data Analysis

Key findings:

* Customers with month-to-month contracts showed the highest churn.
* Electronic check users were more likely to churn.
* Customers without tech support had higher churn rates.
* Fiber optic was the most commonly used internet service.

## Machine Learning

A churn prediction model was built to classify customers as churned or retained.

Steps:

* Feature Selection
* Train-Test Split
* Model Training
* Model Evaluation
* Customer Risk Segmentation

## SQL Analysis

Business questions answered using MySQL:

* Total number of customers
* Number of churned customers
* Churn rate calculation
* Contract type analysis
* Payment method analysis
* Internet service distribution
* Tech support impact on churn

## Power BI Dashboard

Dashboard Features:

* KPI Cards

  * Total Customers
  * Churned Customers
  * Churn Rate
  * Average Monthly Charges

* Customer Churn by Contract Type

* Customer Churn by Payment Method

* Customer Distribution by Internet Service Type

* Customer Churn by Tech Support

Interactive Filters:

* Gender
* Senior Citizen
* Dependents
* Paperless Billing

## Key Business Insights

1. Month-to-month customers are more likely to churn.
2. Electronic check users have higher churn rates.
3. Customers without tech support are at greater risk of churn.
4. Long-term contracts significantly reduce churn.
5. Fiber optic is the most widely used internet service.

## Project Structure

```text
Telecom-Customer-Churn-Analysis/

├── data/
│   ├── telecom_churn_original.csv
│   └── telecom_churn_cleaned.csv
│
├── notebooks/
│   └── Telecom_Churn_Analysis.ipynb
│
├── sql/
│   └── churn_analysis_queries.sql
│
├── dashboard/
│   └── dashboard.png
│
└── README.md
```

## Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, MySQL, and Power BI. The analysis identified major churn drivers and provided insights that can help telecom companies improve customer retention and business performance.
