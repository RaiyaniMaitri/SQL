--PART(A):

CREATE TABLE EMP(
	EID INT,
	EName VARCHAR(50),
	Department VARCHAR(50),
	Salary DECIMAL (8,2),
	JoiningDate DATETIME,
	City VARCHAR(50)
)
INSERT INTO EMP VALUES
(101,'Rahul','Admin',56000,'1-Jan-90','Rajkot'),
(102,'Hardik','IT',18000,'25-Sep-90','Ahmedabad'),
(103,'Bhavin','HR',25000,'14-May-91','Baroda'),
(104,'Bhoomi','Admin',39000,'8-Feb-91','Rajkot'),
(105,'Rohit','IT',17000,'23-Jul-90','Jamnagar'),
(106,'Priya','IT',9000,'18-Oct-90','Ahmedabad'),
(107,'Bhoomi','HR',34000,'25-Dec-91','Rajkot');

SELECT * FROM EMP

--Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(Salary) AS [Highest],MIN(Salary) AS[Lowest] FROM EMP

--Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
SELECT SUM(Salary) AS [Total_Sal],AVG(Salary) AS[Average_Sal] FROM EMP

--Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID) FROM EMP

--Find highest salary from Rajkot city.
SELECT MAX(Salary) FROM EMP WHERE CITY='RAJKOT'

--Give maximum salary from IT department.
SELECT MAX(Salary) FROM EMP WHERE Department='IT'

--Count employee whose joining date is after 8-feb-91.
SELECT COUNT(JoiningDate) FROM EMP WHERE JoiningDate>'8-feb-91'

--Display average salary of Admin department.
SELECT AVG(Salary) FROM EMP WHERE Department='Admin'

--Display total salary of HR department.
SELECT SUM(Salary) FROM EMP WHERE Department='HR'

--Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT City) FROM EMP

--Count unique departments.
SELECT COUNT(DISTINCT Department) FROM EMP

--Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(Salary) FROM EMP WHERE CITY='Ahmedabad'

--Find city wise highest salary.
SELECT City,MAX(Salary) FROM EMP GROUP BY CITY

--Find department wise lowest salary.
SELECT Department,MIN(Salary) FROM EMP GROUP BY Department

--Display city with the total number of employees belonging to each city.
SELECT City,COUNT(ENAME) FROM EMP GROUP BY CITY

--Give total salary of each department of EMP table.
SELECT Department,SUM(Salary) FROM EMP GROUP BY Department

--Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(Salary) FROM EMP GROUP BY Department



--PART(B):

--Count the number of employees living in Rajkot.
SELECT COUNT(ENAME) FROM EMP WHERE CITY='Rajkot'

--Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT (MAX(Salary)-MIN(Salary)) AS DIFFERENCE FROM EMP

--Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EMP) FROM EMP WHERE JoiningDate<'1-JAN-1991'



--PART(C):

--Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(ENAME) FROM EMP WHERE City IN ('Rajkot','Baroda')

--Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(ENAME) FROM EMP WHERE JoiningDate<'1-JAN-1991' AND Department='IT'

--Find the Joining Date wise Total Salaries.
SELECT SUM(Salary) FROM EMP GROUP BY JoiningDate

--Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT Department,City,MAX(Salary) FROM EMP WHERE City LIKE 'R%' GROUP BY Department,City   