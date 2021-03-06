CREATE TABLE city
 ( 
 city_id NUMBER PRIMARY KEY,
 city_development NUMBER
 );
 
 CREATE TABLE university
 ( 
 university_id NUMBER PRIMARY KEY,
 university_name VARCHAR(255),
 university_ranking NUMBER
 );
 
 CREATE TABLE company
 ( 
 company_id NUMBER PRIMARY KEY,
 company_name VARCHAR(255),
 company_size NUMBER
 );
 
 CREATE TABLE role
 ( 
 role_id NUMBER PRIMARY KEY,
 role_name VARCHAR(255)
 );
 
 CREATE TABLE group
 ( 
 group_id NUMBER PRIMARY KEY,
 group_name VARCHAR(255)
 );
 
CREATE TABLE education 
 ( 
 enrolle_id NUMBER, 
 education_level VARCHAR(255), 
 university_id NUMBER,
 major_descipline VARCHAR(255),
 CONSTRAINT fk_education_trainee 
 FOREIGN KEY(enrolle_id) 
 REFERENCES trainee(enrolle_id) 
 ON DELETE CASCADE,
 CONSTRAINT fk_education_university
 FOREIGN KEY(university_id) 
 REFERENCES university(university_id) 
 ON DELETE CASCADE
 ); 
 
 CREATE TABLE experience 
 ( 
 enrolle_id NUMBER, 
 relevant_experience VARCHAR(255), 
 experience VARCHAR(255),
 last_new_job NUMBER,
 company_id NUMBER,
 training_hours NUMBER,
 target NUMBER,
 CONSTRAINT fk_experience_trainee 
 FOREIGN KEY(enrolle_id) 
 REFERENCES trainee(enrolle_id) 
 ON DELETE CASCADE,
 CONSTRAINT fk_experience_company
 FOREIGN KEY(company_id) 
 REFERENCES company(company_id) 
 ON DELETE CASCADE
 ); 
 
CREATE TABLE trainee
 ( 
 enrolle_id NUMBER PRIMARY KEY, 
 gender VARCHAR(255),
 city_id NUMBER,
 role_id NUMBER,
 group_id NUMBER,
 CONSTRAINT fk_trainee_city
 FOREIGN KEY(city_id) 
 REFERENCES city(city_id) 
 ON DELETE CASCADE,
 CONSTRAINT fk_trainee_role
 FOREIGN KEY(role_id) 
 REFERENCES role(role_id) 
 ON DELETE CASCADE,
 CONSTRAINT fk_trainee_group
 FOREIGN KEY(group_id) 
 REFERENCES group(group_id) 
 ON DELETE CASCADE
 ); 
 