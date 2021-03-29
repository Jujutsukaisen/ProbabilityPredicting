import cx_Oracle
import csv

con = cx_Oracle.connect('jujutsu/kaisen@localhost/orclpdb')
cur = con.cursor()
with open("positions.csv", encoding="utf8") as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    next(csv_reader)
    for lines in csv_reader:
        cur.execute(
            "insert into positions (POSITION_ID, POSITION_NAME) values (:1, :2)",
            (lines[0], lines[1]))

cur.close()
con.commit()
con.close()
