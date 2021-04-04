SELECT company_name, company_size FROM company 
INNER JOIN experience ON company.company_id = experience.company_id
WHERE company_size > 1000 ORDER BY company_size DESC;