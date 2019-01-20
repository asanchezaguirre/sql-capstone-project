CREATE DATABASE UniversityA;

CREATE TABLE Student(
	studentID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	email VARCHAR(70) NOT NULL,
	lastName VARCHAR(200) NOT NULL,
	firstName VARCHAR(200),
	dormPhone VARCHAR(15),
	dormName VARCHAR(15),
	dormRoom TINYINT(5)
);

CREATE TABLE Company(
	companyPhone VARCHAR(50) NOT NULL PRIMARY KEY,
	companyName VARCHAR(60),
	CompanyAddress VARCHAR(100),
	companyCity VARCHAR(20),
	companyState VARCHAR(5),
	companyZIP INT
);

CREATE TABLE Alumni(
	alumniEmail VARCHAR(60) NOT NULL PRIMARY KEY,
	lastName VARCHAR(100),
	firstName VARCHAR(100),
	formerStudent INT
);

CREATE TABLE Advisor(
	advisorID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	email VARCHAR(100),
	lastName VARCHAR(100),
	firstName VARCHAR(100)
);

CREATE TABLE Mentor(
	mentorEmail VARCHAR(100) NOT NULL PRIMARY KEY,
	lastName VARCHAR(100),
	firstName VARCHAR(100),
	alumniEmail VARCHAR(60),
	companyPhone VARCHAR(50),
	FOREIGN KEY (alumniEmail) REFERENCES Alumni (alumniEmail),
	FOREIGN KEY (companyPhone) REFERENCES Company (companyPhone)
);

CREATE TABLE Alumni_Home(
	alumniEmail VARCHAR(60),
	homeAddress VARCHAR(100),
	homeCity VARCHAR(20),
	homeState VARCHAR(5),
	homeZip INT(5), 
	homePhone VARCHAR(20),
	FOREIGN KEY (alumniEmail) REFERENCES Alumni (alumniEmail)
);

CREATE TABLE Department(
	advisorID INT,
	departmentName VARCHAR(30) NOT NULL,
	officeBuildingName VARCHAR (30),
	officeRoom TINYINT(5),
	officePhone VARCHAR(20),
	FOREIGN KEY (advisorID) REFERENCES Advisor (advisorID)
);

CREATE TABLE Advisor_Student_Date(
	advisorID INT,
	studentID INT,
	startDate DATE,
	endDate DATE,
	FOREIGN KEY (advisorID) REFERENCES Advisor (advisorID),
	FOREIGN KEY (studentID) REFERENCES Student (studentID)
);

CREATE TABLE Graduation(
	studentID INT,
    studentDegree VARCHAR(100),
	dateEnrolled DATE,
	dateGraduated DATE,
	FOREIGN KEY (studentID) REFERENCES Student (studentID)
);

CREATE TABLE Advisor_Mentor_Date(
	advisorID INT,
	mentorEmail VARCHAR(100),
	startDate DATE,
	endDate DATE,
	FOREIGN KEY (advisorID) REFERENCES Advisor (advisorID),
	FOREIGN KEY (mentorEmail) REFERENCES Mentor (mentorEmail)
);

CREATE TABLE Mentor_Student_Date(
	mentorEmail VARCHAR(100),
	studentID INT,
	startDate DATE,
	endDate DATE,
	FOREIGN KEY (mentorEmail) REFERENCES Mentor (mentorEmail),
	FOREIGN KEY (studentID) REFERENCES Student (studentID)
);