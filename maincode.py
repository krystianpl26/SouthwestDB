############# Database Initialization #############
import colorama
import mysql.connector
from colorama import init, Fore, Style
from rich.console import Console
from rich.text import Text
import pyfiglet
colorama.init()

# Connect to the database (Replace with your details)
try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Admin101",
        port=3306,
        database="SouthWestDB"
    )
except mysql.connector as err:
    print("Error connecting to the database:", err)
    exit(1)

# Create a cursor object
mycursor = mydb.cursor()

############# Database Menu #############
# Functions to display the menu
def display_start():
    # Print the ASCII art of the airplane

    print("")
    print("                                        -.                 `|.                                                     ")
    print("                                        |:\\-,              .| \\                                                   ")
    print("                                        |: `.------------------------------------.                                 ")
    print("                                        / /   o o o o o o o o o o o o o.-.o o   (_`.                               ")
    print("                                       /_ \\_   SOUTHWEST  .     .=     |'|         `)                              ")
    print("                                            ``_____________//    /_________________/               ")
    print("                                                          //____/                                     ")
    print("                                                                     ")

    print("            __|__                             __|__                             __|__                             __|__")
    print("     --o--o--(_)--o--o--               --o--o--(_)--o--o--               --o--o--(_)--o--o--               --o--o--(_)--o--o--")

    # Generate the banner text
    banner_text = pyfiglet.figlet_format('Southwest Airlines Database', width=200)

    # Create a Text object and set its style to bold and print it
    text = Text(banner_text, style='bold')
    console = Console()
    console.print(text, style="blue")

    # Print the ASCII art of the airplane
    print("            __|__                             __|__                             __|__                             __|__")
    print("     --o--o--(_)--o--o--               --o--o--(_)--o--o--               --o--o--(_)--o--o--               --o--o--(_)--o--o--")

def display_menu():
    print("\n\033[1m\033[34m===== Southwest Database Menu =====\033[0m")
    print("\033[94m1. Manage Flights\033[0m")
    print("\033[91m2. Manage Rewards Programs\033[0m")
    print("\033[33m3. Manage Customers\033[0m")
    print("\033[94m4. Manage Payments\033[0m")
    print("\033[91m5. Manage Bookings\033[0m")
    print("\033[33m6. Manage Customer Service Representatives\033[0m")
    print("\033[94m7. Manage Special Offers\033[0m")
    print("\033[91m8. Manage Crew\033[0m")
    print("\033[33m9. Complex Queries\033[0m")
    print("\033[34m10. Exit\033[0m")

def display_submenu():
    print(f"\n\033[1m\033[34m===== Manage {table_name} =====\033[0m")
    print("\033[94m1. View All\033[0m")
    print("\033[91m2. Add New\033[0m")
    print("\033[33m3. Update Details\033[0m")
    print("\033[94m4. Delete\033[0m")
    print("\033[91m5. Back to Main Menu\033[0m")
    print("\033[1m\033[34m=========================\033[0m")
    sub_choice = input("Enter your choice: ")

    if sub_choice == "1":  # View All
        print(f"\n===== All {table_name}s =====")
        view_all(table_name)
        reprompt_CRUD()
    elif sub_choice == "2":  # Add New
        print(f"\n===== Enter {table_name} you want to add =====")
        add_new(table_name)
        reprompt_CRUD()
    elif sub_choice == "3":  # Update Details
        if choice == "1":  # Flight
            attribute = flight_categories()
        elif choice == "2":  # RewardsProgram
            attribute = reward_categories()
        elif choice == "3":  # Customer
            attribute = customer_categories()
        elif choice == "4":  # Payment
            attribute = payment_categories()
        elif choice == "5":  # Booking
            attribute = booking_categories()
        elif choice == "6":  # CustomerServiceRepresentative
            attribute = customer_service_categories()
        elif choice == "7":  # SpecialOffer
            attribute = offer_categories()
        elif choice == "8":  # Crew
            attribute = crew_categories()

        view_all(table_name)
        ID = input("\nPlease select the primary key ID for whose attribute will be updated: ")
        edit = ask_edit()
        update(table_name, attribute, edit, ID)
        reprompt_CRUD()
    elif sub_choice == "4":  # Delete
        delete_entry(table_name)
        reprompt_CRUD()
    elif sub_choice == "5": # back
        display_menu()
    else:
        print("Please enter a valid input (1-4). ")
        display_submenu()

def display_view_menu():
    print("\033[1m\033[34mChoose the type of query you want to see:\033[0m")
    print("\033[91m1. Customer-Flight\033[0m")
    print("\033[94m2. Customer-Booking\033[0m")
    print("\033[33m3. Customer-Payment\033[0m")
    print("\033[91m4. Customer-RewardsProgram\033[0m")
    print("\033[94m5. Customer-SpecialOffer\033[0m")
    print("\033[33m6. Customer-CustomerServiceRepresentative \033[0m")

    view_choice = input("Enter your choice: ")
    if view_choice == "1":  # c-f
        operation_view_1()
    elif view_choice == "2":  # c-b
        operation_view_2()
    elif view_choice == "3":  # c-p
        operation_view_3()
    elif view_choice == "4":  # c-rp
        operation_view_4()
    elif view_choice == "5":  # c-so
        operation_view_5()
    elif view_choice == "6":  # c-csr
        operation_view_6()
    else:
        print("Invalid view")

