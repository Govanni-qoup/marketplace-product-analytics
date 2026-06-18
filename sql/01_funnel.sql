select event_type, count(distinct user_id) as users 
from events 
group by event_type
