# -*- coding: utf-8 -*-
"""
Created on Sun Oct  3 21:58:05 2021

@author: van
"""

import mysql.connector

conexion = mysql.connector.connect(host="localhost",user="ivan",password="8433318",database="mibdivan")

cursor = conexion.cursor()
sql='insert into `persona` (`CI_persona`, `nombreCompleto`, `fechaNacimiento`, `departamento`) VALUES (%s,%s,%s,%s)'

datos=('5555555','John','1995-11-11','1')
cursor.execute(sql,datos)

conexion.commit()
conexion.close()