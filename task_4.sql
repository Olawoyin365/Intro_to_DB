import mysql.connector

mydb = mysql.connector.connect(
	host = "localhost",
	user = "root",
	password = "Akbar@123$$$",
	database = "alx_book_store"
)

cursor = mydb.cursor()
cursor.execute("SHOW COLUMNS FROM Books;")

