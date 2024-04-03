import mysql.connector

# Function to display the menu
def display_menu():
    print("\n===== Southwest Database Menu =====")
    print("1. Manage Flights")
    print("2. Manage Rewards Programs")
    print("3. Manage Customers")
    print("4. Manage Payments")
    print("5. Manage Bookings")
    print("6. Manage Customer Service Representatives")
    print("7. Manage Special Offers")
    print("8. Manage Crew")
    print("9. Exit")

# Function to view all records in a table
def view_all(table_name):
    try:
        mycursor.execute(f"SELECT * FROM {table_name}")
        records = mycursor.fetchall()
        for record in records:
            print(record)
    except mysql.connector.Error as err:
        print(f"Error viewing records from {table_name}:", err)


# Connect to the database (Replace with your details)
try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Admin101",
        port="3306",
        database="SouthWestDB"
    )
except mysql.connector.Error as err:
    print("Error connecting to the database:", err)
    exit(1)

# Create a cursor object
mycursor = mydb.cursor()

# Main loop for menu interaction
while True:
    display_menu()
    choice = input("Enter your choice: ")

    if choice == "9":  # Exit
        print("Exiting program.")
        break

    elif choice.isdigit() and 1 <= int(choice) <= 8:
        table_names = ['Flight', 'RewardsProgram', 'Customer', 'Payment', 'Booking',
                       'CustomerServiceRepresentative', 'SpecialOffer', 'Crew']
        table_name = table_names[int(choice) - 1]
        print(f"\n===== Manage {table_name} =====")
        print("1. View All")
        print("2. Add New")
        print("3. Update Details")
        print("4. Delete")
        print("5. Back to Main Menu")
        sub_choice = input("Enter your choice: ")

        if sub_choice == "1":  # View All
            print(f"\n===== All {table_name}s =====")
            view_all(table_name)

        # Add logic for other options (Add New, Update, Delete) here

    else:
        print("Invalid choice. Please enter a number from 1 to 9.")

# Close the cursor and connection
mycursor.close()
mydb.close()

