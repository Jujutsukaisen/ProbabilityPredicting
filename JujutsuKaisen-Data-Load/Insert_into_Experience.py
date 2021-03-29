import cx_Oracle
import csv

con = cx_Oracle.connect('jujutsu/kaisen@localhost/orclpdb')
cur = con.cursor()
with open("experience.csv", encoding="utf8") as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    next(csv_reader)
    for lines in csv_reader:
        cur.execute(
            "insert into experience (ENROLLE_ID, RELEVANT_EXPERIENCE, EXPERIENCE, LAST_NEW_JOB, COMPANY_ID, TRAINING_HOURS, TARGET) values (:1, :2, :3, :4, :5, :6, :7)",
            (lines[0], lines[1], lines[2], lines[3], lines[4], lines[5], lines[6]))

cur.close()
con.commit()
con.close()
