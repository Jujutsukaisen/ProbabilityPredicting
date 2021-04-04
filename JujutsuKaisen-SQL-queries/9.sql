SELECT university_name, position_name, group_name FROM university 
INNER JOIN education ON university.university_id = education.university_id
INNER JOIN trainee ON education.enrolle_id = trainee.enrolle_id
INNER JOIN experience ON trainee.enrolle_id = experience.enrolle_id
INNER JOIN company ON experience.company_id = company.company_id
INNER JOIN positions ON trainee.position_id = positions.position_id
INNER JOIN groupings ON trainee.group_id = groupings.group_id
WHERE training_hours > 300 AND company_size > 1000;