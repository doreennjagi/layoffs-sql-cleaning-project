# Tech Layoffs Data Analysis — Product Insights Case Study

## 1. Objective & Questions
- What trends can we surface about layoffs across time, industry, and region?
- Can we derive actionable insights for stakeholders (e.g., companies, policymakers)?

## 2. Metrics Defined
| Metric | Description |
|--------|-------------|
| Quarterly Layoff Count | Total layoffs per quarter |
| Industry Layoff Rate | Layoffs relative to total workforce (if available) |
| Regional Layoff Share | Percentage share of layoffs by region |

## 3. Data Pipeline
- `layoffs_raw.csv` → cleaned via `layoffs_cleaning.sql`  
- Cleaning steps: dedupe, trim, standardize, null handling  
- Final dataset stored as `layoffs_clean.csv`

## 4. Analytical Methods
- Time-series trends (monthly/quarterly)  
- Top industries, companies, and regions  
- Cohort & segment comparisons (simulated A/B contrasts)

## 5. Visual Dashboards

  - **Trend over Time** chart  
  - **Industry Comparison** bar chart  
  - **Regional Heatmap**

## 6. Insights & Recommendations
- Layoffs peaked in …  
- Industries most affected …  
- Suggested tactical responses …

## 7. Context & Limitations
- Data may lack …  
- External factors not captured …

## 8. Next Steps
- Incorporate workforce size for rate calculations  
- Add qualitative data (e.g., media sentiment analysis)  
- Build predictive modeling with economic indicators
