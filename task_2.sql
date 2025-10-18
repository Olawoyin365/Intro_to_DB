import mysql.connector

mydb = mysql.connector.connect(
	host="localhost",
	user="olawoyin",
	password="1234",
	database="alx_book_store"
)

cursor = mydb.cursor()

cursor.execute("""
	CREATE TABLE authors(
		author_id INT PRIMARY KEY,
		author_name VARCHAR(215)
	)
	""")

cursor.execute("""
	CREATE TABLE books(
		book_id INT PRIMAR KEY,
		title VARCHAR(130),
		author_id INT,
		FOREIGN KEY author_id REFERENCES authors(author_id),
		price DOUBLE,
		publication_date DATE
	)
	""")

cursor.execute("""
	CREATE TABLE customers(
		customer_id INT PRIMARY KEY,
		customer_name VARCHAR(215),
		email VARCHAR(215),
		address TEXT
	)
	""")

cursor.execute("""
	CREATE TABLE orders(
		order_id INT PRIMARY KEY,
		customer_id INT,
		FOREIGN KEY customer_id REFERENCES customers(customer_id),
		order_date DATE
	)
	""")

cursor.execute("""
	CREATE TABLE order_details(
		orderdetailid INT PRIMARY KEY,
		order_id INT,
		FOREIGN KEY order_id REFERENCES orders(order_id),
		book_id INT,
		FOREIGN KEY book_id REFERENCES books(book_id),
		quantity DOUBLE
	)
	""")
