select (select count(distinct user_id) from users) as total_users,
count(distinct o.user_id) as paying_users,
sum(o.amount) as revenue,
sum(o.amount) / (select count(distinct user_id) from users) as arpu,
sum(o.amount) / count(distinct o.user_id) as arppu
from orders o