def display_query_menu():
    print("\n\033[1m\033[34mChoose the type of view you want to run: \033[0m")
    print("\033[94m1. Set Operations\033[0m")
    print("\033[91m2. Set Membership\033[0m")
    print("\033[33m3. Set Comparison\033[0m")
    print("\033[94m4. Subqueries using the WITH Clause\033[0m")
    print("\033[91m5. Advanced Aggregate Functions\033[0m")
    print("\033[33m6. OLAP\033[0m")
    print("\033[94m7. Back to Main Menu\033[0m")

    query_type = input("Enter your choice: ")

    # Set Operations
    if query_type == "1":
        display_query1_menu()
    # Set Membership
    elif query_type == "2":
        display_query2_menu()
    # Set Comparison
    elif query_type == "3":
        display_query3_menu()
    # Subqueries using WITH
    elif query_type == "4":
        display_query4_menu()
    # Advanced Aggregate Functions
    elif query_type == "5":
        display_query5_menu()
    # OLAP
    elif query_type == "6":
        display_query6_menu()
    # back
    elif query_type == "7":
        display_menu()
    else:
        print("Please enter a valid input (1-7). ")
        display_query_menu()

# Run queries that utilize set operation
def display_query1_menu():
    print("\n\033[1m\033[34mChoose the query you want to run: \033[0m")
    print("\033[94m1. Display Customers on a Flight\033[0m")
    print("\033[91m2. Count Passengers on a Flight\033[0m")
    print("\033[33m3. Count Crews on a Flight\033[0m")
    print("\033[94m4. Locate Customer's Flight\033[0m")
    print("\033[91m5. Locate Customer's Payment\033[0m")
    print("\033[33m6. Locate Customer's Service Request\033[0m")
    print("\033[94m7. Locate Customer's Rewards\033[0m")
    print("\033[91m8. View Current Points\033[0m")
    print("\033[94m9. Views")
    print("\033[33m10. Back to Query Menu \033[0m")

    operation_query_choice = input("Enter your choice: ")

    if operation_query_choice == "1":  # Display Seating
        operation_query_1()
        reprompt_operation_query()
    elif operation_query_choice == "2":  # Count number of passengers on a flight
        operation_query_2()
        reprompt_operation_query()
    elif operation_query_choice == "3":  # Count crews on a flight
        operation_query_3()
        reprompt_operation_query()
    elif operation_query_choice == "4":  # Locate flight
        operation_query_4()
        reprompt_operation_query()
    elif operation_query_choice == "5":  # Locate payment
        operation_query_5()
        reprompt_operation_query()
    elif operation_query_choice == "6":  # Locate service
        operation_query_6()
        reprompt_operation_query()
    elif operation_query_choice == "7":  # Locate rewards
        operation_query_7()
        reprompt_operation_query()
    elif operation_query_choice == "8":  # check current points
        operation_query_8()
        reprompt_operation_query()
    elif operation_query_choice == "9":  # Views
        display_view_menu()
        reprompt_view_query()
    elif operation_query_choice == "10": # back
        display_query_menu()
    else:
        print("Please enter a valid input (1-10). ")
        display_query1_menu()

# Run queries that utilize set membership
def display_query2_menu():
    print("\n\033[1m\033[34mChoose the query you want to run: \033[0m")
    print("\033[94m1. Cancel a Booking\033[0m")
    print("\033[91m2. Cancel a Flight\033[0m")
    print("\033[33m3. Search Customer by City\033[0m")
    print("\033[94m4. Search Crew by Role\033[0m")
    print("\033[91m5. Search Booking by Flight\033[0m")
    print("\033[33m6. Search Payment by Payment Method\033[0m")
    print("\033[91m7. Back to Query Menu\033[0m")

    membership_query_choice = input("Enter your choice: ")

    if membership_query_choice == "1":  # "cancel" a booking
        membership_query_1()
        reprompt_membership_query()
    elif membership_query_choice == "2":  # cancel a flight
        membership_query_2()
        reprompt_membership_query()
    elif membership_query_choice == "3":  # search customer by city
        membership_query_3()
        reprompt_membership_query()
    elif membership_query_choice == "4":  # search by crew role
        membership_query_4()
        reprompt_membership_query()
    elif membership_query_choice == "5":  # search booking by flightID
        membership_query_5()
        reprompt_membership_query()
    elif membership_query_choice == "6":  # search by payment method
        membership_query_6()
        reprompt_membership_query()
    elif membership_query_choice == "7": #back
        display_query_menu()
    else:
        print("Please enter a valid input (1-7)." )
        display_query2_menu()

