# 🧹📊 Tech Layoffs SQL Data Cleaning & Exploratory Analysis

This is a full-cycle data analytics project that begins with SQL-based data cleaning and ends with exploratory data analysis (EDA). Inspired by Alex The Analyst’s Bootcamp, I worked with a messy dataset of global tech layoffs to practice real-world data wrangling, cleaning, and insight generation.

> 🎯 Goal: Transform raw layoff data into a clean, analysis-ready dataset — then explore trends across industries, years, and companies using SQL.

---

## 🔍 Project Objectives

- Clean and standardize raw tech layoff data using **SQL**
- Handle duplicates, nulls, and inconsistent formatting
- Create an **analysis-ready dataset**
- Perform **exploratory data analysis** (EDA) using SQL queries
- Identify key patterns, trends, and insights

---

## 🧠 Skills & Tools Used

- SQL (MySQL/PostgreSQL)
- Data Cleaning & Transformation
- Common Table Expressions (CTEs)
- Window Functions (`ROW_NUMBER()`, `RANK()`)
- CASE logic, TRIM, IS NULL, and data standardization
- Aggregation, filtering, and exploratory queries

---

## 🧼 Data Cleaning Steps

- Removed duplicates using `ROW_NUMBER()` with CTEs
- Trimmed whitespace in `company` names
- Replaced or handled missing values in `industry` and `location`
- Standardized inconsistent values for clarity
- Exported clean dataset for analysis

---

## 📊 Exploratory Data Analysis

With the cleaned dataset, I wrote SQL queries to explore:

- 🔹 Top industries and companies with highest layoffs
- 🔹 Year-over-year trends in layoffs
- 🔹 Countries/locations most affected
- 🔹 Monthly layoff trends (optional)
- 🔹 Average layoff sizes by company

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `layoffs_raw.csv` | Original uncleaned dataset |
| `layoffs_cleaning.sql` | Full SQL script with all cleaning steps |
| 
| `eda_queries.sql` | SQL queries used for data exploration |
| `cleaning_notes.md` | Step-by-step notes explaining the cleaning process |
| `insights_summary.md` | Short summary of insights and observations from EDA |

---

## ✅ Outcomes

The cleaned dataset and exploratory queries revealed:

> 🧠 The tech industry experienced peak layoffs in 2022, with Meta, Amazon, and Google among the top contributors. Locations in the U.S. and Europe were most affected.

The project demonstrates my ability to:
- Handle raw, messy datasets
- Write clean, reusable SQL
- Draw meaningful business insights
