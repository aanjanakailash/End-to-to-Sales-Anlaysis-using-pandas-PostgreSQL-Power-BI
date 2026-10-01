# End-to-End Sales Analysis

This project is about exploring sales data and understanding how the business is performing. I used **Python (Pandas)** to clean the data, **SQL** to answer business questions, and **Power BI** to build an interactive dashboard.

## Project Structure

```text
End-to-End Sales Analysis/
│
├── CSV/
│   └── Raw CSV files
│
├── Data cleanin pandas/
│   └── Data cleaning work done using Pandas
│
├── Insights/
│   └── Business insights from the analysis
│
├── sql/
│   └── SQL queries used for the analysis
│
├── Dashboard
│   └── Power BI dashboard file
│
└── orders_claned
    └── Cleaned orders file
```

## Tools Used

- **Python and Pandas:** To inspect the data, handle missing or incorrect values, and prepare the data for analysis.
- **SQL (PostgreSQL / pgAdmin):** To write queries and answer business questions.
- **Power BI:** To create a dashboard and explore the results using filters.
- **Excel/CSV:** To store and work with the data.

## What I Did

### 1. Data Cleaning

I used Pandas to check the raw data and prepare it for analysis. This included working with missing values, correcting data issues, and saving the cleaned data for the next steps.

### 2. SQL Analysis

I used SQL to explore the cleaned data and answer business questions, such as:

- How is revenue changing month by month?
- Which regions contribute the most revenue?
- Which customers have higher order values?
- How are orders performing by status?

### 3. Power BI Dashboard

I created a dashboard to make the results easier to understand. It includes views for overall performance, churn analysis, and sales analysis. The dashboard also has filters to explore the data by fields such as year, city, segment, gender, and churn status.

## Dashboard Screenshots

### Home Dashboard
![Home Dashboard](screenshots/home-dashboard.png)

### Churn Analysis
![Churn Analysis Dashboard](screenshots/churn-dashboard.png)

### Sales Analysis
![Sales Analysis Dashboard](screenshots/sales-dashboard.png)

## Some Key Findings

- Revenue is **down 5.44% year over year**, although month-over-month growth is slightly positive at **0.77%**.
- **29% of customers (58 out of 200)** are marked as churned.
- **Indore** leads the cities in both revenue and profit.
- **Lucknow** has the highest average discount among the cities shown, while its profit is lower than Bhopal's despite higher revenue.
- **Corporate** has the lowest profit share among the three customer segments.

## How to View the Project

1. Open the data files in the `CSV` folder to see the source data.
2. Open the Pandas cleaning work in the `Data cleanin pandas` folder.
3. Open the SQL files in the `sql` folder to review the queries.
4. Open the Power BI file in **Power BI Desktop** to explore the dashboard.

## Note

The dashboard and findings are based on the data included in this project. The results may change if the source data is updated.