# Run queries that utilize set comparisons
def display_query3_menu():
    print("\n\033[1m\033[34mChoose the query you want to run: \033[0m")
    print("\033[94m1. Filter by Unresolved Customer Service Tickets\033[0m")
    print("\033[91m2. Display Flight Durations\033[0m")
    print("\033[33m3. Check Greater Payments\033[0m")
    print("\033[33m4. Check Lesser Payments\033[0m")
    print("\033[94m5. Check Greater Points\033[0m")
    print("\033[94m6. Check Lesser Points\033[0m")
    print("\033[91m7. Check Later Flight Departuer Time\033[0m")
    print("\033[91m8. Check Later Flight Arrival Time\033[0m")
    print("\033[33m9. Back to Query Menu\033[0m")

    comparison_query_choice = input("Enter your choice: ")

    if comparison_query_choice == "1":  # find unresolved tickets
        comparison_query_1()
        reprompt_comparison_query()
    elif comparison_query_choice == "2":  # flight duration
        comparison_query_2()
        reprompt_comparison_query()
    elif comparison_query_choice == "3":  # check payments >
        comparison_query_3()
        reprompt_comparison_query()
    elif comparison_query_choice == "4":  # check payments <
        comparison_query_4()
        reprompt_comparison_query()
    elif comparison_query_choice == "5":  # check points <
        comparison_query_5()
        reprompt_comparison_query()
    elif comparison_query_choice == "6":  # check points >
        comparison_query_6()
        reprompt_comparison_query()
    elif comparison_query_choice == "7":  # check flight d.time >
        comparison_query_7()
        reprompt_comparison_query()
    elif comparison_query_choice == "8":  # check flight a.time >
        comparison_query_8()
        reprompt_comparison_query()
    elif comparison_query_choice == "9":  # return to query menu
        display_query_menu()
    else:
        print("Please enter a valid input (1-9). ")
        display_query3_menu()

# Run queries contained in the "WITH" clause
def display_query4_menu():
    print("\n\033[1m\033[34mChoose the query you want to run:\033[0m")
    print("\033[94m1. Find Top % of Paying Customers\033[0m")
    print("\033[91m2. Cheapest and Most Expensive Payment\033[0m")
    print("\033[33m3. Customer Loyalty by Z-Score for Points\033[0m")
    print("\033[34m4. Shortest and Longest Flight Durations \033[0m")
    print("\033[91m5. Back to Query Menu\033[0m")

    with_query_choice = input("Enter your choice: ")

    if with_query_choice == "1":  # top % of paying customers
        with_query_1()
        reprompt_with_query()
    elif with_query_choice == "2":  # highest and lowest payment
        with_query_2()
        reprompt_with_query()
    elif with_query_choice == "3":  # z-score loyalty
        with_query_3()
        reprompt_with_query()
    elif with_query_choice == "4":  # min/max
        with_query_4()
        reprompt_with_query()
    elif with_query_choice == "5": # back
        display_query_menu()
    else:
        print("Please enter a valid input (1-5). ")
        display_query4_menu()

# Run queries involving advanced aggregate functions
def display_query5_menu():
    print("\n\033[1m\033[34mChoose the query you want to run:\033[0m")
    print("\033[94m1. Calculate Running Total of Costs in Payment Table\033[0m")
    print("\033[91m2. Moving Total of Revenue per Year from Customers\033[0m")
    print("\033[33m3. Running Totals of Bookings per Flight\033[0m")
    print("\033[94m4. Monthly Moving Averages and Running Totals for Booking per Year\033[0m")
    print("\033[91m5. Customer Loyalty Tier By Points\033[0m")
    print("\033[33m6. Calculate Customer's Discounted Price\033[0m")
    print("\033[94m7. Customer's % Distribution to Total Revenue\033[0m")
    print("\033[91m8. Back to Query Menu\033[0m")

    advanced_query_choice = input("Enter your choice: ")

    if advanced_query_choice == "1":  # running total of cost
        aggregate_function_query_1()
        reprompt_aggregate_query()
    elif advanced_query_choice == "2":  # moving total of revenue per year
        aggregate_function_query_2()
        reprompt_aggregate_query()
    elif advanced_query_choice == "3":  # running total of bookings per flight
        aggregate_function_query_3()
        reprompt_aggregate_query()
    elif advanced_query_choice == "4":  # moving average and running total of bookings each month per year
        aggregate_function_query_4()
        reprompt_aggregate_query()
    elif advanced_query_choice == "5":  # Customer loyalty by points
        aggregate_function_query_5()
        reprompt_aggregate_query()
    elif advanced_query_choice == "6":  # customer's discounted price
        aggregate_function_query_6()
        reprompt_aggregate_query()
    elif advanced_query_choice == "7":  # % of total payment
        aggregate_function_query_7()
        reprompt_aggregate_query()
    elif advanced_query_choice == "8":  # back
        display_query_menu()
    else:
        print("Please enter a valid input (1-8). ")
        display_query5_menu()

