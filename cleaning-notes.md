# Cleaning Notes: Layoffs SQL Project

## Step-by-step breakdown of cleaning process

- ✔ Trimmed extra white space from the `company` column using `TRIM()`
- ✔ Removed duplicates using a CTE and `ROW_NUMBER()` function
- ✔ Standardized null values in `industry` and `location` columns
- ✔ Verified cleaned rows match expected count
- ✔ Exported clean version using SELECT INTO OUTFILE (MySQL)

Next steps: Use the clean dataset to create a Power BI or Excel dashboard.
