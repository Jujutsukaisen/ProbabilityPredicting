## Table Description
pk, fk means primary and foreign key constraints accorgingly. There may be changes in the structure of the tables ahead
### Trainee
* enrolle_id {NUMBER PRIMARY KEY}
* gender {VARCHAR(255)}
* city_id {NUMBER FOREIGN KEY}
* position_id {NUMBER}
* group_id {NUMBER}
### Education
* enrolle_id {NUMBER FOREIGN KEY}
* education_level {VARCHAR(255)}
* major_descipline {VARCHAR(255)}
* university_id {NUMBER FOREIGN KEY}
### Experience
* enrolle_id {NUMBER FOREIGN KEY}
* relevant_experience {VARCHAR(255)}
* experience {NUMBER}
* last_new_job {NUMBER}
* company_id {NUMBER FOREIGN KEY}
* training_hours {NUMBER}
* target {NUMBER}
### Positions
* position_id {NUMBER PRIMARY KEY}
* position_name {VARCHAR(255)}
### Groupings
* group_id {NUMBER PRIMARY KEY}
* group_name {VARCHAR(255)}
### City
* city_id {NUMBER PRIMARY KEY}
* city_development {NUMBER}
### University
* university_id {NUMBER PRIMARY KEY}
* university_name {VARCHAR(255)}
* university_ranking {NUMBER}
* university_country {VARCHAR(255)}
### Company
* company_id {NUMBER PRIMARY KEY}
* company_name {VARCHAR(255)}
* company_domain {VARCHAR(255)}
* industry {VARCHAR(255)}
* company_country {VARCHAR(255)}
* country_size {NUMBER}
## Link to datasets
* [Dataset for tables: trainee, education, experience, city](https://www.kaggle.com/arashnic/hr-analytics-job-change-of-data-scientists)
* [Dataset for table university](https://www.kaggle.com/mylesoneill/world-university-rankings)
* [Dataset for table company](https://www.kaggle.com/peopledatalabssf/free-7-million-company-dataset?select=companies_sorted.csv)
* [Dataset for table positions](https://www.bls.gov/oes/current/oes_nat.htm#53-0000)
