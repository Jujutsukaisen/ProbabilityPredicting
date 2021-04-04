SELECT p.position_name, (SELECT COUNT(gender) FROM positions 
INNER JOIN trainee ON trainee.position_id = positions.position_id
WHERE gender = 'Male' AND position_name = p.position_name) AS male_quantity, (SELECT COUNT(gender) FROM positions 
INNER JOIN trainee ON trainee.position_id = positions.position_id
WHERE gender = 'Female' AND position_name = p.position_name) AS female_quantity FROM positions p
ORDER BY p.position_name;