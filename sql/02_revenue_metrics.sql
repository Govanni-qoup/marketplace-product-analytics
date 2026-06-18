select user_id, 
count(distinct order_id) as order_count,
sum(amount) as revenue
from orders
group by user_id
order by revenue desc