# Run OLAP query
def display_query6_menu():
    print("\n\033[1m\033[34mChoose the OLAP query you want to run:\033[0m")
    print("\033[94m1. Total Sales per Flight with Rollup\033[0m")
    print("\033[91m2. Unique Bookings per Flight\033[0m")
    print("\033[33m3. Customer Booking Frequency\033[0m")
    print("\033[94m4. Customer Loyalty Tier By Bookings\033[0m")
    print("\033[91m5. Total Revenue per Payment Method\033[0m")
    print("\033[33m6. Crew Composition per Flight\033[0m")
    print("\033[94m7. Total Contact Methods \033[0m")
    print("\033[91m8. Back to Query Menu \033[0m")

    olap_query_choice = input("Enter your choice: ")

    if olap_query_choice == "1":  # total sales per flight w/ rollup
        olap_query_1()
        reprompt_olap_query()
    elif olap_query_choice == "2":  # unique bookings per flight
        olap_query_2()
        reprompt_olap_query()
    elif olap_query_choice == "3":  # customer booking frequency
        olap_query_3()
        reprompt_olap_query()
    elif olap_query_choice == "4":  # customer loyalty tier by booking
        olap_query_4()
        reprompt_olap_query()
    elif olap_query_choice == "5":  # total revenue by payment method
        olap_query_5()
        reprompt_olap_query()
    elif olap_query_choice == "6":  # crew composition by flight
        olap_query_6()
        reprompt_olap_query()
    elif olap_query_choice == "7":  # Count contact methods
        olap_query_7()
        reprompt_olap_query()
    elif olap_query_choice == "8":  # back
        display_query_menu()
    else:
        print("Please enter a valid input (1-8). ")
        display_query6_menu()

# align the table and make columns show up
def display_table():
    try:
        records = mycursor.fetchall()
        # get the column names
        columns = [desc[0] for desc in mycursor.description]
        # get max width of columns
        max_width = [max(len(str(column)), max(len(str(record[i])) for record in records)) for i, column in
                     enumerate(columns)]
        # column separator
        print(' | '.join(column.center(width) for column, width in zip(columns, max_width)))
        # column names separator
        total_width = sum(max_width) + (len(columns) - 1) * 3
        print('-' * total_width)

        # Print centered records
        for record in records:
            print(' | '.join(str(field).center(width) for field, width in zip(record, max_width)))
    except:
        print("No valid output data.")

# Function to view all records in a table
def view_all(table_name):
    try:
        # get data
        mycursor.execute(f"SELECT * FROM {table_name}")
        display_table()

    except mysql.connector.Error as err:
        print(f"Error viewing records from {table_name}:", err)

# Function to add new entries to a table
def add_new(table_name):
    table_fields = {
        'Flight': ['FlightID', 'DepartureAirport', 'ArrivalAirport', 'DepartureTime', 'ArrivalTime', 'Date'],
        'RewardsProgram': ['CustomerID', 'PointsEarned', 'PointsRedeemed'],
        'Customer': ['CustomerID', 'FirstName', 'LastName', 'Email', 'PhoneNumber', 'Street', 'City', 'FlightID'],
        'Payment': ['PaymentID', 'Cost', 'PaymentMethod'],
        'Booking': ['BookingID', 'BookingDate', 'SeatNumber', 'FlightID', 'CustomerID', 'PaymentID'],
        'CustomerServiceRepresentative': ['ServiceID', 'ServiceStatus', 'ContactMethod', 'ContactDetails',
                                          'CustomerID'],
        'SpecialOffer': ['OfferID', '`Discount%`', 'CustomerID'],
        'Crew': ['CrewID', 'FirstName', 'LastName', 'Role', 'FlightID']
    }

    # insert into statement
    fields = table_fields[table_name]
    placeholders = ', '.join(['%s'] * len(fields))
    insert_query = f"INSERT INTO {table_name} ({', '.join(fields)}) VALUES ({placeholders})"

    # obtain value of user
    view_all(table_name)
    values = [input(f"Provide {field}: ") for field in fields]

    # executing insert command
    try:
        mycursor.execute(insert_query, tuple(values))
        mydb.commit()
        print(f"Successfully added new record to {table_name}")
        view_all(table_name)
    except mysql.connector.Error as err:
        print(f"Error adding new record to {table_name}")

# Function to update an attribute by PK
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
    print(f"\n{attribute} in {table_name} has sucessfully been updated to {edit}!")
    mydb.commit()
    view_all(table_name)

# Delete an entry from the database
def delete_entry(table_name):
    view_all(table_name)
    column_name = input("\nEnter the column name to specify the entry: ")
    column_value = input("Enter the value of the column to delete: ")
    try:
        mycursor.execute(f"DELETE FROM {table_name} WHERE {column_name} = %s", (column_value,))
        print("Entry deleted successfully.\n")
        mydb.commit()
        view_all(table_name)
    except mysql.connector.Error as err:
        print(f"Error deleting entry: {err}")

############# Database Secondary Functions #############
def reprompt_CRUD():
    prompt = input("\nWould you like to use CRUD again? (y/n): ")
    if prompt == "y":
        display_submenu()
    elif prompt == "n":
        pass
    else:
        print("Please enter a valid input.")
        reprompt_CRUD()

def reprompt_operation_query():
    prompt = input("\nWould you like to use another set operation query again? (y/n): ")
    if prompt == "y":
        display_query1_menu()
    elif prompt == "n":
        pass
    else:
        print("Please enter a valid input.")
        reprompt_operation_query()

def reprompt_view_query():
    prompt = input("\nWould you like to use another view query again? (y/n): ")
    if prompt == "y":
        display_view_menu()
        reprompt_view_query()
    elif prompt == "n":
        pass
    else:
        print("Please enter a valid input.")
        reprompt_view_query()

