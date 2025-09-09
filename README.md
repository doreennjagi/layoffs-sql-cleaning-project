# Tech Layoffs SQL Cleaning Project (MySQL)

## Project Overview
This project demonstrates **SQL data cleaning and exploration** on a global tech layoffs dataset, based on **Alex The Analyst’s SQL tutorial**.  

The focus is on:  
- Inspecting and understanding raw datasets  
- Cleaning inconsistent or missing data  
- Deduplicating records  
- Converting text/percentage columns to numeric  
- Preparing a clean dataset ready for analysis or visualization  

---

## Project Structure
```text
layoffs-mysql-cleaning-project/
├─ sql_scripts/
│   ├─ 01_clean_staging.sql       # Initial cleaning
│   ├─ 02_numeric_columns.sql     # Converting percentages/text to numeric
│   ├─ 03_deduplication.sql       # Removing duplicates
│   └─ 04_final_clean_table.sql   # Final clean table
├─ data/
│   ├─ raw_layoffs.csv            # Original dataset
│   └─ clean_layoffs.csv          # Cleaned dataset ready for analysis
├─ README.md

## Data Cleaning Steps
- Trim and standardize text fields
- Normalize missing or blank values
- Convert percentage columns to numeric
- Fill missing industries based on company + location
- Remove rows with no layoff information
- Deduplicate records across key columns
- Create a final clean table

---

## Exploratory Analysis
- Row counts at each stage: raw → staging → clean
- Spot-check first rows to ensure data quality
- Optional aggregates:
  - Total layoffs by month
  - Top companies by layoffs
