import cx_Oracle
import csv

con = cx_Oracle.connect('jujutsu/kaisen@localhost/orclpdb')
cur = con.cursor()
with open("company.csv", encoding="utf8") as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    next(csv_reader)
    for lines in csv_reader:
        cur.execute(
            "insert into company (COMPANY_ID, COMPANY_NAME, COMPANY_DOMAIN, INDUSTRY, COMPANY_COUNTRY, COMPANY_SIZE) values (:1, :2, :3, :4, :5, :6)",
            (lines[0], lines[1], lines[2], lines[3], lines[4], lines[5]))

cur.close()
con.commit()
con.close()
