import mysql.connector

mydb = mysql.connector.connect(
	host = "localhost",
	user = "root",
	password = "Akbar@123$$$",
	database = "alx_book_store"
)

cursor = mydb.cursor()
cursor.execute("SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Books';")

