--CREATE DATABASE FLEX;
--GO

USE FLEX;

DROP TABLE IF EXISTS EVALUATION;
DROP TABLE IF EXISTS FEEDBACK;
DROP TABLE IF EXISTS REGISTRATION;
DROP TABLE IF EXISTS ATTENDANCE;
DROP TABLE IF EXISTS SECTIONS;
DROP TABLE IF EXISTS MARKS;
DROP TABLE IF EXISTS ACADEMICS;
DROP TABLE IF EXISTS COORDINATORS;
DROP TABLE IF EXISTS COURSES;
DROP TABLE IF EXISTS FACULTY;
DROP TABLE IF EXISTS STUDENTS;
DROP TABLE IF EXISTS USERS;


DROP TABLE IF EXISTS USERS;
CREATE TABLE USERS
(
USERID INT PRIMARY KEY,
USERNAME VARCHAR(50) UNIQUE,
USER_PASSWORD VARCHAR(100) NOT NULL
CHECK (LEN(USER_PASSWORD) >= 8
AND USER_PASSWORD LIKE '%[a-z]%'
AND USER_PASSWORD LIKE '%[A-Z]%'
AND USER_PASSWORD LIKE '%[0-9]%')
);

DROP TABLE IF EXISTS STUDENTS;
CREATE TABLE STUDENTS
(
USERID INT NOT NULL,
REG_NUM INT UNIQUE,
CNIC CHAR(14) NOT NULL CHECK (CNIC LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
PHONE_NUM VARCHAR(11) NOT NULL,
F_NAME VARCHAR(50) NOT NULL,
L_NAME VARCHAR(50),
STUDENT_NAME AS CONCAT(F_NAME, ' ', L_NAME),
BLOOD_GROUP VARCHAR(3) NOT NULL
CHECK (BLOOD_GROUP IN ('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-')),
HOUSE_NO VARCHAR(10),
STREET_NO VARCHAR(20),
LOC_AREA VARCHAR(20),
PROG_NAME VARCHAR(10) NOT NULL,

PRIMARY KEY(REG_NUM),
FOREIGN KEY (USERID) REFERENCES USERS(USERID)
);



DROP TABLE IF EXISTS FACULTY;
CREATE TABLE FACULTY
(
USERID INT,
FACULTY_ID INT PRIMARY KEY,
F_NAME VARCHAR(50) NOT NULL,
L_NAME VARCHAR(50),
FACULTY_NAME AS CONCAT(F_NAME, ' ', L_NAME),

FOREIGN KEY (USERID) REFERENCES USERS(USERID)
);



DROP TABLE IF EXISTS COURSES;
CREATE TABLE COURSES
(
COURSE_CODE VARCHAR(10) PRIMARY KEY NOT NULL,
COURSE_NAME VARCHAR(50) NOT NULL,
CRED_HRS FLOAT NOT NULL,
PRE_REQ_ID VARCHAR(10) NULL,

FOREIGN KEY (PRE_REQ_ID) REFERENCES COURSES(COURSE_CODE) --RECURSIVE RELATIONSHIP
);

DROP TABLE IF EXISTS COORDINATORS;
CREATE TABLE COORDINATORS
(
COD INT PRIMARY KEY,
FAC_ID INT,
COURSE_CODE VARCHAR(10),

FOREIGN KEY (FAC_ID) REFERENCES FACULTY(FACULTY_ID),
FOREIGN KEY (COURSE_CODE) REFERENCES COURSES(COURSE_CODE)
);

DROP TABLE IF EXISTS ACADEMICS;
CREATE TABLE ACADEMICS
(
ACD_ID INT PRIMARY KEY,
USERID INT,
F_NAME VARCHAR(50) NOT NULL,
L_NAME VARCHAR(50),
ACAD_NAME AS CONCAT(F_NAME, ' ', L_NAME),
ACAD_LOC VARCHAR(10) NOT NULL, 
FOREIGN KEY (USERID) REFERENCES USERS(USERID)
);

DROP TABLE IF EXISTS MARKS;
CREATE TABLE MARKS
(
REG_NUM INT,
COURSE_CODE VARCHAR(10),
MARKS FLOAT NOT NULL,

PRIMARY KEY (REG_NUM, COURSE_CODE),
FOREIGN KEY (REG_NUM) REFERENCES STUDENTS(REG_NUM),
FOREIGN KEY (COURSE_CODE) REFERENCES COURSES(COURSE_CODE)
);

DROP TABLE IF EXISTS SECTIONS;
CREATE TABLE SECTIONS
(
SECTION_ID INT PRIMARY KEY,
CAPACITY INT NOT NULL,
SECTION_NUM INT NOT NULL,
OFFERED_COURSE_CODE VARCHAR(10) NOT NULL,
FACULTY_ID INT NOT NULL,

FOREIGN KEY (OFFERED_COURSE_CODE) REFERENCES COURSES(COURSE_CODE),
FOREIGN KEY (FACULTY_ID) REFERENCES FACULTY(FACULTY_ID)
);

DROP TABLE IF EXISTS ATTENDENCE;
CREATE TABLE ATTENDANCE
(
SECTION_ID INT,
COURSE_CODE VARCHAR(10), 
STUDENT_ID INT,
DATE_TIME DATETIME NOT NULL,
A_STATUS VARCHAR(10) NOT NULL
CHECK (A_STATUS LIKE 'P'
OR A_STATUS LIKE 'L'
OR A_STATUS LIKE 'A'),

PRIMARY KEY(SECTION_ID, COURSE_CODE, STUDENT_ID, DATE_TIME),
FOREIGN KEY (SECTION_ID) REFERENCES SECTIONS(SECTION_ID),
FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTS(REG_NUM),
FOREIGN KEY (COURSE_CODE) REFERENCES COURSES(COURSE_CODE)
);

DROP TABLE IF EXISTS REGISTRATION;
CREATE TABLE REGISTRATION
(
 ID INT IDENTITY(1,1) PRIMARY KEY,
SECTION_ID INT,
REG_NUM INT,
REG_YEAR VARCHAR(10),

FOREIGN KEY (SECTION_ID) REFERENCES SECTIONS(SECTION_ID),
FOREIGN KEY (REG_NUM) REFERENCES STUDENTS(REG_NUM)
);

DROP TABLE IF EXISTS FEEDBACK;
CREATE TABLE FEEDBACK
(
FAC_ID INT,
REG_NUM INT,
COURSE_CODE VARCHAR(10),
COMMENT VARCHAR(1000),

PRIMARY KEY (FAC_ID, REG_NUM, COURSE_CODE),
FOREIGN KEY (FAC_ID) REFERENCES FACULTY(FACULTY_ID),
FOREIGN KEY (REG_NUM) REFERENCES STUDENTS(REG_NUM),
FOREIGN KEY (COURSE_CODE) REFERENCES COURSES(COURSE_CODE)
);


DROP TABLE IF EXISTS EVALUTATION;
CREATE TABLE EVALUATION
(
SECTION_ID INT,
COURSE_CODE VARCHAR(10),
WEIGHTAGE FLOAT,
E_TYPE VARCHAR(20),
E_STATUS VARCHAR(20),

PRIMARY KEY (SECTION_ID, COURSE_CODE),
FOREIGN KEY (SECTION_ID) REFERENCES SECTIONS(SECTION_ID),
FOREIGN KEY (COURSE_CODE) REFERENCES COURSES(COURSE_CODE)
);



