-- Calculate the percentage contribution of each pizza type to total revenue
select pizza_types.category, round(sum( order_details.quantity * pizzas.price)/(select round(sum(order_details.quantity * pizzas.price),2)
As Total_Sales
from order_details
inner join pizzas
on pizzas.pizza_id= order_details.pizza_id) * 100,2) As Revenue
from pizza_types
inner join pizzas
on pizza_types.pizza_type_id= pizzas.pizza_type_id
inner join order_details
on order_details.pizza_id= pizzas.pizza_id
group by pizza_types.category 
order by Revenue desc                                                                                                              
