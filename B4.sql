-- Identify the most common pizza size ordered
select size,count(size) as Frequency
from pizzas
inner join order_details
on pizzas.pizza_id= order_details.pizza_id
group by size
order by Frequency desc
limit 1
