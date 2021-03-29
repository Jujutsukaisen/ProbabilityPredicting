CREATE TABLE city
 ( 
 city_id NUMBER PRIMARY KEY,
 city_development NUMBER
 );
 
 CREATE TABLE university
 ( 
 university_id NUMBER PRIMARY KEY,
 university_name VARCHAR(255),
 university_ranking NUMBER,
 university_country VARCHAR(255)
 );
 
 CREATE TABLE company
 ( 
 company_id NUMBER PRIMARY KEY,
 company_name VARCHAR(255),
 company_domain VARCHAR(255),
 industry VARCHAR(255),
 company_country VARCHAR(255),
 company_size NUMBER
 );
 
 CREATE TABLE positions
 ( 
 position_id NUMBER PRIMARY KEY,
 position_name VARCHAR(255)
 );
 
 CREATE TABLE groupings
 ( 
 group_id NUMBER PRIMARY KEY,
 group_name VARCHAR(255)
 );
 
CREATE TABLE education 
 ( 
 enrolle_id NUMBER, 
 education_level VARCHAR(255), 
 major_descipline VARCHAR(255),
 university_id NUMBER,
 CONSTRAINT fk_education_trainee 
 FOREIGN KEY(enrolle_id) 
 REFERENCES trainee(enrolle_id) 
 ON DELETE CASCADE,
 CONSTRAINT fk_education_university
 FOREIGN KEY(university_id) 
 REFERENCES university(university_id) 
 ON DELETE CASCADE
 ); 
 
 UPDATE education SET university_id = NULL WHERE education_level = 'Primary School';
 UPDATE education SET university_id = NULL WHERE education_level = 'High School';
 
 CREATE TABLE experience 
 ( 
 enrolle_id NUMBER, 
 relevant_experience VARCHAR(255), 
 experience NUMBER,
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
 position_id NUMBER,
 group_id NUMBER,
 CONSTRAINT fk_trainee_city
 FOREIGN KEY(city_id) 
 REFERENCES city(city_id) 
 ON DELETE CASCADE,
 CONSTRAINT fk_trainee_positions
 FOREIGN KEY(position_id) 
 REFERENCES positions(position_id) 
 ON DELETE CASCADE,
 CONSTRAINT fk_trainee_groupings
 FOREIGN KEY(group_id) 
 REFERENCES groupings(group_id) 
 ON DELETE CASCADE
 ); 
