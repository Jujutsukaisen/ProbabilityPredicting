SELECT p.position_name, (SELECT COUNT(gender) FROM trainee 
WHERE gender = 'Male' AND trainee.position_id = p.position_id) AS male_quantity, 
(SELECT COUNT(gender) FROM trainee
WHERE gender = 'Female' AND trainee.position_id = p.position_id) AS female_quantity FROM positions p
ORDER BY p.position_name;
