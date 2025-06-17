-- data cleaning 
SELECT * FROM world_layoffs.layoffs;

-- 1.Remove duplicates
-- 2.Standardize the Data
-- 3.Null values or blank values 
-- 4.Remove any columns 

create table world_layoffs.layoffs_staging
like world_layoffs.layoffs;

-- step 1:Remove white spaces from company names 
select company, trim(company)
from world_layoffs.layoffs_staging2;

update world_layoffs.layoffs_staging2
set company = trim( company);

-- step2: Remove duplicates using CTE + ROW_NUM

SELECT * 
FROM world_layoffs.layoffs_staging;

insert world_layoffs.layoffs_staging
select *
from world_layoffs.layoffs;

select *,
row_number() over(
partition by company , industry, location ,`date`, 
percentage_laid_off, total_laid_off, stage , country,
 funds_raised_millions ) as row_num
FROM world_layoffs.layoffs_staging;

with duplicate_cte as
(
select *,
row_number() over(
partition by company , industry, location ,`date`, 
percentage_laid_off, total_laid_off, stage , country,
 funds_raised_millions ) as row_num
FROM world_layoffs.layoffs_staging
)
delete
from duplicate_cte
where row_num > 1;

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT * 
FROM world_layoffs.layoffs_staging2
 where row_num > 1;

insert into world_layoffs.layoffs_staging2
select *,
row_number() over(
partition by company , industry, location ,`date`, 
percentage_laid_off, total_laid_off, stage , country,
 funds_raised_millions ) as row_num
FROM world_layoffs.layoffs_staging;

delete 
FROM world_layoffs.layoffs_staging2
where row_num > 1;

SELECT * 
FROM world_layoffs.layoffs_staging2;

-- Step 3: Standardizing null values `industry` and `location` columns
select distinct industry
from world_layoffs.layoffs_staging2
order by 1;

select *
from world_layoffs.layoffs_staging2
where industry like 'Crypto%';

update world_layoffs.layoffs_staging2
set industry = 'Crypto'
where industry like 'Crypto%';

select distinct country
from world_layoffs.layoffs_staging2
order by 1;

select distinct country , trim(trailing '.'  from country)
from world_layoffs.layoffs_staging2
order by 1;

update world_layoffs.layoffs_staging2
set country = trim(trailing '.'  from country)
where country like 'United States%';

select `date`,
str_to_date( `date`, '%m/%d/%Y')
from world_layoffs.layoffs_staging2;

update world_layoffs.layoffs_staging2
set `date` = str_to_date(`date`, '%m/%d/%Y');

alter table world_layoffs.layoffs_staging2
modify column `date`  date;

-- Step 4: Fill or fix null values
SELECT * 
FROM world_layoffs.layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;

select *
from world_layoffs.layoffs_staging2
where industry is null
or industry = '';

update  world_layoffs.layoffs_staging2
set industry = null
where industry  ='';

select *
from world_layoffs.layoffs_staging2
where company = 'Airbnb';

select t1.industry , t2.industry
from world_layoffs.layoffs_staging2 t1
join world_layoffs.layoffs_staging2 t2
     on t1.company = t2.company
     and t1.location = t2.location
where( t1.industry is null or t1.industry = '')
and t2.industry is not null;

update world_layoffs.layoffs_staging2 t1
join world_layoffs.layoffs_staging2 t2
     on t1.company = t2.company
     and t1.location = t2.location
set t1.industry = t2.industry     
where t1.industry is null 
and t2.industry is not null;


select *
from world_layoffs.layoffs_staging2
where company like 'Bally%';

SELECT * 
FROM world_layoffs.layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;

delete
FROM world_layoffs.layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;

-- Step 5: Verified cleaned rows matched expected count

select *
from world_layoffs.layoffs_staging2;

alter table world_layoffs.layoffs_staging2
drop column row_num;



























































