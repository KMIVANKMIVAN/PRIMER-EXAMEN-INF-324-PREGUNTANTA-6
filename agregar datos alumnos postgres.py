# -*- coding: utf-8 -*-
"""
Created on Sun Oct  3 19:30:21 2021

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
sql='insert into persona ("CI_persona","nombreCompleto","fechaNacimiento","departamento") VALUES (%s,%s,%s,%s)'

#sql = "insert into persona ("CI_persona","nombreCompleto","fechaNacimiento","departamento")
#            VALUES ('3332221','John','2000-11-11','1')"

datos=('5555555','John','1995-11-11','1')
cursor.execute(sql,datos)

conexion.commit()
conexion.close()