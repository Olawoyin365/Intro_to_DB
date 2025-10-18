import mysql.connector
from mysql.connector import Error
 
db_name = "alx_book_store"
 
try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="olawoyin",
        password="1234",
        database=db_name
    )
    if mydb.is_connected():
        print(f"Database '{db_name}' already exists.")
except Error as e:
    if "Unknown database" in str(e):
        mydb = mysql.connector.connect(
            host="localhost",
            user="olawoyin",
            password="1234"
        )
        cursor = mydb.cursor()
        cursor.execute(f"CREATE DATABASE IF NOT EXISTS {db_name}")
        print(f"Database '{db_name}' created successfully.")
    else:
        print("Error:", e)
finally:
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()
