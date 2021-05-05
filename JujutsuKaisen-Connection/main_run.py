import sys 
import os 
import cx_Oracle
from PyQt5 import QtWidgets,QtGui
from PyQt5.QtWidgets import *

import main_window
import task1_5
import task2_6
import task3_7
import task4_9
import task5_13
import task6_14

oracleCon = 'jujutsu/kaisen@localhost/orclpdb'

class MainWindow(QtWidgets.QMainWindow, main_window.Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.onClickBtn1)
        self.pushButton_2.clicked.connect(self.onClickBtn2)
        self.pushButton_3.clicked.connect(self.onClickBtn3)
        self.pushButton_4.clicked.connect(self.onClickBtn4)
        self.pushButton_5.clicked.connect(self.onClickBtn5)
        self.pushButton_6.clicked.connect(self.onClickBtn6)
        self.task1_5 = Task1()
        self.task2_6 = Task2()
        self.task3_7 = Task3()
        self.task4_9 = Task4()
        self.task5_13 = Task5()
        self.task6_14 = Task6()
    def onClickBtn1(self):
        self.task1_5.show()
    def onClickBtn2(self):
        self.task2_6.show()
    def onClickBtn3(self):
        self.task3_7.show()
    def onClickBtn4(self):
        self.task4_9.show()
    def onClickBtn5(self):
        self.task5_13.show()
    def onClickBtn6(self):
        self.task6_14.show()

class Task1(QtWidgets.QMainWindow, task1_5.Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.onClickBtn)
    def onClickBtn(self):
        con = cx_Oracle.connect(oracleCon)
        cursor = con.cursor()
        text = ""
        cursor.execute('select * from table(jujutsukaisen.task1_5())')
        row = cursor.fetchall()
        for i in range(cursor.rowcount):
            item_str = str(i+1)+" " + str(row[i][0]).ljust(7) + " " + str(row[i][1])
            text+= item_str+"\n"
        self.label_2.setText(text)
        con.commit()
        cursor.close()

class Task2(QtWidgets.QMainWindow, task2_6.Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.onClickBtn)
    def onClickBtn(self):
        con = cx_Oracle.connect(oracleCon)
        cursor = con.cursor()
        text = ""
        cursor.execute('select * from table(jujutsukaisen.task2_6())')
        row = cursor.fetchall()
        for i in range(cursor.rowcount):
            item_str = str(i+1)+" " + str(row[i][0]).ljust(7) + " " + str(row[i][1])
            text+= item_str+"\n"
        self.label_2.setText(text)
        con.commit()
        cursor.close()

class Task3(QtWidgets.QMainWindow, task3_7.Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.onClickBtn)
    def onClickBtn(self):
        con = cx_Oracle.connect(oracleCon)
        cursor = con.cursor()
        text = ""
        cursor.execute('select * from table(jujutsukaisen.task3_7())')
        row = cursor.fetchall()
        for i in range(cursor.rowcount):
            item_str = str(i+1)+" " + str(row[i][0]).ljust(5) + " " + str(row[i][1]).ljust(7) + " " + str(row[i][2])
            text+= item_str+"\n"
        self.label_2.setText(text)
        con.commit()
        cursor.close()

class Task4(QtWidgets.QMainWindow, task4_9.Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.onClickBtn)
    def onClickBtn(self):
        con = cx_Oracle.connect(oracleCon)
        cursor = con.cursor()
        text = ""
        cursor.execute('select * from table(jujutsukaisen.task4_9())')
        row = cursor.fetchall()
        for i in range(cursor.rowcount):
            item_str = str(row[i][0].ljust(3)) + "\n" + str(row[i][1].ljust(3)) + "\n" + str(row[i][2])
            text+= item_str+"\n"
        self.label_2.setText(text)
        con.commit()
        cursor.close()

class Task5(QtWidgets.QMainWindow, task5_13.Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.onClickBtn)
    def onClickBtn(self):
        con = cx_Oracle.connect(oracleCon)
        cursor = con.cursor()
        text = ""
        cursor.execute('select * from table(jujutsukaisen.task5_13())')
        row = cursor.fetchall()
        for i in range(cursor.rowcount):
            item_str = str(i+1)+" " + str(row[i][0])
            text+= item_str+"\n"
        self.label_2.setText(text)
        con.commit()
        cursor.close()

class Task6(QtWidgets.QMainWindow, task6_14.Ui_MainWindow):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.onClickBtn)
    def onClickBtn(self):
        con = cx_Oracle.connect(oracleCon)
        cursor = con.cursor()
        text = ""
        cursor.execute('select * from table(jujutsukaisen.task6_14())')
        row = cursor.fetchall()
        for i in range(cursor.rowcount):
            item_str = str(i+1)+" " + str(row[i][0]).ljust(4) + " " + str(row[i][1])
            text+= item_str+"\n"
        self.label_2.setText(text)
        con.commit()
        cursor.close()

        
def main():
    app = QtWidgets.QApplication(sys.argv) 
    window = MainWindow() 
    window.show() 
    app.exec_() 

if __name__ == '__main__': 
    main() 
