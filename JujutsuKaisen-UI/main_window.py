# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'C:\Users\User\Desktop\main_window.ui'
#
# Created by: PyQt5 UI code generator 5.15.1
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        MainWindow.setStyleSheet("background-color: rgb(247, 255, 254);")
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.pushButton = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton.setGeometry(QtCore.QRect(160, 150, 191, 51))
        self.pushButton.setStyleSheet("font: 75 12pt \"MS Sans Serif\";\n"
"selection-color: rgb(231, 221, 255);\n"
"background-color: rgb(229, 255, 249);")
        self.pushButton.setObjectName("pushButton")
        self.pushButton_2 = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_2.setGeometry(QtCore.QRect(160, 230, 191, 51))
        self.pushButton_2.setStyleSheet("font: 75 12pt \"MS Sans Serif\";\n"
"selection-color: rgb(231, 221, 255);\n"
"background-color: rgb(229, 255, 249);")
        self.pushButton_2.setObjectName("pushButton_2")
        self.pushButton_3 = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_3.setGeometry(QtCore.QRect(160, 310, 191, 51))
        self.pushButton_3.setStyleSheet("font: 75 12pt \"MS Sans Serif\";\n"
"selection-color: rgb(231, 221, 255);\n"
"background-color: rgb(229, 255, 249);")
        self.pushButton_3.setObjectName("pushButton_3")
        self.pushButton_4 = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_4.setGeometry(QtCore.QRect(450, 150, 191, 51))
        self.pushButton_4.setStyleSheet("font: 75 12pt \"MS Sans Serif\";\n"
"selection-color: rgb(231, 221, 255);\n"
"background-color: rgb(229, 255, 249);")
        self.pushButton_4.setObjectName("pushButton_4")
        self.pushButton_5 = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_5.setGeometry(QtCore.QRect(450, 230, 191, 51))
        self.pushButton_5.setStyleSheet("font: 75 12pt \"MS Sans Serif\";\n"
"selection-color: rgb(231, 221, 255);\n"
"background-color: rgb(229, 255, 249);")
        self.pushButton_5.setObjectName("pushButton_5")
        self.pushButton_6 = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_6.setGeometry(QtCore.QRect(450, 310, 191, 51))
        self.pushButton_6.setStyleSheet("font: 75 12pt \"MS Sans Serif\";\n"
"selection-color: rgb(231, 221, 255);\n"
"background-color: rgb(229, 255, 249);")
        self.pushButton_6.setObjectName("pushButton_6")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 800, 26))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.pushButton.setText(_translate("MainWindow", "task1_5"))
        self.pushButton_2.setText(_translate("MainWindow", "task2_6"))
        self.pushButton_3.setText(_translate("MainWindow", "task3_7"))
        self.pushButton_4.setText(_translate("MainWindow", "task4_9"))
        self.pushButton_5.setText(_translate("MainWindow", "task5_13"))
        self.pushButton_6.setText(_translate("MainWindow", "task6_14"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())
