--PART(A):

CREATE TABLE CRICKET
(
	Name VARCHAR(50),
	City VARCHAR(50),
	Age INT
)
INSERT INTO CRICKET VALUES
('Sachin Tendulkar','Mumbai',30),
('Rahul Dravid','Bombay',35),
('M. S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30);

SELECT * FROM CRICKET

--Create table Worldcup from cricket with all the columns and data.
SELECT * INTO Worldcup FROM CRICKET

SELECT * FROM Worldcup

--Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=0

SELECT * FROM T20

--Create table IPL From Cricket with No Data.
SELECT * INTO IPL FROM CRICKET WHERE 1=0

SELECT * FROM IPL



--PART(B):

CREATE TABLE EMPLOYEE
(
	Name VARCHAR(50),
	City VARCHAR(50),
	Age INT
)
INSERT INTO EMPLOYEE VALUES
('Jay Patel','Rajkot',30),
('Rahul Dave','Baroda',35),
('Jeet Patel','Surat',31),
('Vijay Raval','Rajkot',30);

SELECT * FROM EMPLOYEE

--Create table Employee_detail from Employee with all the columns and data.
SELECT * INTO Employee_detail FROM EMPLOYEE

SELECT * FROM Employee_detail

--Create table Employee_data from Employee with first two columns with no data.
SELECT NAME,CITY INTO Employee_data FROM EMPLOYEE WHERE 1=0

SELECT * FROM Employee_data

--Create table Employee_info from Employee with no Data.
SELECT * INTO Employee_info FROM EMPLOYEE WHERE 1=0

SELECT * FROM Employee_info



--PART(C):

--Insert the Data into Employee_info from Employee whose CITY is Rajkot.
INSERT INTO Employee_info SELECT * FROM EMPLOYEE WHERE CITY='RAJKOT'

SELECT * FROM Employee_info

--Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO Employee_info SELECT * FROM EMPLOYEE WHERE AGE>32

SELECT * FROM Employee_info



--PART(A):

--Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE AMOUNT=3000

SELECT * FROM DEPOSIT

--Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW SET BNAME='C.G.ROAD' WHERE BNAME='VRCE'

SELECT * FROM BORROW

--Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET ACTNO=111,AMOUNT=5000 WHERE ACTNO=106 AND AMOUNT=2000

SELECT * FROM DEPOSIT

--Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=7000 WHERE CNAME='KRANTI'

SELECT * FROM DEPOSIT

--Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'

SELECT * FROM BRANCH

--Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE DEPOSIT SET BNAME='NEHRU PALACE' WHERE CNAME='MEHUL'

SELECT * FROM DEPOSIT

-- Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE ACTNO BETWEEN 103 AND 107

SELECT * FROM DEPOSIT

--Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSIT SET ADATE='1-APR-95' WHERE CNAME='ANIL'

SELECT * FROM DEPOSIT

--Update the amount of MINU to 10000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=10000 WHERE CNAME='MINU'

SELECT * FROM DEPOSIT

-- Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000,ADATE='1-APR-96' WHERE CNAME='PRAMOD'

SELECT * FROM DEPOSIT



--PART(B):

--Give 10% Increment in Loan Amount. (Use Borrow Table)
UPDATE BORROW SET AMOUNT=(AMOUNT+(AMOUNT*0.1))

SELECT * FROM BORROW

--Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=(AMOUNT+(AMOUNT*0.2))

SELECT * FROM BORROW



--PART(C):

--Update amount of loan no 321 to NULL. (Use Borrow Table)
UPDATE BORROW SET LOANNO=NULL WHERE LOANNO=321

SELECT * FROM BORROW

-- Update branch name of KRANTI to NULL (Use Borrow Table)
UPDATE BORROW SET CNAME=NULL WHERE CNAME='KRANTI'

SELECT * FROM BORROW

--Display the name of borrowers whose amount is NULL. (Use Borrow Table)
SELECT CNAME FROM BORROW WHERE CNAME IS NULL

--Display the Borrowers whose having branch. (Use Borrow Table)
SELECT BNAME FROM BORROW 

--Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481.(Use Borrow Table)
UPDATE BORROW SET AMOUNT=5000,BNAME='VRCE',CNAME='DARSHAN' WHERE LOANNO=481

SELECT * FROM BORROW

--Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less than 2000.
UPDATE DEPOSIT SET ADATE='1-JAN-2021' WHERE AMOUNT<2000

SELECT * FROM DEPOSIT

--Update the Deposit table and set the date to NULL & Branch name to �ANDHERI whose Account No is 110.
UPDATE DEPOSIT SET ADATE=NULL,BNAME='ANDHERI' WHERE ACTNO=110

SELECT * FROM DEPOSIT