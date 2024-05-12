--CREATE DATABASE FLEX;
USE FLEX;

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

CREATE TABLE FACULTY
(
USERID INT,
FACULTY_ID INT PRIMARY KEY,
F_NAME VARCHAR(50) NOT NULL,
L_NAME VARCHAR(50),
FACULTY_NAME AS CONCAT(F_NAME, ' ', L_NAME),

FOREIGN KEY (USERID) REFERENCES USERS(USERID)
);

CREATE TABLE COURSES
(
COURSE_ID INT PRIMARY KEY,
COURSE_CODE VARCHAR(10) NOT NULL,
COURSE_NAME VARCHAR(50) NOT NULL,
CRED_HRS FLOAT NOT NULL,
PRE_REQ_ID INT,

FOREIGN KEY (PRE_REQ_ID) REFERENCES COURSES(COURSE_ID) --RECURSIVE RELATIONSHIP
);

CREATE TABLE COORDINATORS
(
COD INT PRIMARY KEY,
FAC_ID INT,
COURSE_ID INT,

FOREIGN KEY (FAC_ID) REFERENCES FACULTY(FACULTY_ID),
FOREIGN KEY (COURSE_ID) REFERENCES COURSES(COURSE_ID)
);

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

CREATE TABLE MARKS
(
REG_NUM INT,
COURSE_ID INT,
MARKS FLOAT NOT NULL,

PRIMARY KEY (REG_NUM, COURSE_ID),
FOREIGN KEY (REG_NUM) REFERENCES STUDENTS(REG_NUM),
FOREIGN KEY (COURSE_ID) REFERENCES COURSES(COURSE_ID)
);

CREATE TABLE ATTENDANCE
(
REG_NUM INT PRIMARY KEY,
DATE_TIME DATETIME NOT NULL,
A_STATUS VARCHAR(10) NOT NULL
CHECK (A_STATUS LIKE '%PRESENT%'
OR A_STATUS LIKE '%Present%'
OR A_STATUS LIKE '%LATE%'
OR A_STATUS LIKE '%Late%'
OR A_STATUS LIKE '%ABSENT%'
OR A_STATUS LIKE '%Absent%'),

FOREIGN KEY (REG_NUM) REFERENCES STUDENTS(REG_NUM)
);

CREATE TABLE SECTIONS
(
SECTION_ID INT PRIMARY KEY,
CAPACITY INT NOT NULL,
SECTION_NUM INT NOT NULL,
OFFERED_COURSES_ID INT NOT NULL,
FACULTY_ID INT NOT NULL,

FOREIGN KEY (OFFERED_COURSES_ID) REFERENCES COURSES(COURSE_ID),
FOREIGN KEY (FACULTY_ID) REFERENCES FACULTY(FACULTY_ID)
);

CREATE TABLE REGISTRATION
(
ID INT PRIMARY KEY,
SECTION_ID INT,
REG_NUM INT,
REG_YEAR VARCHAR(10),

FOREIGN KEY (SECTION_ID) REFERENCES SECTIONS(SECTION_ID),
FOREIGN KEY (REG_NUM) REFERENCES STUDENTS(REG_NUM)
);

CREATE TABLE FEEDBACK
(
FAC_ID INT,
REG_NUM INT,
COURSE_ID INT,
COMMENT VARCHAR(1000000),

PRIMARY KEY (FAC_ID, REG_NUM, COURSE_ID),
FOREIGN KEY (FAC_ID) REFERENCES FACULTY(FACULTY_ID),
FOREIGN KEY (REG_NUM) REFERENCES STUDENTS(REG_NUM),
FOREIGN KEY (COURSE_ID) REFERENCES COURSES(COURSE_ID)
);

CREATE TABLE EVALUATION
(
SECTION_ID INT,
COURSE_ID INT,
WEIGHTAGE FLOAT,
E_TYPE VARCHAR(20),
E_STATUS VARCHAR(20),

PRIMARY KEY (SECTION_ID, COURSE_ID),
FOREIGN KEY (SECTION_ID) REFERENCES SECTIONS(SECTION_ID),
FOREIGN KEY (COURSE_ID) REFERENCES COURSES(COURSE_ID)
);
