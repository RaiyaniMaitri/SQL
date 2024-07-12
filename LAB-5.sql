--PART(A):

CREATE TABLE STUDENT
(
	StuID INT,
	FirstName VARCHAR(25),
	LastName VARCHAR(25),
	Website VARCHAR(50),
	City VARCHAR(25),
	Address VARCHAR(100)
)
INSERT INTO STUDENT VALUES 
(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303''Vasant Kunj'',Rajkot'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa", Raiya Road'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jig''s Home", Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55, Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building');

SELECT * FROM STUDENT

--Display the name of students whose name starts with ‘k’.
SELECT FirstName FROM STUDENT WHERE FirstName LIKE 'K%' 

--Display the name of students whose name consists of five characters.
SELECT FirstName FROM STUDENT  WHERE FirstName LIKE '_____'

--Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT FirstName,LastName,City FROM STUDENT WHERE City LIKE '_____A'

--Display all the students whose last name ends with ‘tel’.
SELECT LastName FROM STUDENT WHERE LastName LIKE '%TEL' 

--Display all the students whose first name starts with ‘ha’ & ends with‘t’.
SELECT FirstName FROM STUDENT WHERE FirstName LIKE 'HA%T'

--Display all the students whose first name starts with ‘k’ and third character is ‘y’.
SELECT FirstName FROM STUDENT WHERE FirstName LIKE 'K_Y%'

--Display the name of students having no website and name consists of five characters.
SELECT FirstName ,Website FROM STUDENT WHERE FirstName LIKE '_____' AND Website IS NULL

--Display all the students whose last name consist of ‘jer’.
SELECT LastName FROM STUDENT WHERE LastName LIKE '%JER%'

--Display all the students whose city name starts with either ‘r’ or ‘b’.
SELECT City FROM STUDENT WHERE City LIKE '[R,B]%'

--Display all the name students having websites.
SELECT FirstName,Website FROM STUDENT WHERE Website IS NOT NULL

--Display all the students whose name starts from alphabet A to H.
SELECT FirstName FROM STUDENT WHERE FirstName LIKE '[A-H]%'

--Display all the students whose name’s second character is vowel.
SELECT FirstName FROM STUDENT WHERE FirstName LIKE '_[A,E,I,O,U]%'

--Display the name of students having no website and name consists of minimum five characters.
SELECT FirstName,Website FROM STUDENT WHERE Website IS NULL AND FirstName LIKE '%_____%'

--Display all the students whose last name starts with ‘Pat’.
SELECT LastName FROM STUDENT WHERE LastName LIKE 'PAT%'

--Display all the students whose city name does not starts with ‘b’.
SELECT FirstName,City FROM STUDENT WHERE City NOT LIKE 'B%'



--PART(B):

--Display all the students whose name starts from alphabet A or H.
SELECT FirstName FROM STUDENT WHERE FirstName LIKE '[A,H]%'

--Display all the students whose name’s second character is vowel and of and start with H.
SELECT FirstName FROM STUDENT WHERE FirstName LIKE 'H[A,E,I,O,U]%'

--Display all the students whose last name does not ends with ‘a’.
SELECT LastName FROM STUDENT WHERE LastName NOT LIKE '%A'

--Display all the students whose first name starts with consonant.
SELECT FirstName FROM STUDENT WHERE FirstName NOT LIKE '[A,E,I,O,U]%'

--Display all the students whose website contains .net
SELECT FirstName,Website FROM STUDENT WHERE Website LIKE '%.NET%'



--PART(C):

--Display all the students whose address consist of -.
SELECT  FirstName,Address FROM STUDENT WHERE Address LIKE '%-%'

--Display all the students whose address contains single quote or double quote.
SELECT FirstName,Address FROM STUDENT WHERE Address LIKE '%''%''%' OR Address LIKE '%"%"%'

--Display all the students whose website contains @.
SELECT FirstName,Website FROM STUDENT WHERE Website LIKE '%@%'

--Display all the names those are either four or five characters.
SELECT FirstName FROM STUDENT WHERE FirstName LIKE '_____' OR FirstName LIKE '______'