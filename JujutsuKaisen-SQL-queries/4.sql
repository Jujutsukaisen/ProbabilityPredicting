SELECT position_name, training_hours FROM positions
INNER JOIN trainee ON positions.position_id = trainee.position_id
INNER JOIN experience ON trainee.enrolle_id = experience.enrolle_id
WHERE training_hours IN (SELECT * FROM (SELECT training_hours FROM experience GROUP BY training_hours ORDER BY training_hours DESC) WHERE ROWNUM <= 10)
ORDER BY training_hours DESC;