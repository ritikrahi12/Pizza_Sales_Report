-- Group the orders by date and calculate the average number of pizzas ordered per day.
select round(avg(Quantity),0) As Avg_Pizza_Ordered_Per_Day from
(select orders.order_date, sum(order_details.quantity) As Quantity
from orders
inner join order_details
on orders.order_id= order_details.order_id
group by orders.order_date) As Order_Quantity