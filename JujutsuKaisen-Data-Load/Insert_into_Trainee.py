import cx_Oracle
import csv

con = cx_Oracle.connect('jujutsu/kaisen@localhost/orclpdb')
cur = con.cursor()
with open("trainee.csv", encoding="utf8") as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    next(csv_reader)
    for lines in csv_reader:
        cur.execute(
            "insert into trainee (ENROLLE_ID, GENDER, CITY_ID, POSITION_ID, GROUP_ID) values (:1, :2, :3, :4, :5)",
            (lines[0], lines[2], lines[1], lines[3], lines[4]))

cur.close()
con.commit()
con.close()
