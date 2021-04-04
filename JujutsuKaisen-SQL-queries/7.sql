SELECT * FROM (SELECT city.city_id, city_development, COUNT(enrolle_id) FROM city 
INNER JOIN trainee ON city.city_id = trainee.city_id
GROUP BY city.city_id, city_development
ORDER BY COUNT(enrolle_id) DESC)
WHERE ROWNUM <= 5;