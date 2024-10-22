-- showing all table details

SELECT * FROM sales.customers;
SELECT * FROM sales.transactions;
SELECT * FROM sales.products;
SELECT * FROM sales.markets;
SELECT * FROM sales.date;

-- query to find total count of transaction table
SELECT count(*) FROM sales.transactions;

-- query to find total count of customer table
SELECT count(*) FROM sales.customers;

-- query to find the transactions for Chennai market (market code for chennai is Mark001)
SELECT * FROM sales.transactions where market_code='Mark001';

-- query to find the total transactions count for Chennai market (market code for chennai is Mark001)
SELECT count(*) FROM sales.transactions where market_code='Mark001';

-- query to find the transactions in USD
SELECT * FROM sales.transactions where currency='USD';

--

select ST.* , SD.*
from sales.transactions as ST
join sales.date as SD
on ST.order_date = SD.date
where year = 2020;

-- Revenue in the year 2020

select sum(ST.sales_amount)
from sales.transactions as ST
join sales.date as SD
on ST.order_date = SD.date
where year = 2020;

-- Revenue in the year 2020 and month jan

select sum(ST.sales_amount)
from sales.transactions as ST
join sales.date as SD
on ST.order_date = SD.date
where year = 2020 and month_name = 'January';

-- Revenue in the year 2020 for chennai

select sum(ST.sales_amount)
from sales.transactions as ST
join sales.date as SD
on ST.order_date = SD.date
where year = 2020 and market_code= 'Mark001';


