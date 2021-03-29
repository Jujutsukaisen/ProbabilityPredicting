import cx_Oracle
import csv

con = cx_Oracle.connect('jujutsu/kaisen@localhost/orclpdb')
cur = con.cursor()
with open("university.csv", encoding="utf8") as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    next(csv_reader)
    for lines in csv_reader:
        cur.execute(
            "insert into university (UNIVERSITY_ID, UNIVERSITY_NAME, UNIVERSITY_RANKING, UNIVERSITY_COUNTRY) values (:1, :2, :3, :4)",
            (lines[0], lines[1], lines[2], lines[3]))

cur.close()
con.commit()
con.close()
