SELECT group_name, education_level FROM groupings  
INNER JOIN trainee ON groupings.group_id = trainee.group_id 
INNER JOIN education ON trainee.enrolle_id = education.enrolle_id 
GROUP BY group_name, education_level
ORDER BY group_name;