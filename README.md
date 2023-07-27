# SQL: Modelling, Engineering, Analysis, and Normalisation 
* The database attached is N1-N4 normalised
### Project description:
Design the SQL tables and dependencies to hold the data from the CSV files, import the CSV files into a SQL database, and answer questions about the data.
### Project background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

#### ERD Diagram Breakdown
1. **Employees table:**
    - PK: emp_no
    - FK: emp_title_id REFERANCE PRIMARY KEY = titles.title_id
    - Reason - Employees & Salaries tables: The employee’s table must contain the primary key as opposed to the salaries table. Salaries can change over time and can be modified on an annual basis, employees can move departments and roles. So recording the employees within the employee’s table is the most “stable” unique identifier, which makes that column the best “candidate” for PK.  
2. **Departments table:**
    - PK: dept_no
    - Reason: The departments table is the only table responsible in updating the overall departments within the company. If in the future the company will add another department, because of the depandencies stractured, the rest of the tables will be updated simultaneously.
3. **Titles table:** 
    - PK: title_id
    - Reason: The only table in our database that is responsible for the title's description is the titles table. 
4. **Salaries table:**
    - FK: emp_no
    - Reason: Salaries can change on an annual basis, employees can move from one department to another and so defining the salaries as the source of dependency as PK doesn't really make sense; even though the Salaries orginises the employees number in ascending order, in these circumstances, it won't be considered as best practice.
5. **dep_emp table:** 
    - PK: emp_no, dept_no (composite primary key)
    - FK: emp_no, dept_no
    - Reason: Since one employee can work for multiple departments and the departments can have multiple employees, a composite primary key is most suitable in these circumstances.
6. **dept_manager table:** 
    - PK: emp_no, dept_no (composite primary key)
    - FK: emp_no, dept_no
    - Reason: Since 1 employee can manage multiple departments over time, a composite primary key is most suitable.
### ERD Diagram Image
![ERD_diagram](https://github.com/Kokolipa/sql-challenge/blob/sql_main/EmployeeSQL/schema-ERD/QuickDBD-Free%20Diagram.png)
#### Folder structure
``` yml
.
├── CSVs
│   ├── departments.csv                      
│   ├── dept_emp.csv   
│   ├── dept_manager.csv    
│   ├── employees.csv  
│   ├── salaries.csv   
│   ├── titles.csv    
├── EmployeeSQL
│   |   ├── schema-ERD
│   |   |   ├── ERD.png
│   |   |   ├── ERD_description.pdf
│   |   |   ├── schema.sql 
│   |   |   ├── queries.sql               
|___README.md
``` 
