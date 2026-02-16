/* ================
   Data Cleaning
   ================*/

-- Q1: Remove invalid records with missing transaction quantity
delete from retailsales
where customer_id in (64,42,137)
and quantiy is null;

-- Q2: Update missing age values with default value
update retailsales
set age = 18
where age is null;
