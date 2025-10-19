import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "olawoyin",
    password = "1234",
    database = "alx_book_store"
)

cursor = mydb.cursor()

cursor.execute("""
	INSERT INTO customer VALUES(
		1, "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave."),
	(2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.' ),
	(3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
	(4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.')
	""")

