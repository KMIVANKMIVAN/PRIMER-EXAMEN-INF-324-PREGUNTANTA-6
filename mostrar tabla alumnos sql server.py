# -*- coding: utf-8 -*-
"""
Created on Sun Oct  3 20:26:33 2021

@author: van
"""
import pyodbc 

server = 'localhost'
bd = 'mybdivan'
usuario = 'usuario324'
contraseña = '8433318'

conexion = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL server}; SERVER='+server+';DATABASE='+bd+';UID='+usuario+';PWD='+contraseña)
print('con')
cursor = conexion.cursor()
cursor.execute("select * from persona;")

registros = cursor.fetchall()
#print(registros)
for registro in registros:
    print("CI PERSONA", registro[0])
    print("NOMBRE", registro[1])
    print("FECHA DE NACIMIENTO", registro[2])
    print("DEPARTAMENTO", registro[3])

cursor.close();
conexion.close();
#Sample insert query
#count = cursor.execute(INSERT INTO persona (CI_persona,nombreCompleto,fechaNacimiento,departamento) VALUES ('5555555','Marcos','1995-11-11','1'),'SQL Server Express New 20', 'SQLEXPRESS New 20', 0, 0, CURRENT_TIMESTAMP).rowcount
#cnxn.commit()
#print('Rows inserted: ' + str(count))



   