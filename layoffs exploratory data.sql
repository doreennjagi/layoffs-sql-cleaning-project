-- Exploratory Data Analysis
SELECT * 
FROM world_layoffs.layoffs_staging2;

SELECT max( total_laid_off),  max(percentage_laid_off)
FROM world_layoffs.layoffs_staging2;

SELECT * 
FROM world_layoffs.layoffs_staging2
where percentage_laid_off = 1
order by funds_raised_millions desc;

SELECT company, sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by company
order by  2 desc ;

SELECT min(`date`), max(`date`)
FROM world_layoffs.layoffs_staging2;

SELECT industry, sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by industry
order by  2 desc ;

SELECT country, sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by country
order by  2 desc ;

SELECT *
FROM world_layoffs.layoffs_staging2;
-- rolling total off
SELECT YEAR (`date`), sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by  year(`date`)
order by 1 desc ;

SELECT stage, sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by stage
order by 2 desc ;

SELECT company, avg(percentage_laid_off) 
FROM world_layoffs.layoffs_staging2
group by company
order by 2 desc ;

SELECT substring(`date`,1,7) as`MONTH` , sum(total_laid_off)
FROM world_layoffs.layoffs_staging2
where substring(`date`,1,7)is not null
group by`MONTH`
order by 1 asc;

with Rolling_total as
(
SELECT substring(`date`,1,7) as`MONTH` , sum(total_laid_off) as total_off
FROM world_layoffs.layoffs_staging2
where substring(`date`,1,7)is not null
group by`MONTH`
order by 1 asc
)

select `MONTH`, total_off
 ,sum(total_off) over(order by`MONTH` )as rolling_total
from Rolling_total;

SELECT company, sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by company
order by  2 desc ;

SELECT company, year(`date`), sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by company,  year(`date`)
order by 3 desc;

with company_year ( company, years, total_laid_off )as
(
SELECT company, year(`date`), sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by company,  year(`date`)
), company_year_rank as
(
select *,
dense_rank() over(partition by years order by total_laid_off desc) as ranking
from company_year
where years is not null
)
select *
from company_year_rank
where ranking <= 5;

SELECT industry, sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by industry
order by  2 desc ;

SELECT industry, year(`date`), sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by industry,  year(`date`)
order by 3 desc;

with industry_year (industry, years, total_laid_off )as
(
SELECT industry, year(`date`), sum( total_laid_off) 
FROM world_layoffs.layoffs_staging2
group by industry,  year(`date`)
), industry_year_rank as
(
select *,
dense_rank() over(partition by years order by total_laid_off desc) as ranking
from industry_year
where years is not null
)
select *
from industry_year_rank
where ranking <= 5;

-- rolling percentage total
SELECT YEAR (`date`), sum( percentage_laid_off) 
FROM world_layoffs.layoffs_staging2
group by  year(`date`)
order by 1 desc ;

SELECT substring(`date`,1,7) as`MONTH` , sum(percentage_laid_off)
FROM world_layoffs.layoffs_staging2
where substring(`date`,1,7)is not null
group by`MONTH`
order by 1 asc;

with Rolling_percentage as
(
SELECT substring(`date`,1,7) as`MONTH` , sum(percentage_laid_off) as percentage_off
FROM world_layoffs.layoffs_staging2
where substring(`date`,1,7)is not null
group by`MONTH`
order by 1 asc
)

select `MONTH`, percentage_off
 ,sum(percentage_off) over(order by`MONTH` )as rolling_percentage
from Rolling_percentage;

SELECT country, sum(percentage_laid_off) 
FROM world_layoffs.layoffs_staging2
group by country
order by  2 desc ;

SELECT stage, sum(percentage_laid_off) 
FROM world_layoffs.layoffs_staging2
group by stage
order by  1 desc ;

SELECT company, sum( percentage_laid_off) 
FROM world_layoffs.layoffs_staging2
group by company
order by  2 desc ;


SELECT industry, sum(percentage_laid_off) 
FROM world_layoffs.layoffs_staging2
group by industry
order by  2 desc ;

SELECT industry, year(`date`), sum( percentage_laid_off) 
FROM world_layoffs.layoffs_staging2
group by industry,  year(`date`)
order by 3 desc;

with industry_year (industry, years, percentage_laid_off)as
(
SELECT industry, year(`date`), sum(percentage_laid_off) 
FROM world_layoffs.layoffs_staging2
group by industry,  year(`date`)
), industry_year_rank as
(
select *,
dense_rank() over(partition by years order by percentage_laid_off desc) as ranking
from industry_year
where years is not null
)
select *
from industry_year_rank
where ranking <= 5;
