--How's the business doing?
select d.year,d.month_name,
sum(od.total_amount),sum(od.profit),count(od.order_id)
from orders od join date_dimension d 
on od.order_date=d.date 
group by d.year,d.month_name order by d.year,d.month_name;

-- why we are facing lose ?
---- Step 1: How much are we actually losing?
select sum(lost_amount) as lost_amount from orders 

---- Step 2: Which region loses the most?
select region, sum(lost_amount) as lost_amount from orders  group by region ;

-- top 10 customers
select c.customer_id,c.customer_name,sum(od.net_amount ) as spend ,
count(od.order_id) as total_orders from orders od join customers c on
c.customer_id=od.customer_id
group by c.customer_id,c.customer_name 

order by spend desc limit 10 ;	
--most cancelled orders by customer with   total gross amount 
select c.customer_id,c.customer_name,od.order_status,sum(od.gross_amount)
from orders od join  customers c on c.customer_id=od.customer_id
where od.order_status='Cancelled' group by c.customer_id,c.customer_name,od.order_status 
order by sum(od.gross_amount) desc ;

--What is the total net_amount earned from each payment_method?
select payment_method ,sum(net_amount) from  orders
group by payment_method;

--Which product category has generated the highest total profit?
select p.category,sum(od.profit) from orders od  join products p
on od.product_id=p.product_id group by p.category 
order by sum(od.profit) desc ;

--Find the number of orders placed by each customer, along with their customer_name —
--show only customers with more than 15 orders.
select c.customer_name,count(od.order_id) from orders od
join customers c on c.customer_id=od.customer_id 
group by c.customer_name having count(od.order_id)>15;

--What is the average profit_margin_pct for each sales_channel?
select sales_channel,avg(profit_margin_pct) from orders
group by sales_channel;

--Which region has the highest total lost_amount (from cancelled/returned orders)?
select region ,sum(lost_amount) from orders
group by region order by sum(lost_amount) desc;

--Find the top 3 best-selling products (by total quantity sold) per category
with c1 as (
			select p.category,p.product_name,sum(od.quantity),
			dense_rank() over(partition by  p.category order by sum(quantity) desc)  as rankk 
			from orders od join products p on p.product_id=od.product_id
			group by p.category,p.product_name  
			)
select *from c1 where rankk<=3	

-- MOM calculate
WITH monthly_revenue AS (
    SELECT
        TO_CHAR(order_date, 'YYYY-MM') AS month,
        SUM(net_amount) AS revenue
    FROM orders
    GROUP BY TO_CHAR(order_date, 'YYYY-MM')
),
previous_month AS (
    SELECT
        month,
        revenue,
        LAG(revenue) OVER (ORDER BY month) AS prev_revenue
    FROM monthly_revenue
)
SELECT
    month,
    revenue,
    prev_revenue,
    ROUND(
        ((revenue - prev_revenue) / NULLIF(prev_revenue, 0)) * 100,
        2
    ) AS mom_growth_percentage
FROM previous_month
ORDER BY month;

--Find customers whose total spend is above the average spend of all customers (needs a subquery or CTE).
select c.customer_name,od.net_amount from orders od
join customers c on c.customer_id=od.customer_id 
where  od.net_amount>(select avg(od.net_amount) from orders od);

--using CTE
with avg_spend as(
		 select avg(net_amount) as avg_spend from orders 
		)
select c.customer_name,od.net_amount from orders od
join customers c on c.customer_id=od.customer_id 
where od.net_amount>avg_spend;



		

		




