--package
create or replace PACKAGE jujutsukaisen IS
TYPE rows_for_table1 IS RECORD(
r_avg_exp NUMBER,
r_lnj experience.last_new_job%TYPE);
TYPE rows_for_table2 IS RECORD(
r_avg_th NUMBER,
r_target experience.target%TYPE);
TYPE rows_for_table3 IS RECORD(
r_city_id city.city_id%TYPE,
r_city_development city.city_development%TYPE,
r_enrolle_amount NUMBER);
TYPE rows_for_table4 IS RECORD(
r_university_name university.university_name%TYPE,
r_position_name positions.position_name%TYPE,
r_group_name groupings.group_name%TYPE);
TYPE rows_for_table5 IS RECORD(
r_company_name company.company_name%TYPE);
TYPE rows_for_table6 IS RECORD(
r_city_id city.city_id%TYPE,
r_quantity NUMBER);
TYPE table1 IS TABLE OF rows_for_table1;
TYPE table2 IS TABLE OF rows_for_table2;
TYPE table3 IS TABLE OF rows_for_table3;
TYPE table4 IS TABLE OF rows_for_table4;
TYPE table5 IS TABLE OF rows_for_table5;
TYPE table6 IS TABLE OF rows_for_table6;
FUNCTION task1_5 RETURN table1 PIPELINED;
FUNCTION task2_6 RETURN table2 PIPELINED;
FUNCTION task3_7 RETURN table3 PIPELINED;
FUNCTION task4_9 RETURN table4 PIPELINED;
FUNCTION task5_13 RETURN table5 PIPELINED;
FUNCTION task6_14 RETURN table6 PIPELINED;
END jujutsukaisen;

--package body
create or replace PACKAGE BODY jujutsukaisen IS
FUNCTION task1_5 RETURN table1 PIPELINED IS
    result table1;
    i NUMBER := 0;
    i_end NUMBER;
    for_one_row rows_for_table1;
    CURSOR cursor1 IS 
        SELECT round(AVG(experience),2) AS avg_exp, last_new_job 
        FROM experience WHERE last_new_job IS NOT NULL 
        GROUP BY last_new_job ORDER BY last_new_job;
BEGIN
    SELECT count(distinct last_new_job) INTO i_end FROM experience;
    FOR rec IN cursor1 LOOP
        for_one_row.r_avg_exp := rec.avg_exp;
        for_one_row.r_lnj := rec.last_new_job;
        PIPE ROW(for_one_row);
        i := i + 1;
        EXIT WHEN i = i_end;
    END LOOP;
    RETURN;
END;

FUNCTION task2_6 RETURN table2 PIPELINED IS
    result table2;
    i NUMBER := 0;
    i_end NUMBER;
    for_one_row rows_for_table2;
    CURSOR cursor2 IS 
        SELECT round(AVG(training_hours),2) AS avg_th, target FROM experience GROUP BY target;
BEGIN
    SELECT count(target) INTO i_end FROM experience;
    FOR rec IN cursor2 LOOP
        for_one_row.r_avg_th := rec.avg_th;
        for_one_row.r_target := rec.target;
        PIPE ROW(for_one_row);
        i := i + 1;
        EXIT WHEN i = i_end;
    END LOOP;
    RETURN;
END;

FUNCTION task3_7 RETURN table3 PIPELINED IS
    result table3;
    i NUMBER := 0;
    i_end NUMBER := 5;
    for_one_row rows_for_table3;
    CURSOR cursor3 IS 
        SELECT * FROM (SELECT city.city_id, city_development, COUNT(enrolle_id) AS enrolle_amount FROM city 
        INNER JOIN trainee ON city.city_id = trainee.city_id
        GROUP BY city.city_id, city_development
        ORDER BY COUNT(enrolle_id) DESC)
        WHERE ROWNUM <= 5;
BEGIN
    FOR rec IN cursor3 LOOP
        for_one_row.r_city_id := rec.city_id;
        for_one_row.r_city_development := rec.city_development;
        for_one_row.r_enrolle_amount := rec.enrolle_amount;
        PIPE ROW(for_one_row);
        i := i + 1;
        EXIT WHEN i = i_end;
    END LOOP;
    RETURN;
END;

FUNCTION task4_9 RETURN table4 PIPELINED IS
    result table4;
    i NUMBER := 0;
    i_end NUMBER := 1;
    for_one_row rows_for_table4;
    CURSOR cursor4 IS 
        SELECT university_name, position_name, group_name FROM university 
        INNER JOIN education ON university.university_id = education.university_id
        INNER JOIN trainee ON education.enrolle_id = trainee.enrolle_id
        INNER JOIN experience ON trainee.enrolle_id = experience.enrolle_id
        INNER JOIN company ON experience.company_id = company.company_id
        INNER JOIN positions ON trainee.position_id = positions.position_id
        INNER JOIN groupings ON trainee.group_id = groupings.group_id
        WHERE training_hours > 300 AND company_size > 1000;
BEGIN
    FOR rec IN cursor4 LOOP
        for_one_row.r_university_name := rec.university_name;
        for_one_row.r_position_name := rec.position_name;
        for_one_row.r_group_name := rec.group_name;
        PIPE ROW(for_one_row);
        i := i + 1;
        EXIT WHEN i = i_end;
    END LOOP;
    RETURN;
END;

FUNCTION task5_13 RETURN table5 PIPELINED IS
    result table5;
    i NUMBER := 0;
    i_end NUMBER := 4;
    for_one_row rows_for_table5;
    CURSOR cursor5 IS 
        SELECT company_name FROM company 
        INNER JOIN experience ON company.company_id = experience.company_id
        INNER JOIN trainee ON experience.enrolle_id = trainee.enrolle_id
        INNER JOIN education ON trainee.enrolle_id = education.enrolle_id
        INNER JOIN university ON education.university_id = university.university_id
        WHERE  last_new_job != 0 AND training_hours > 300 AND target = 1.0 AND university_ranking between 1 AND 200;
BEGIN
    FOR rec IN cursor5 LOOP
        for_one_row.r_company_name := rec.company_name;
        PIPE ROW(for_one_row);
        i := i + 1;
        EXIT WHEN i = i_end;
    END LOOP;
    RETURN;
END;

FUNCTION task6_14 RETURN table6 PIPELINED IS
    result table6;
    i NUMBER := 0;
    i_end NUMBER := 5;
    for_one_row rows_for_table6;
    CURSOR cursor6 IS 
        SELECT * FROM (SELECT city_id, COUNT(company_name) AS quantity FROM company
        INNER JOIN experience ON company.company_id = experience.company_id
        INNER JOIN trainee ON experience.enrolle_id = trainee.enrolle_id
        WHERE target = 1.0 AND relevant_experience = 'Has relevent experience'
        GROUP BY trainee.city_id
        ORDER BY quantity DESC) WHERE ROWNUM <= 5;
BEGIN
    FOR rec IN cursor6 LOOP
        for_one_row.r_city_id := rec.city_id;
        for_one_row.r_quantity := rec.quantity;
        PIPE ROW(for_one_row);
        i := i + 1;
        EXIT WHEN i = i_end;
    END LOOP;
    RETURN;
END;
END jujutsukaisen;

--call
SELECT * FROM TABLE(jujutsukaisen.task1_5);
SELECT * FROM TABLE(jujutsukaisen.task2_6);
SELECT * FROM TABLE(jujutsukaisen.task3_7);
SELECT * FROM TABLE(jujutsukaisen.task4_9);
SELECT * FROM TABLE(jujutsukaisen.task5_13);
SELECT * FROM TABLE(jujutsukaisen.task6_14);