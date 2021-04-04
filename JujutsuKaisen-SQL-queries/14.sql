SELECT * FROM (SELECT city_id, COUNT(company_name) AS quantity FROM company
INNER JOIN experience ON company.company_id = experience.company_id
INNER JOIN trainee ON experience.enrolle_id = trainee.enrolle_id
WHERE target = 1.0 AND relevant_experience = 'Has relevent experience'
GROUP BY trainee.city_id
ORDER BY quantity DESC) WHERE ROWNUM <= 5;