def reprompt_membership_query():
    prompt = input("\nWould you like to use another membership query again? (y/n): ")
    if prompt == "y":
        display_query2_menu()
    elif prompt == "n":
        pass
    else:
        print("Please enter a valid input.")
        reprompt_membership_query()

def reprompt_comparison_query():
    prompt = input("\nWould you like to use another comparison query again? (y/n): ")
    if prompt == "y":
        display_query3_menu()
    elif prompt == "n":
        pass
    else:
        print("Please enter a valid input.")
        reprompt_comparison_query()

def reprompt_with_query():
    prompt = input("\nWould you like to use another 'with' query again? (y/n): ")
    if prompt == "y":
        display_query4_menu()
    elif prompt == "n":
        pass
    else:
        print("Please enter a valid input.")
        reprompt_with_query()

def reprompt_aggregate_query():
    prompt = input("\nWould you like to use another aggregate query again? (y/n): ")
    if prompt == "y":
        display_query5_menu()
    elif prompt == "n":
        pass
    else:
        print("Please enter a valid input.")
        reprompt_aggregate_query()

def reprompt_olap_query():
    prompt = input("\nWould you like to use another OLAP query again? (y/n): ")
    if prompt == "y":
        display_query6_menu()
    elif prompt == "n":
        pass
    else:
        print("Please enter a valid input.")
        reprompt_olap_query()

def ask_attribute():
    return input(f"\nPlease select an attribute from {table_name}: ")

def ask_edit():
    edit = input("What do you wish to edit the attribute at this ID to? ")
    edit = "'" + edit + "'"
    return edit

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
        print("Invalid attribute. Please try again.")
        ask_attribute()
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
        print("Invalid attribute. Please try again.")
        ask_attribute()
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
        print("Invalid attribute. Please try again.")
        ask_attribute()
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
        print("Invalid attribute. Please try again.")
        ask_attribute()
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
        table_attribute = "bookingdate"
    elif response == "2":
        table_attribute = "seatnumber"
    elif response == "3":
        table_attribute = "flightid"
    elif response == "4":
        table_attribute = "customerid"
    elif response == "5":
        table_attribute = "paymentid"
    else:
        print("Invalid attribute. Please try again.")
        ask_attribute()
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
        print("Invalid attribute. Please try again.")
        ask_attribute()
        customer_service_categories()
    return table_attribute

def offer_categories():
    table_name = "SpecialOffer"
    print("\n1. Discount%")
    print("2. Customer ID")
    response = ask_attribute()
    if response == "1":
        table_attribute = "`discount%`"
    elif response == "2":
        table_attribute = "customerid"
    else:
        print("Invalid attribute. Please try again.")
        ask_attribute()
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
        print("Invalid attribute. Please try again.")
        ask_attribute()
        crew_categories()
    return table_attribute

def next():
    try:
        mycursor.nextset()
    except:
        pass

############# Database Functions #############
# display flight seatings
def operation_query_1():
    view_all("Flight")
    FID = input("Please enter a FlightID: ")
    try:
        query = f"""
        CALL DisplaySeating({FID});
        """
        mycursor.execute(query)
        display_table()
        next()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Count passengers on flight
def operation_query_2():
    view_all("Flight")
    FID = FID = input("Please enter a FlightID: ")
    try:
        query = f"""
        SELECT Booking.FlightID, BookingID, Customer.CustomerID, FirstName, LastName, FlightCount({FID}) 
        FROM Booking, Customer
        WHERE Booking.FlightID = {FID} AND Booking.CustomerID = Customer.CustomerID;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Count passengers on flight
def operation_query_3():
    view_all("Flight")
    FID = FID = input("Please enter a FlightID: ")
    try:
        query = f"""
        SELECT Crew.FlightID, Crew.CrewID, Role, FirstName, LastName, CrewCount({FID})
        FROM Crew
        WHERE Crew.FlightID = {FID};
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Locate a customer's flight
def operation_query_4():
    view_all("Customer")
    CID = input("Please enter a CustomerID: ")
    try:
        query = f"""
        CALL LocateFlight({CID});
        """
        mycursor.execute(query)
        display_table()
        next()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Locate a customer's payment
def operation_query_5():
    view_all("Customer")
    CID = input("Please enter a CustomerID: ")
    try:
        query = f"""
        CALL LocatePayment({CID});
        """
        mycursor.execute(query)
        display_table()
        next()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Locate a customer's service
def operation_query_6():
    view_all("Customer")
    CID = input("Please enter a CustomerID: ")
    try:
        query = f"""
        CALL LocateService({CID});
        """
        mycursor.execute(query)
        display_table()
        next()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Locate a customer's rewards
def operation_query_7():
    view_all("Customer")
    CID = input("Please enter a CustomerID: ")
    try:
        query = f"""
        CALL LocateRewards({CID});
        """
        mycursor.execute(query)
        display_table()
        next()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Show current points
