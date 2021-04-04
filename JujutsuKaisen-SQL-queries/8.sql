SELECT city_development, university_country, company_name, company_country FROM company 
INNER JOIN experience ON company.company_id = experience.company_id
INNER JOIN trainee ON experience.enrolle_id = trainee.enrolle_id
INNER JOIN education ON trainee.enrolle_id = education.enrolle_id
INNER JOIN university ON education.university_id = university.university_id
INNER JOIN city ON trainee.city_id = city.city_id
WHERE university_ranking = 1;