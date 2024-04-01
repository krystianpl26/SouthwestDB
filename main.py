import mysql.connector

# Connect to the database
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Admin101",
    port="3306",
    database="SouthWestDB"
)

# Create a cursor object
mycursor = mydb.cursor()

# Define a list of table names
table_names = ['Flight', 'RewardsProgram', 'Customer', 'Payment', 'Booking',
               'CustomerServiceRepresentative', 'SpecialOffer', 'Crew']

# Iterate over each table
for table_name in table_names:
    print(f"Printing data from {table_name} table:")

    # Execute SQL query to fetch all rows from the current table
    mycursor.execute(f"SELECT * FROM {table_name}")

    # Fetch all rows
    rows = mycursor.fetchall()

    # Print the results
    for row in rows:
        print(row)

# Close the cursor and connection
mycursor.close()
mydb.close()
