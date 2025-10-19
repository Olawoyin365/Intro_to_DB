import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "olawoyin",
    password = "1234",
    database = "alx_book_store"
)

cursor = mydb.cursor()

cursor.execute("""
	INSERT INTO customer customer_id, customer_name, email, address(
		1, "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave.")
	""")

