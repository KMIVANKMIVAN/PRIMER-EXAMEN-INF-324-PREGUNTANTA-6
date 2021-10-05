# -*- coding: utf-8 -*-
"""
Created on Sun Oct  3 21:20:50 2021

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

sql="insert into persona (CI_persona,nombreCompleto,fechaNacimiento,departamento) VALUES ('1113335','Alan','2000-11-11','1')"

cursor.execute(sql)        
     
conexion.commit()
conexion.close();