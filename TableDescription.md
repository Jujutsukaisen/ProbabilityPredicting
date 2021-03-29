## Table Description
### Trainee
* enrolle_id {NUMBER PRIMARY KEY}
* gender {VARCHAR(255)}
* city_id {NUMBER FOREIGN KEY}
* position_id {NUMBER}
* group_id {NUMBER}
* [Dataset for table](https://www.kaggle.com/arashnic/hr-analytics-job-change-of-data-scientists)
### Education
* enrolle_id {NUMBER FOREIGN KEY}
* education_level {VARCHAR(255)}
* major_descipline {VARCHAR(255)}
* university_id {NUMBER FOREIGN KEY}
* [Dataset for table](https://www.kaggle.com/arashnic/hr-analytics-job-change-of-data-scientists)
### Experience
* enrolle_id {NUMBER FOREIGN KEY}
* relevant_experience {VARCHAR(255)}
* experience {NUMBER}
* last_new_job {NUMBER}
* company_id {NUMBER FOREIGN KEY}
* training_hours {NUMBER}
* target {NUMBER}
* [Dataset for table](https://www.kaggle.com/arashnic/hr-analytics-job-change-of-data-scientists)
### Positions
* position_id {NUMBER PRIMARY KEY}
* position_name {VARCHAR(255)}
* [Dataset for table](https://www.bls.gov/oes/current/oes_nat.htm#53-0000)
### Groupings
* group_id {NUMBER PRIMARY KEY}
* group_name {VARCHAR(255)}
### City
* city_id {NUMBER PRIMARY KEY}
* city_development {NUMBER}
* [Dataset for table](https://www.kaggle.com/arashnic/hr-analytics-job-change-of-data-scientists)
### University
* university_id {NUMBER PRIMARY KEY}
* university_name {VARCHAR(255)}
* university_ranking {NUMBER}
* university_country {VARCHAR(255)}
* [Dataset for table](https://www.kaggle.com/mylesoneill/world-university-rankings)
### Company
* company_id {NUMBER PRIMARY KEY}
* company_name {VARCHAR(255)}
* company_domain {VARCHAR(255)}
* industry {VARCHAR(255)}
* company_country {VARCHAR(255)}
* country_size {NUMBER}
* [Dataset for table](https://www.kaggle.com/peopledatalabssf/free-7-million-company-dataset?select=companies_sorted.csv)

