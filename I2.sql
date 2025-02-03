-- Determine the distribution of orders by hour of the day
select hour(order_time) As hour, count(order_id) As order_count from orders
group by hour(order_time)