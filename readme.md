# 🧹 Layoffs SQL Data Cleaning Project

This project is part of my data analytics portfolio, based on Alex The Analyst’s Bootcamp. I worked with a messy dataset on tech industry layoffs and cleaned it using SQL.

## 🔍 Objective
Prepare the dataset for further analysis by handling duplicates, inconsistent formatting, and null values using SQL.

## 🧠 Skills & Tools
- SQL (MySQL / PostgreSQL)
- Data Cleaning & Transformation
- CTEs, Window Functions, CASE, TRIM, IS NULL handling

## 🧼 Cleaning Steps Included:
- Removed duplicates using `ROW_NUMBER() OVER()`
- Trimmed white space in company names
- Replaced or filled null values in `industry` and `location`
- Standardized formatting for industries and locations
- Exported final cleaned data

## 📁 Files
- `layoffs_raw.csv` → original messy dataset
- `cleaned_layoffs.csv` → final cleaned dataset (optional)
- `layoffs_cleaning.sql` → SQL script for all cleaning steps
- `cleaning_notes.md` → detailed documentation of each cleaning step

## ✅ Outcome
The dataset is now analysis-ready and can be used to explore trends in layoffs by year, company, or industry.

## 📊 Sample Insight (to add if you want):
> In 2022, the tech industry saw the highest layoffs with over 150,000 affected employees. The top 3 companies by layoffs were Meta, Amazon, and Google.

## 📌 Source
Dataset from Alex The Analyst Bootcamp (YouTube Project)

---
