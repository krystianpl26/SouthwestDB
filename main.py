############# Database Initialization #############
import pymysql as sql

# Connect to the database (Replace with your details)
try:
    mydb = sql.connect(
        host="localhost",
        user="root",
        password="li200461",
        port=3306,
        database="SouthWestDB"
    )
except sql.Error as err:
    print("Error connecting to the database:", err)
    exit(1)

# Create a cursor object
mycursor = mydb.cursor()

############# Database Functions #############
# Function to view all records in a table
def view_all(table_name):
    try:
        mycursor.execute(f"SELECT * FROM {table_name}")
        records = mycursor.fetchall()
        for record in records:
            print(record)
    except sql.Error as err:
        print(f"Error viewing records from {table_name}:", err)

# Function to update/edit a record in a table
def update(name, attribute, edit, PK):
    if name == "Flight":
        mycursor.execute(f"UPDATE {name} SET {attribute} = {edit} WHERE flightID = {PK}")
    elif name == "RewardsProgram":
        mycursor.execute(f"UPDATE {name} SET {attribute} = {edit} WHERE rewardsprogramID = {PK}")
    elif name == "Customer":
        mycursor.execute(f"UPDATE {name} SET {attribute} = {edit} WHERE customerID = {PK}")
    elif name == "Payment":
        mycursor.execute(f"UPDATE {name} SET {attribute} = {edit} WHERE paymentID = {PK}")
    elif name == "Booking":
        mycursor.execute(f"UPDATE {name} SET {attribute} = {edit} WHERE bookingID = {PK}")
    elif name == "CustomerServiceRepresentative":
        mycursor.execute(f"UPDATE {name} SET {attribute} = {edit} WHERE serviceID = {PK}")
    elif name == "SpecialOffer":
        mycursor.execute(f"UPDATE {name} SET {attribute} = {edit} WHERE offerID = {PK}")
    elif name == "Crew":
        mycursor.execute(f"UPDATE {name} SET {attribute} = {edit} WHERE crewID = {PK}")
    print(f"\n {attribute} in {table_name} with ID of {ID} has sucessfully been updated to {edit}!")
    view_all(table_name)

############# Database Menu #############
# Function to display the menu
print("Welcome to the Southwest Database! Please select an option below:")
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
    print("==================================")

def display_submenu():
    print(f"\n===== Manage {table_name} =====")
    print("1. View All")
    print("2. Add New")
    print("3. Update Details")
    print("4. Delete")
    print("5. Back to Main Menu")
    print("=========================")

def ask_attribute():
    return input(f"\nPlease select an attribute from {table_name}: ")

def ask_attribute2():
    print(f"Please select a valid attribute from {table_name}: ")
def ask_PK():
    view_all(table_name)
    return input("\nPlease select the primary key ID for whose attribute will be updated: ")
def ask_edit():
    return input("What do you wish to edit the attribute at this ID to? ")

def flight_categories():
    table_name = "Flight"
    print("\n1. Departure Airport")
    print("2. Arrival Airport")
    print("3. Departure Time")
    print("4. Arrival Time")
    print("5. Date")
    response = ask_attribute()
    if response == "1":
        table_attribute = "departureairport"
    elif response == "2":
        table_attribute = "arrivalairport"
    elif response == "3":
        table_attribute = "departuretime"
    elif response == "4":
        table_attribute = "arrivaltime"
    elif response == "5":
        table_attribute = "date"
    else:
        ask_attribute2()
        flight_categories()
    return table_attribute
def reward_categories():
    table_name = "RewardsProgram"
    print("\n1. Points Earned")
    print("2. Points Redeemed")
    response = ask_attribute()
    if response == "1":
        table_attribute = "pointsearned"
    elif response == "2":
        table_attribute = "pointsredeemed"
    else:
        ask_attribute2()
        reward_categories()
    return table_attribute
def customer_categories():
    table_name = "Customer"
    print("\n1. First Name")
    print("2. Last Name")
    print("3. Email")
    print("4. Phone Number")
    print("5. Street")
    print("6. City")
    print("7. Rewards ID")
    response = ask_attribute()
    if response == "1":
        table_attribute = "firstname"
    elif response == "2":
        table_attribute = "lastname"
    elif response == "3":
        table_attribute = "email"
    elif response == "4":
        table_attribute = "phonenumber"
    elif response == "5":
        table_attribute = "street"
    elif response == "6":
        table_attribute = "city"
    elif response == "7":
        table_attribute = "rewardsid"
    else:
        ask_attribute2()
        customer_categories()
    return table_attribute
