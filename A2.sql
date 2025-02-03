-- Analyze the cumulative revenue generated over time
select order_date,round(sum(revenue) over (order by order_date),0) as cum_revenue
from 
( select orders.order_date,sum(order_details.quantity * pizzas.price) As revenue
from order_details inner join pizzas
on order_details.pizza_id=pizzas.pizza_id
inner join orders
on orders.order_id = order_details.order_id
group by orders.order_date) As Sales