import mysql.connector
import pandas as pd, random, string, time, os, sys
import datetime



conn = mysql.connector.connect(
  host='host.docker.internal',
  port='5010',
  user='root',
  password='root_mysql',
)

cursor = conn.cursor()
cursor.execute('CREATE DATABASE IF NOT EXISTS retail CHARACTER SET utf8 COLLATE utf8_general_ci;')


db = mysql.connector.connect(
  host='host.docker.internal',
  port='5010',
  user='root',
  password='root_mysql',
  database='retail'
)

mycursor = db.cursor()

mycursor.execute("CREATE TABLE IF NOT EXISTS cleaned_online_retail (invoiceno TEXT, stockcode TEXT, description TEXT, quantity BIGINT, invoicedate TIMESTAMP, unitprice DOUBLE, customerid BIGINT, country TEXT)")


cleaned_df = pd.read_csv (r'C:\Users\BS917\Desktop\project\data\cleaned_online_retail.csv')



#Data inser into table
user_query= "INSERT INTO cleaned_online_retail (invoiceno, stockcode, description, quantity, invoicedate, unitprice, customerid, country) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
user_values= []

for row in cleaned_df.itertuples():
  user_values.append((row.invoiceno,
  row.stockcode,
  row.description,
  row.quantity,
  row.invoicedate,
  row.unitprice, 
  row.customerid, 
  row.country))


mycursor.executemany(user_query, user_values) 
db.commit()