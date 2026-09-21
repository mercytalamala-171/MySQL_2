A college want to maintain information about a course and students create a database name college_db and create the following tables 
courses
Column	Data type	Constraint
course_id	INT	PRIMARY KEY
course_name	VARCHAR(100)	UNIQUE, NOT NULL
duration	INT	CHECK
fees	DECIMAL(10,2)	CHECK

students
column	data type	constraints
student_id	INT	PRIMARY KEY
student_name	VARCHAR(100)	NOT NULL
email	VARCHAR(100)	UNIQUE
age	INT	CHECK
city	VARCHAR(100)	DEFAULT
course_id	INT	FOREIGN KEY

CREATE DATABASE college_db;
USE college_db;
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) UNIQUE NOT NULL,
    duration INT CHECK (duration > 0),
    fees DECIMAL(10,2) CHECK (fees > 0)
);
INSERT INTO courses
(course_id, course_name, duration, fees)
VALUES
(1, 'Java Full Stack', 6, 35000);
INSERT INTO courses
(course_id, course_name, duration, fees)
VALUES
(2, 'python Full Stack', 6, 32000);
DESC courses;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Bangalore',
    course_id INT,
    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);
