/* ======================
    growth analysis
    =====================*/
    
    
-- Q1: What is the monthly average price trend for each product category?
select  category,
    extract(year from sale_date) as sales_year,
    extract(month from sale_date) as sales_month,
    round(avg(price_per_unit),0) as avg_price,
    sum(total_sale)
from retailsales r
where category = 'Electronics'
GROUP by 
    category,
    extract(year from sale_date),
    extract(month from sale_date)
order by sales_year,
    sales_month;




-- Q2: Identify the best-selling product category for each month using ranking
select * from (
select  category,
    extract(year from sale_date) as sales_year,
    extract(month from sale_date) as sales_month,
    sum(total_sale) as total_revenue,
    Dense_rank() 
        over(
            PARTITION by extract(year from sale_date), 
            extract(month from sale_date) 
            order by sum(total_sale) DESC
            ) as rnk
from retailsales r
GROUP by category,
    extract(year from sale_date),
    extract(month from sale_date)
order by extract(year from sale_date),
    extract(month from sale_date),
    total_revenue desc
    )
    where rnk=1
    order by category,total_revenue desc;


-- Q3: Calculate Year-over-Year (YoY) revenue growth percentage
select * from retailsales;
----- Yoy growth is 1.34%
select 
sales_year,
yearly_total_revenue,
prev_year_revenue,
round((yearly_total_revenue - prev_year_revenue)/prev_year_revenue*100,2) as yoy_growth_percent
from (
select 
    extract(year from sale_date) as sales_year, 
    sum(total_sale) as yearly_total_revenue,
    lag(sum(total_sale))
        over (order by extract(year from sale_date)) as prev_year_revenue
from retailsales
group by extract(year from sale_date)
);





--- -- Q24: Calculate Month-over-Month (MoM) revenue growth percentage
select * from retailsales;
----- Yoy growth is 1.32%
select 
sales_year,
year_month_total_revenue,
prev_year_month__revenue,
round(
    (year_month_total_revenue - prev_year_month__revenue)/prev_year_month__revenue*100
    ,2
    ) 
    as yoy_growth_percent
from (
select 
    extract(year from sale_date) as sales_year, 
    extract(month from sale_date) as sales_month, 
    sum(total_sale) as year_month_total_revenue,
    lag(sum(total_sale))
        over (
            order by 
                extract(year from sale_date),
                extract(month from sale_date)
                ) as prev_year_month__revenue
from retailsales
group by extract(year from sale_date),
extract(month from sale_date)
);












