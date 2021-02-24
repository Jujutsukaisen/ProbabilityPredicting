## Table Description
pk, fk means primary and foreign key constraints accorgingly. There may be changes in the structure of the tables ahead
### Trainee
* enrolle_id (pk)
* city_id (fk)
* gender
### Education
* enrolle_id (fk)
* education_level 
* university_id (fk)
* major_descipline
### Experience
* enrolle_id (fk)
* relevant_experience
* experience
* last_new_job
* company_id (fk)
* training_hours
* target
### Role
* role_id (pk)
* role_name
### Group
* group_id (pk)
* group_name
### City
* city_id (pk)
* city_development
### University
* university_id (pk)
* university_name
* university_ranking
### Company
* company_id (pk)
* company_size
* company_type
## Link to dataset
[Dataset for project](https://www.kaggle.com/arashnic/hr-analytics-job-change-of-data-scientists)
