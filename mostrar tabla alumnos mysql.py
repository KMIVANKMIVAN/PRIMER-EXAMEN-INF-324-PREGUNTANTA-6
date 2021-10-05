# -*- coding: utf-8 -*-
"""
Created on Sun Oct  3 21:50:24 2021

@author: van
"""
import mysql.connector

conexion = mysql.connector.connect(host="localhost",user="ivan",password="8433318",database="mibdivan")
cursor = conexion.cursor()
sql="select * from persona;"
cursor.execute(sql)
registros = cursor.fetchall()
#print(registros)
for registro in registros:
    print("CI PERSONA", registro[0])
    print("NOMBRE", registro[1])
    print("FECHA DE NACIMIENTO", registro[2])
    print("DEPARTAMENTO", registro[3])
cursor.close()
conexion.close()