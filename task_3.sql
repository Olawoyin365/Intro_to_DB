import mysql.connector

mydb = mysql.connector.connect(
	host="localhost",
	user="olawoyin",
	password="1234"
)

cursor = mydb.cursor()

cursor.execute("USE alx_book_store")

cursor.execute("SHOW TABLES")
for i in cursor:
	print(i)
