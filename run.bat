@echo off
cd /d C:\Users\David\PycharmProjects\Testing_E-rechnung
set PATH=%PATH%;C:\Users\David\AppData\Local\Programs\Python\PythonXX\Scripts



pabot --processes 2 TestCases\log*.robot
pause