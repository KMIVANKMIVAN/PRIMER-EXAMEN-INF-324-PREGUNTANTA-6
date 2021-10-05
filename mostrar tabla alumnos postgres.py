# -*- coding: utf-8 -*-
"""
Created on Sun Oct  3 18:54:24 2021

@author: van
"""

import psycopg2 as pc

conexion = pc.connect(user="postgres",
                      password="8433318",
                      host="127.0.0.1",
                      port="5432",
                      database="mibdivan"
    )
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