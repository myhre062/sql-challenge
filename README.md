# sql-challenge

# Module 9 Challenge

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I design the tables to hold the data from the CSV files, imported the CSV files into a SQL database, and then answer questions about the data. This will require performing data modeling, data engineering, and data analysis, respectively.

Here is the desing of the data base for Pewlett Hackard:

![Pewlett Hackard Data Modeling](https://github.com/myhre062/sql-challenge/blob/main/EmployeeSQL/QuickDBD-export.png)

## Instructions

1. Open pgAdmin 4 (download it [here](https://www.pgadmin.org/download/))
2. Create a database for this project, name it pewlett_hackard_db for fictional company
3. grab the csv files in the EmployeeSQL -> data folders
4. create a similar structure on your device or clone the repository
5. Run the queries in the EmployeeSQL -> [Data_Engineering_Schema.sql](https://github.com/myhre062/sql-challenge/blob/main/EmployeeSQL/Data_Engineering_Schema.sql) in pgAdmin 4 to set up the tables. 
6. Import the data to the corresponding tables using this process:
    - pewlett_hackard_db -> Schemas -> Tables -> right click on appropriate table
    - Import/Export data...
    - Select corresponding csv file with apporpriate table
    - Ensure in the `Options` tab `Header` is on
    - Ensure in the `Columns` tab `Columns to import` has all apropriate columns for table
    - repeat these steps for all tables (Data must be imported from csv files in the correct order: departments.csv -> titles.csv -> employees.csv -> dept_manager.csv -> dept_emp.csv -> salaries.csv)
7. Run the queries in the EmployeeSQL -> [Data_Analysis_Query_Schema.sql](https://github.com/myhre062/sql-challenge/blob/main/EmployeeSQL/Data_Analysis_Query_Schema.sql) in pgAdmin 4 to do the Data Analysis

## Dependencies

- pgAdmin 4
- SQL

## Limitations and Considerations

No Limitations or Condisderations because the data is very well contained and seems to only be used for adminstartive purposes for a fake company (Pewlett Hackard). 
