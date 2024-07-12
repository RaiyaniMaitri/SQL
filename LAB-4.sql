--PART(A):

--Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT ADD City VARCHAR(20),Pincode INT

SELECT * FROM DEPOSIT

--Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35)

--Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT

--Rename Column ActNo to ANO.
SP_RENAME 'DEPOSIT.ACTNO',ANO 

SELECT * FROM DEPOSIT

--Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT DROP COLUMN City

SELECT * FROM DEPOSIT

--Change name of table DEPOSIT to DEPOSIT_DETAIL.
SP_RENAME 'DEPOSIT',DEPOSIT_DETAIL

SELECT * FROM DEPOSIT_DETAIL



--PART(B):

--Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
SP_RENAME 'DEPOSIT_DETAIL.ADATE',AOPENDATE

SELECT * FROM DEPOSIT_DETAIL

--Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE

SELECT * FROM DEPOSIT_DETAIL

--Rename Column CNAME to CustomerName.
SP_RENAME 'DEPOSIT_DETAIL.CNAME',CustomerName

SELECT * FROM DEPOSIT_DETAIL



--PART(C):

CREATE TABLE STUDENT_DETAIL(
	Enrollment_No VARCHAR(20),
	Name VARCHAR(25),
	CPI DECIMAL(5,2),
	Birthdate DATETIME
)

SELECT * FROM STUDENT_DETAIL

--Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL ADD City VARCHAR (20) NOT NULL,Backlog INT NULL

SELECT * FROM STUDENT_DETAIL

--Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL ALTER COLUMN Name VARCHAR(35)

--Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT

--Rename Column Enrollment_No to ENO.
SP_RENAME 'STUDENT_DETAIL.Enrollment_No',ENO

SELECT * FROM STUDENT_DETAIL

--Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL DROP COLUMN City

SELECT * FROM STUDENT_DETAIL

--Change name of table student_detail to STUDENT_MASTER.
SP_RENAME 'student_detail',STUDENT_MASTER

SELECT * FROM STUDENT_MASTER



--PART(A):

--Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000

SELECT * FROM DEPOSIT_DETAIL

--Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI'

SELECT * FROM DEPOSIT_DETAIL

--Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>105

SELECT * FROM DEPOSIT_DETAIL

--Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE Deposit_Detail

SELECT * FROM DEPOSIT_DETAIL

--Remove Deposit_Detail table. (Use Drop)
DROP TABLE Deposit_Detail



--PART(B):

CREATE TABLE EMPLOYEE_MASTER
(
	EmpNo INT,
	EmpName VARCHAR(25),
	JoiningDate DATETIME,
	Salary DECIMAL (8,2),
	City VARCHAR(20)
)
INSERT INTO EMPLOYEE_MASTER VALUES
(101,'Keyur','2002-01-05',12000.00,'Rajkot'),
(102,'Hardik','2004-02-15',14000.00,'Ahmedabad'),
(103,'Kajal','2006-03-14',15000.00,'Baroda'),
(104,'Bhoomi','2005-06-23',12500.00,'Ahmedabad'),
(105,'Harmit','2004-02-15',14000.00,'Rajkot'),
(106,'Mitesh','2001-09-25',5000.00,'Jamnagar'),
(107,'Meera',NULL,7000.00,'Morbi'),
(108,'Kishan','2003-02-06',10000.00,NULL);

SELECT * FROM EMPLOYEE_MASTER

--Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.\
DELETE FROM Employee_MASTER WHERE Salary>=14000

SELECT * FROM EMPLOYEE_MASTER

--Delete all the Employees who belongs to ‘RAJKOT’ city.
DELETE FROM Employee_MASTER WHERE City='Rajkot'

SELECT * FROM EMPLOYEE_MASTER

--Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JoiningDate='1-JUN-2007'

--Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER WHERE JoiningDate IS NULL AND EmpNAME IS NOT NULL

SELECT * FROM EMPLOYEE_MASTER

--Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER WHERE Salary=(20000/2)

SELECT * FROM EMPLOYEE_MASTER

--Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE City IS NOT NULL

SELECT * FROM EMPLOYEE_MASTER

--Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE Employee_MASTER

SELECT * FROM EMPLOYEE_MASTER

-- Remove Employee_MASTER table. (Use Drop)
DROP TABLE Employee_MASTER