INSERT INTO Advisor (advisorID, email, lastName, firstName) 
VALUES (2001, "John.Doe@hu.edu", "Doe", "John");
INSERT INTO Advisor (email, lastName, firstName) 
VALUES ("Alice.Wonderland@hu.edu", "Wonderland", "Alice");
INSERT INTO Advisor (email, lastName, firstName) 
VALUES ("Bob.Dylan@hu.edu", "Dylan", "Bob");

INSERT INTO Student (studentID, email, lastName, firstName, dormPhone, dormName, dormRoom) 
VALUES (2001, "John.Bob@students.hu.edu", "Bob", "John", "516-555-5655", "Whitman", 1);
INSERT INTO Student (email, lastName, firstName, dormPhone, dormName, dormRoom) 
VALUES ("Ryan.King@students.hu.edu", "King", "Ryan", "516-555-5655", "Whitman", 1);
INSERT INTO Student (email, lastName, firstName, dormPhone, dormName, dormRoom) 
VALUES ("Michael.Shawn@students.hu.edu", "Shawn", "Michael", "516-555-5655", "Whitman", 1);
INSERT INTO Student (email, lastName, firstName, dormPhone, dormName, dormRoom) 
VALUES ("Troy.Bell@students.hu.edu", "Bell", "Troy", "718-525-1615", "Hale", 1);
INSERT INTO Student (email, lastName, firstName, dormPhone, dormName, dormRoom) 
VALUES ("Nickel.Sauce@students.hu.edu", "Sauce", "Nickel", "718-525-1615", "Hale", 1);
INSERT INTO Student (email, lastName, firstName, dormPhone, dormName, dormRoom) 
VALUES ("Drake.Taco@students.hu.edu", "Taco", "Drake", "516-555-5655", "Whitman", 1);

INSERT INTO Alumni (alumniEmail, lastName, firstName, formerStudent) 
VALUES ("Anthony.Jaghab@somewhere.com", "Jaghab", "Anthony", 1001);
INSERT INTO Alumni (alumniEmail, lastName, firstName, formerStudent) 
VALUES ("Jupraj.Singh@somewhere.com", "Singh", "Juprah", 1002);
INSERT INTO Alumni (alumniEmail, lastName, firstName, formerStudent) 
VALUES ("Andre.King@somewhere.com", "King", "Andre", 1003);

INSERT INTO Company (companyPhone, companyName, CompanyAddress, companyCity, companyState, companyZIP) 
VALUES ("516-111-1112", "Richard Allen", "400 Forest Ave", "West Hempstead", "NY", 11552);
INSERT INTO Company (companyPhone, companyName, CompanyAddress, companyCity, companyState, companyZIP) 
VALUES ("516-111-1113","Coca Cola", "321 Hamburger Ave", "West Hempstead", "NY", 11552);
INSERT INTO Company (companyPhone, companyName, CompanyAddress, companyCity, companyState, companyZIP) 
VALUES ("516-111-1114","Pepsi", "21 West Valley Ave", "West Hempstead", "NY", 11552);

INSERT INTO Mentor (mentorEmail, lastName, firstName, alumniEmail, companyPhone) 
VALUES ("Andre.King@companyname.com","King", "Andre", "Andre.King@somewhere.com", "516-111-1112");
INSERT INTO Mentor (mentorEmail, lastName, firstName, companyPhone) 
VALUES ("Michael.Junior@companyname.com","Junior", "Michael", "516-111-1114");
INSERT INTO Mentor (mentorEmail, lastName, firstName, companyPhone) 
VALUES ("Connor.Junior@companyname.com","Junior", "Connor", "516-111-1113");

INSERT INTO Advisor_Student_Date(advisorID, studentID, startDate, endDate) 
VALUES (2001, 2002, "1996-01-01", "1998-01-01");
INSERT INTO Advisor_Student_Date(advisorID, studentID, startDate) 
VALUES (2002, 2001, "2000-01-01");
INSERT INTO Advisor_Student_Date(advisorID, studentID, startDate) 
VALUES (2003, 2003, "2000-01-01");

INSERT INTO Advisor_Mentor_Date (advisorID, mentorEmail, startDate) 
VALUES (2001,"Andre.King@companyname.com", '1996-01-01');
INSERT INTO Advisor_Mentor_Date (advisorID, mentorEmail, startDate) 
VALUES (2002,"Andre.King@companyname.com", '2000-01-01');
INSERT INTO Advisor_Mentor_Date (advisorID, mentorEmail, startDate) 
VALUES (2003,"Andre.King@companyname.com", '2000-01-01');

INSERT INTO Mentor_Student_Date (mentorEmail, studentID, startDate) 
VALUES ("Andre.King@companyname.com", 2001, "2000-01-01");
INSERT INTO Mentor_Student_Date (mentorEmail, studentID, startDate) 
VALUES ("Andre.King@companyname.com", 2002, "2001-01-01");
INSERT INTO Mentor_Student_Date (mentorEmail, studentID, startDate) 
VALUES ("Andre.King@companyname.com", 2003, "2002-01-01");

INSERT INTO Alumni_Home (alumniEmail, homeAddress, homeCity, homeState, homeZip, homePhone) 
VALUES ("Anthony.Jaghab@somewhere.com", "414 Hunt Place", "West Hempstead", "NY", 11552, "516-555-5551");
INSERT INTO Alumni_Home (alumniEmail, homeAddress, homeCity, homeState, homeZip, homePhone) 
VALUES ("Jupraj.Singh@somewhere.com", "201 Valley Place", "West Hempstead", "NY", 11552, "516-555-5552");
INSERT INTO Alumni_Home (alumniEmail, homeAddress, homeCity, homeState, homeZip, homePhone) 
VALUES ("Andre.King@somewhere.com", "204 Strong Place", "West Hempstead", "NY", 11552, "516-555-5553");

INSERT INTO Graduation (studentID, studentDegree, dateEnrolled) 
VALUES (2001, "B.A Arts", "2000-01-01");
INSERT INTO Graduation (studentID, studentDegree, dateEnrolled) 
VALUES (2002, "B.A Comp. Programming", "2000-01-01");
INSERT INTO Graduation (studentID, studentDegree, dateEnrolled) 
VALUES (2003, "B.A Media", "2000-01-01");

INSERT INTO Department (advisorID, departmentName, officeBuildingName, officeRoom, officePhone) 
VALUES (2001, "Art", "Hale", 1, "631-444-5551");
INSERT INTO Department (advisorID, departmentName, officeBuildingName, officeRoom, officePhone) 
VALUES (2002, "Computer Systems", "Hale", 1, "631-243-3552");
INSERT INTO Department (advisorID, departmentName, officeBuildingName, officeRoom, officePhone) 
VALUES (2003, "Art", "Media", 1, "631-144-1533");