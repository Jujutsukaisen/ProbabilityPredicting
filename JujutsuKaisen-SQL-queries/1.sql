SELECT education_level FROM education 
INNER JOIN experience ON education.enrolle_id = experience.enrolle_id
WHERE last_new_job = 0 
GROUP BY education_level;
