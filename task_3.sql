import mysql.connector

mydb = mysql.connector.connect(
	host="localhost",
	user="olawoyin",
	password="1234",
	database="alx_book_store"
)

cursor = mydb.cursor()
cursor.execute("SHOW TABLES")
