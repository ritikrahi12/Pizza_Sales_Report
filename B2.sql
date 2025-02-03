-- Calculate the total revenue generated from pizza sales
select round( sum(order_details.quantity * pizzas.price),0) As Total_Revenue
from order_details
inner join pizzas
on pizzas.pizza_id= order_details.pizza_id