def operation_query_8():
    try:
        query = f"""
        SELECT CustomerID, RP.RewardsID, FirstName, LastName, PointsEarned, PointsRedeemed, PointsEarned - PointsRedeemed AS CurrentPoints
        FROM Customer, RewardsProgram RP
        WHERE Customer.RewardsID = RP.RewardsID
        ORDER BY CurrentPoints DESC;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# customer-flight
def operation_view_1():
    try:
        query = """
        SELECT * FROM CustomerFlight;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# customer-booking
def operation_view_2():
    try:
        query = """
        SELECT * FROM CustomerBooking;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# customer-payment
def operation_view_3():
    try:
        query = """
        SELECT * FROM CustomerPayment;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# customer-rewards
def operation_view_4():
    try:
        query = """
        SELECT * FROM CustomerRewardsProgram;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# customer-offer
def operation_view_5():
    try:
        query = """
        SELECT * FROM CustomerSpecialOffer;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# customer-CSR
def operation_view_6():
    try:
        query = """
        SELECT * FROM CustomerCustomerServiceRepresentative;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# cancel a booking
def membership_query_1():
    view_all("Booking")
    CID = input("Please enter the CustomerID whose Bookings will be removed: ")
    try:
        query = f"""
        CALL CancelBooking({CID});
        """
        mycursor.execute(query)
        view_all("Booking")

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# cancel a flight
def membership_query_2():
    view_all("Flight")
    FID = input("Please enter the FlightID that will be canceled: ")
    try:
        query = f"""
        CALL CancelFlight({FID});
        """
        mycursor.execute(query)
        view_all("Flight")

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# search by city
def membership_query_3():
    city = input("Please enter a city: ")
    city = "'" + city + "'"
    try:
        query = f"""
        SELECT * FROM Customer WHERE City IN ({city})
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# search by crew role
def membership_query_4():
    role = input("Please enter a crew role: ")
    role = "'" + role + "'"
    try:
        query = f"""
        SELECT * FROM Crew WHERE Role IN ({role})
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# search booking by flight
def membership_query_5():
    view_all("Flight")
    FID = input("Please enter a FlightID: ")
    FID = "'" + FID + "'"
    try:
        query = f"""
        SELECT * FROM Booking WHERE FlightID IN ({FID})
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# search by payment method
def membership_query_6():
    method = input("Please enter a payment method: ")
    method = "'" + method +"'"
    try:
        query = f"""
        SELECT * FROM Payment WHERE PaymentMethod IN ({method})
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# search for unresolved tickets
def comparison_query_1():
    try:
        query = """
            SELECT ServiceID, ServiceStatus, Customer.customerID, FirstName, LastName, ContactMethod, ContactDetails
            FROM CustomerServiceRepresentative AS CSR, Customer
            WHERE Customer.CustomerID = CSR.CustomerID AND ServiceStatus != 'resolved';
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Flight duration
def comparison_query_2():
    try:
        query = """
            SELECT FlightID, DepartureAirport, ArrivalAirport, DepartureTime, ArrivalTime, Date, 
                CASE
                    WHEN TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p')) >= 0 
                        THEN TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p'))
                    ELSE ADDTIME(TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p')), '24:00:00')
                END AS Duration
            FROM Flight
            ORDER BY Duration DESC;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# check > payment
def comparison_query_3():
    cost = input("Please enter the cost for which you would want to find greater values for: ")
    try:
        query = f"""
            SELECT * FROM Payment where Cost > {cost}
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# check < payment
def comparison_query_4():
    cost = input("Please enter the cost for which you would want to find lesser values for: ")
    try:
        query = f"""
            SELECT * FROM Payment where Cost < {cost}
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# check > points
def comparison_query_5():
    points = input("Please enter the point for which you would want to find greater values for: ")
    try:
        query = f"""
            WITH current AS (
                SELECT RewardsID, PointsEarned, PointsRedeemed, (PointsEarned - PointsRedeemed) AS CurrentPoints 
                FROM RewardsProgram
            ) SELECT * FROM current
            WHERE CurrentPoints > {points};
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# check < points
def comparison_query_6():
    points = input("Please enter the point for which you would want to find lesser values for: ")
    try:
        query = f"""
            WITH current AS (
                SELECT RewardsID, PointsEarned, PointsRedeemed, (PointsEarned - PointsRedeemed) AS CurrentPoints 
                FROM RewardsProgram
            ) SELECT * FROM current
            WHERE CurrentPoints < {points};
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# check > departure flight time
def comparison_query_7():
    time = input("Please enter the time which you would want to find later departure times for: ")
    time = "'" + time + "'"
    try:
        query = f"""
        SELECT * FROM FLIGHT WHERE DepartureTime > {time};
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# check > arrival flight time
def comparison_query_8():
    time = input("Please enter the time which you would want to find later arrival times for: ")
    time = "'" + time + "'"
    try:
        query = f"""
            SELECT * FROM FLIGHT WHERE ArrivalTime > {time};
            """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Find top% of paying customers
