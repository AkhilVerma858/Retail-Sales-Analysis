/* ========================
    Data Understanding
   ======================== */

-- Q1: Retrieve the complete retail sales dataset for initial inspection
select * from retailsales;

-- Q2: What is the total number of sales transactions in the dataset?  -- 2000 rows
select count(*) from retailsales; 

-- Q3: How many unique customers have made purchases? --155
select count(distinct customer_id) from retailsales; 

-- Q4: What are the distinct product categories available? - 3 distinct products
select distinct category as Product_Catogry from retailsales;

-- Q5: Identify records with missing or null values in critical columns
select *
from retailsales
where 
transactions_id is null
or sale_date is null
or Sale_time is null
or Customer_id is null
or Gender is null
or Age is null
or category is null
or quantiy is null
or price_per_unit is null
or Cogs is null
or Total_sale is null;

-- Q6: What are the minimum, maximum, and average quantities sold per transaction?

select min(r.quantiy) as min_qty,max(r.quantiy) as mz_qty, round(avg(r.quantiy),2) as avg_qty
from retailsales r;

-- Q7: Check duplicate records
select count(distinct transactions_id)
from retailsales;


--Q8: How are customers distributed across age categories by gender?
select gender,
    case 
        when age <= 18 then 'Kid'
        when age <=45 then 'Young'
        else 'Old'
        end as "Age_Category",
        count(*)
from retailsales r
group by gender,case 
        when age <= 18 then 'Kid'
        when age <=45 then 'Young'
        else 'Old'
        end
order by gender;

--Q9: What is the customer count and age distribution by gender?
select gender,min(age),max(age),count(*)
from retailsales
group by gender;


-- Q10: What is the price range (minimum and maximum) for each product category? min is 25 and max in 500
SELECT category, min(price_per_unit), max(price_per_unit)
from retailsales
group by category;




-- Q11: Classify customers as New or Repeat based on purchase frequency

select
    case
        when total_orders = 1 then 'New Customer'
        else 'Repeated Customer'
        end as customer_type,
        count(*)
from (
select customer_id,
    count(transactions_id) as total_orders
from retailsales
    group by customer_id
    )
group by 
    case
        when total_orders = 1 then 'New Customer'
        else 'Repeated Customer'
        end ;