def payment_categories():
    table_name = "Payment"
    print("\n1. Cost")
    print("2. Payment Method")
    response = ask_attribute()
    if response == "1":
        table_attribute = "cost"
    elif response == "2":
        table_attribute = "paymentmethod"
    else:
        ask_attribute2()
        payment_categories()
    return table_attribute
def booking_categories():
    table_name = "Booking"
    print("\n1. Booking Date")
    print("2. Seat Number")
    print("3. Flight ID")
    print("4. Customer ID")
    print("5. Payment ID")
    response = ask_attribute()
    if response == "1":
        table_attrrespibute = "bookingdate"
    elif response == "2":
        table_attribute = "seatnumber"
    elif response == "3":
        table_attribute = "flightid"
    elif response == "4":
        table_attribute = "customerid"
    elif response == "5":
        table_attribute = "paymentid"
    else:
        ask_attribute2()
        booking_categories()
    return table_attribute
def customer_service_categories():
    table_name = "CustomerServiceRepresentative"
    print("\n1. Service Status")
    print("2. Contact Method")
    print("3. Contact Details")
    print("4. Customer ID")
    response = ask_attribute()
    if response == "1":
        table_attribute = "servicestatus"
    elif response == "2":
        table_attribute = "contactmethod"
    elif response == "3":
        table_attribute = "contactdetails"
    elif response == "4":
        table_attribute = "customerid"
    else:
        ask_attribute2()
        customer_service_categories()
    return table_attribute
def offer_categories():
    table_name = "SpecialOffer"
    print("\n1. Discount%")
    print("2. Customer ID")
    response = ask_attribute()
    if response == "1":
        table_attribute = "`discount%`"
    elif response  == "2":
        table_attribute = "customerid"
    else:
        ask_attribute2()
        offer_categories()
    return table_attribute
def crew_categories():
    table_name = "Crew"
    print("\n1. First Name")
    print("2. Last Name")
    print("3. Role")
    print("4. Flight ID")
    response = ask_attribute()
    if response == "1":
        table_attribute = "firstname"
    elif response == "2":
        table_attribute = "lastname"
    elif response == "3":
        table_attribute = "role"
    elif response == "4":
        table_attribute = "flightid"
    else:
        ask_attribute2()
        crew_categories()
    return table_attribute

# Main loop for menu interaction
while True:
    display_menu()
    choice = input("Enter your choice: ")

    # Exit the database
    if choice == "9":
        print("Exiting program.")
        break

    # Take action given the input
    elif choice.isdigit() and 1 <= int(choice) <= 8:
        table_names = ['Flight', 'RewardsProgram', 'Customer', 'Payment', 'Booking',
                       'CustomerServiceRepresentative', 'SpecialOffer', 'Crew']
        table_name = table_names[int(choice) - 1]
        display_submenu()
        sub_choice = input("Enter your choice: ")

        # View All
        if sub_choice == "1":
            print(f"\n===== All {table_name}s =====")
            view_all(table_name)

        # Update Details
        if sub_choice == "3":
            if choice == "1": # Flight
                attribute = flight_categories()
                ID = ask_PK()
                edit = ask_edit()
                update(table_name, attribute, edit, ID)
            elif choice == "2": # RewardsProgram
                attribute = reward_categories()
                ID = ask_PK()
                edit = ask_edit()
                update(table_name, attribute, edit, ID)
            elif choice == "3": # Customer
                attribute = customer_categories()
                ID = ask_PK()
                edit = ask_edit()
                update(table_name, attribute, edit, ID)
            elif choice == "4": # Payment
                attribute = payment_categories()
                ID = ask_PK()
                edit = ask_edit()
                update(table_name, attribute, edit, ID)
            elif choice == "5": # Booking
                attribute = booking_categories()
                ID = ask_PK()
                edit = ask_edit()
                update(table_name, attribute, edit, ID)
            elif choice == "6": # CustomerServiceRepresentative
                attribute = customer_service_categories()
                ID = ask_PK()
                edit = ask_edit()
                update(table_name, attribute, edit, ID)
            elif choice == "7": # SpecialOffer
                attribute = offer_categories()
                ID = ask_PK()
                edit = ask_edit()
                update(table_name, attribute, edit, ID)
            elif choice == "8": # Crew
                attribute = crew_categories()
                ID = ask_PK()
                edit = ask_edit()
                update(table_name, attribute, edit, ID)

        # Add logic for other options (Add New, Update, Delete) here

    else:
        print("Invalid choice. Please enter a number from 1 to 9.")

# Close the cursor and connection
mycursor.close()
mydb.close()