def with_query_1():
    try:
        query = """
        WITH table1 AS (
	        SELECT Customer.CustomerID, FirstName, LastName, BookingID, Payment.PaymentID, Cost,
            SUM(Cost) OVER (PARTITION BY Booking.CustomerID) AS TotalCost
	        FROM Customer, Payment, Booking
	        WHERE Customer.CustomerID = Booking.CustomerID AND Booking.PaymentID = Payment.PaymentID
        ) SELECT CustomerID, FirstName, LastName, BookingID, PaymentID, Cost, TotalCost, 
        ROUND(PERCENT_RANK() OVER (ORDER BY TotalCost DESC)*100, 2) AS 'Top Paying Customer (%)'
        FROM table1;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query:", err)

# find highest and lowest payment
def with_query_2():
    try:
        query = """
            WITH MinCost AS (
                SELECT PaymentID, Cost, 
                FIRST_VALUE(Cost) OVER (ORDER BY Cost ASC) AS FirstCost
                FROM Payment
            ), 
            MaxCost AS (
                SELECT PaymentID, Cost, 
                LAST_VALUE(Cost) OVER (ORDER BY Cost ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastCost
                FROM Payment
            ) SELECT 'Lowest' AS CostType, PaymentID, Cost
            FROM MinCost
            WHERE Cost = FirstCost
            UNION ALL 
            SELECT 'Highest' AS CostType, PaymentID, Cost
            FROM MaxCost
            WHERE Cost = LastCost;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query:", err)

# find loyalty via z-score
def with_query_3():
    try:
        query = """
            WITH table1 AS (
	            SELECT AVG(pointsEarned) AS averagepoints, STDDEV(pointsEarned) AS stddev
                FROM rewardsprogram
            ) SELECT CustomerID, FirstName, LastName, RewardsProgram.RewardsID, PointsEarned, 
	        ROUND(table1.averagepoints,2) AS average, ROUND(table1.stddev,2) AS StdDev, 
            ROUND((rewardsprogram.pointsearned - table1.averagepoints) / stddev,2) AS z_score
            FROM Customer, RewardsProgram, table1
            WHERE Customer.RewardsID = RewardsProgram.RewardsID
            ORDER BY z_score DESC;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# find min and max flight durations
def with_query_4():
    try:
        query = """
            WITH flightduration AS (
                SELECT FlightID, DepartureAirport, ArrivalAirport, DepartureTime, ArrivalTime, Date, 
                    CASE
                        WHEN TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p')) >= 0 
                            THEN TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p'))
                        ELSE ADDTIME(TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p')), '24:00:00')
                    END AS Duration
                FROM Flight
            ) SELECT f.FlightID, fd.Duration,
                CASE 
                    WHEN fd.Duration = (SELECT MAX(DURATION) FROM flightduration) THEN 'Longest'
                    WHEN fd.Duration = (SELECT MIN(DURATION) FROM flightduration) THEN 'Shortest'
                END AS DurationType
            FROM Flight f
            JOIN flightduration fd ON f.FlightID = fd.FlightID
            WHERE fd.Duration = (SELECT MAX(Duration) AS MAX FROM flightduration) 
                OR fd.Duration = (SELECT MIN(Duration) AS MIN FROM flightduration);
            """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Calculate running total of costs in payment table
def aggregate_function_query_1():
    try:
        query = """
        SELECT PaymentID, Cost,
            SUM(CAST(REPLACE(Cost, '$', '') AS DECIMAL(6,2))) OVER (ORDER BY PaymentID) AS RunningTotal
        FROM Payment;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Find the moving total of revenue per year from customers
def aggregate_function_query_2():
    try:
        query = """
        SELECT 
            EXTRACT(YEAR FROM BookingDate) AS Year, 
            BookingID, BookingDate, Cost, 
            SUM(Cost) OVER (PARTITION BY EXTRACT(YEAR FROM BookingDate) ORDER BY BookingDate ROWS UNBOUNDED PRECEDING) as 'Yearly Total'
        FROM Booking
        INNER JOIN Payment ON Booking.PaymentID = Payment.PaymentID;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Find running totals of bookings per flight
def aggregate_function_query_3():
    try:
        query = """
        SELECT FlightID, BookingDate, 
            COUNT(BookingID) OVER (PARTITION BY FlightID ORDER BY BookingDate) AS RunningTotalBookings
        FROM Booking
        ORDER BY FlightID, BookingDate;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Find moving averages and running totals for booking table each month per year
def aggregate_function_query_4():
    try:
        query = """
        SELECT
            YEAR(BookingDate) AS Booking_Year,
            MONTH(BookingDate) AS Booking_Month,
            BookingID, cost,
            ROUND(AVG(Cost) OVER (PARTITION BY YEAR(BookingDate) ORDER BY BookingDate), 2) AS Moving_Avg_Cost,
            SUM(Cost) OVER (PARTITION BY YEAR(BookingDate) ORDER BY BookingDate) AS Total_Cost
        FROM
            (SELECT BookingID, BookingDate, Payment.Cost
            FROM Booking
            JOIN Payment ON Booking.PaymentID = Payment.PaymentID) AS dt
        ORDER BY Booking_Year, Booking_Month, BookingDate;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Customer loyalty by points
def aggregate_function_query_5():
    try:
        query = """
        SELECT CustomerID, FirstName, LastName, PointsEarned,
	    ntile(5) OVER (ORDER BY PointsEarned DESC) AS Quartile
        FROM Customer, RewardsProgram
        WHERE Customer.RewardsID = RewardsProgram.RewardsID
        ORDER BY Quartile, CustomerID;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# Customer's Discounted price
def aggregate_function_query_6():
    CID = input("Please enter a customerID: ")
    try:
        query = f"""
        SELECT BookingID, BookingDate, Booking.CustomerID, Payment.PaymentID, Cost, `Discount%`, 
        MAX(`Discount%`) OVER () AS MaxDiscount, salesCalculation({CID}) 
        FROM Booking, Payment, SpecialOffer
        WHERE Booking.PaymentID = Payment.PaymentID AND Booking.CustomerID = {CID} AND SpecialOffer.CustomerID = Booking.CustomerID;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query: ", err)

# percent of total payment
def aggregate_function_query_7():
    try:
        query = """
            SELECT B.CustomerID, B.BookingID, P.Cost, TR.TotalRevenue,
            ROUND((P.Cost / TR.TotalRevenue) * 100,2) AS PercentCost
            FROM Booking B
            JOIN Payment P ON B.PaymentID = P.PaymentID,
            (SELECT SUM(Cost) AS TotalRevenue FROM Payment) TR
            ORDER BY PercentCost DESC;
        """
        mycursor.execute(query)
        display_table()

    except mysql.connector.Error as err:
        print("Error executing query:", err)

# Total sales per flight with rollup
def olap_query_1():
    try:
        query = """
        SELECT Flight.FlightID, CustomerID, Cost, SUM(Cost) AS TotalCost
        FROM Flight, Booking, Payment
        WHERE Flight.FlightID = Booking.FlightID AND Booking.PaymentID = Payment.PaymentID
        GROUP BY Flight.FlightID, CustomerID, Cost WITH ROLLUP;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing OLAP query:", err)

# unique bookings per flight
def olap_query_2():
    try:
        query = """
        SELECT FlightID, COUNT(DISTINCT CustomerID) AS UniqueBookings, COUNT(CustomerID) AS TotalBookings
        FROM BOOKING
        GROUP BY FlightID;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing OLAP query:", err)

# customer booking frequency
def olap_query_3():
    try:
        query = """
        SELECT c.CustomerID, c.FirstName, c.LastName,
            COUNT(*) AS BookingFrequency
        FROM Customer c
        JOIN Booking b ON c.CustomerID = b.CustomerID
        GROUP BY c.CustomerID, c.FirstName, c.LastName
        ORDER BY BookingFrequency DESC;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing OLAP query:", err)

# customer loyalty tier
def olap_query_4():
    try:
        query = """
        SELECT CustomerID, 
            COUNT(bookingID) AS Bookings,
            NTILE(4) OVER (ORDER BY COUNT(BookingID) DESC) AS LoyaltyTier
        FROM Booking
        GROUP BY CustomerID
        ORDER BY LoyaltyTier;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing OLAP query:", err)

# total revenue per payment method
def olap_query_5():
    try:
        query = """
        SELECT PaymentMethod, SUM(Cost) AS TotalRevenue
        FROM Payment
        GROUP BY PaymentMethod
        ORDER BY TotalRevenue DESC;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing OLAP query:", err)

# crew composition per flight
def olap_query_6():
    try:
        query = """
        SELECT FlightID,
            SUM(CASE WHEN Role = 'Pilot' THEN 1 ELSE 0 END) AS NumberOfPilots,
            SUM(CASE WHEN Role = 'Co-Pilot' THEN 1 ELSE 0 END) AS NumberOfCoPilots,
            SUM(CASE WHEN Role = 'Flight Attendant' THEN 1 ELSE 0 END) AS NumberOfFlightAttendants
        FROM Crew
        GROUP BY FlightID
        ORDER BY FlightID;
        """
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing OLAP query:", err)

# count contact methods
def olap_query_7():
    try:
        query = """
        SELECT ContactMethod, COUNT(*) AS cases_count
        FROM CustomerServiceRepresentative
        GROUP BY ContactMethod
        ORDER BY cases_count DESC;"""
        mycursor.execute(query)
        display_table()
    except mysql.connector.Error as err:
        print("Error executing OLAP query: ", err)

############# Database Navigation #############
# Main loop for menu interaction
try:
    display_start()
    while True:
        display_menu()
        choice = input("Enter your choice: ")

        # Exit the database
        if choice == "10":
            print("\nThank you for using Southwest Database! See you next time!")
            print("Exiting program.")
            # Close the cursor and connection
            mycursor.close()
            mydb.close()
            break
        # Take CRUD actions given the input
        elif choice.isdigit() and 1 <= int(choice) <= 8:
            table_names = ['Flight', 'RewardsProgram', 'Customer', 'Payment', 'Booking',
                           'CustomerServiceRepresentative', 'SpecialOffer', 'Crew']
            table_name = table_names[int(choice) - 1]
            display_submenu()
        # Takes action from more complex queries
        elif choice == "9":
            display_query_menu()
        else:
            print("Please enter a valid option (1-10). ")
            pass

except KeyboardInterrupt:
    print("\nThank you for using Southwest Database! See you next time!")
    print("Exiting program.")