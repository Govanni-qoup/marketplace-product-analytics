SELECT
    event_type,
    COUNT(DISTINCT user_id) AS users
FROM events
GROUP BY event_type;
