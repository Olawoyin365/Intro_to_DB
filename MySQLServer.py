import mysql.connector
from mysql.connector import Error
 
#db_name = "alx_book_store"
 
try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="olawoyin",
        password="1234",
        database="alx_book_store"
    )
    if mydb.is_connected():
        print("Database 'alx_book_store' already exists.")
except Error as e:
    if "Unknown database" in str(e):
        mydb = mysql.connector.connect(
            host="localhost",
            user="olawoyin",
            password="1234"
        )
        cursor = mydb.cursor()
        cursor.execute(f"CREATE DATABASE IF NOT EXISTS alx_book_store")
        print(f"Database 'alx_book_store' created successfully.")
    else:
        print("Error:", e)
finally:
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()
