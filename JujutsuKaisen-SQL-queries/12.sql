SELECT * FROM (SELECT position_name, COUNT(enrolle_id) AS quantity FROM positions 
INNER JOIN trainee ON trainee.position_id = positions.position_id
GROUP BY position_name
ORDER BY quantity) WHERE quantity < 10;