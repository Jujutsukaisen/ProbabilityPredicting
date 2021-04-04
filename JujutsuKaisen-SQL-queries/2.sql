SELECT t.city_id, ROUND(COUNT(t.enrolle_id)/(SELECT COUNT(enrolle_id) FROM trainee WHERE city_id = t.city_id GROUP BY city_id)*100, 2) || '%' AS percent
FROM trainee t 
INNER JOIN experience e ON t.enrolle_id = e.enrolle_id 
WHERE e.last_new_job != 0 
GROUP BY t.city_id;
