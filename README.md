# Southwest Database Management System

## Project Description
This project is a command-line database management tool implemented in Python with MySQL as the backend. It is designed for managing various aspects of Southwest Airlines operations, including customer data, bookings, payments, crew, and more. The tool provides a user-friendly interface for executing various SQL queries on different tables in the database.

### Key Features:
- **CRUD Operations:** Perform Create, Read, Update, and Delete operations on tables such as Flight, Customer, Payment, Booking, Crew, etc.
- **Query Execution:** Execute predefined queries to retrieve specific information from the database.
- **Menu-driven Interface:** Interact with the database system through a user-friendly command-line interface.
- **Error Handling:** Gracefully handle errors to ensure smooth execution of queries and operations.
- **Database Navigation:** Easily navigate through different tables and perform actions as needed.
- **Complex Queries:** Execute complex SQL queries for tasks such as analyzing flight durations, finding top-paying customers, calculating loyalty tiers, etc.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Tests](#tests)
- [Contributions](#contributions)
- [Disclaimer](#disclaimer)

## Installation
1. Clone this repository to your local machine.
2. Install Python if not already installed. If you haven't already installed Python on your system, you can download it from the [official Python website](https://www.python.org/downloads/). Follow the instructions provided to install Python.
3. Install MySQL and create a database for the Southwest Airlines system.  If you haven't already installed MySQL Server, you can download it from the [official MySQL website](https://dev.mysql.com/downloads/mysql/). Follow the instructions provided to install MySQL Server on your system.
4. Install required Python packages.
5. Update the database connection details in the `maincode.py` file.
6. Run `maincode.py` to start the Southwest Database Management System.

## Usage
1. Upon launching the system, navigate through the menu using numeric options.
2. Choose options to perform CRUD operations, complex queries, etc.
3. Follow the on-screen instructions to input required or desired information and observe the output.

## Tests
**1. Performing CRUD Operations:**

Test Case: View the entire "Flight" table.

Action: Choose option 1 from the main menu, and then option 1 again in the submenu to "View All" from "Flight" table.

Expected Result: Successfully retrieves and displays the entire "Flight" table.

**2. Handling Set Membership Queries:**

Test Case: Search Customer by City.

Action: Choose option 9 from the main menu, then select option 2 for set membership queries, and finally select option 3 to search customer by city. Enter without quotation marks "Chicago" and then "Paris" the second time.

Expected Result: "Chicago" will not show any customers, however, "Paris" will show one.

**3. Handling OLAP Queries:**

Test Case: Finding total revenue generated by each payment method.

Action: Choose option 9 from the main menu, then select option 6 for OLAP queries, and finally select option 5 to find total revenue geenrated by each payment method.

Expected Result: Displays table with all the PaymentMethods along with the associated revenue.

**4. Handling Advanced Aggregate Function Queries:**

Test Case: Calculating running total of costs in the payment table.

Action: Choose option 9 from the main menu, then select option 5 for advanced aggregate function queries, and finally select option 1 to calculate the running total of costs in the payment table.

Expected Result: Displays the running total of costs for each payment in the payment table.

## Contributions
Aidan M., Jesus C., Jiafeng L., Krystian S.

## Disclaimer 
This project is developed for educational purposes and is not affiliated with Southwest Airlines.
