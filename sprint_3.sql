/*Show all students ordered by last name in ascendent way.*/
SELECT * FROM Student ORDER BY lastName DESC;

/*Write a query to list all the students living in the Whitman dorm.*/
SELECT * FROM Student WHERE dormName="Whitman";

/*Write a query to list the number of students assigned to each faculty advisor.*/
SELECT COUNT(studentID) FROM Advisor_Student_Date
GROUP BY advisorID;

/*Write a query to list first name, last name, and email, and company name of the alumni working as a mentor in the university.*/
SELECT
M.firstName,
M.lastName,
M.mentorEmail,
C.companyName
FROM Mentor M
INNER JOIN Company C
ON C.companyPhone= M.companyPhone;


