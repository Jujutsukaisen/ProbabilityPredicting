SELECT company_name FROM company 
INNER JOIN experience ON company.company_id = experience.company_id
INNER JOIN trainee ON experience.enrolle_id = trainee.enrolle_id
INNER JOIN education ON trainee.enrolle_id = education.enrolle_id
INNER JOIN university ON education.university_id = university.university_id
WHERE  last_new_job != 0 AND training_hours > 300 AND target = 1.0 AND university_ranking between 1 AND 200;