create database student_task_manager;
use student_task_manager;

create table student
(
student_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
gender varchar(20),
mobile_number varchar(20),
email varchar(100),
course_name varchar(100),
admission_date date
);

insert into student(
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
value(
'arjun',
'Pal',
'male',
'9624612583',
'arjunpal0@gmail.com',
'BA',
curdate()
);
select * from student;

use student_task_manager;

show tables;

select * from students;

update students
set
gender = 'female',
mobile_number = '1234569878',
email = 'mew34@gmail.com',
course_name ='bca',
admission_date = curdate()
where student_id = 7;

use student_task_manager;

CREATE TABLE attendance
(
	attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    attendance_date DATE,
    attendance_status VARCHAR(20),
    FOREIGN KEY (student_id)
    REFERENCES student(student_id)
);

select * from attendance;

SHOW TABLES;
drop table students;

drop table student;


create table student(
	student_id int primary key auto_increment,
    first_name varchar(100),
    last_name varchar(100),
    gender varchar(20),
    mobile_number varchar(20),
    email varchar(50),
    course_name varchar(100),
    admission_date date
);

insert into student (
	first_name,
    last_name,
    gender,
    mobile_number,
    email,
    course_name,
    admission_date
)
values(
	'Satyajeet',
    'Patil',
    'Male',
    '98776554456',
    'satyajeet@gmail.com',
    'backend',
    curdate()
);

CREATE TABLE attendance
(
	attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    attendance_date DATE,
    attendance_status VARCHAR(20),
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
);

SHOW TABLES;
CREATE table tasks
(
	task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(200),
    task_description TEXT,
    maximum_marks INT
);

INSERT INTO tasks
(
	task_name,
    task_description,
    maximum_marks
)
VALUES
(
	'Python Assignment',
    'Basic Pythhon Practice',
    100
);

CREATE TABLE student_tasks
(
	student_task_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    task_id INT,
    obtained_marks INT,
    submission_date DATE,
    FOREIGN KEY (student_id)
    REFERENCES student(student_id),
    FOREIGN KEY (task_id)
    REFERENCES tasks(task_id)
);

show tables;
SELECT * FROM tasks;

ALTER TABLE student_tasks
ADD COLUMN submission_status VARCHAR(50);

ALTER TABLE student_tasks
ADD COLUMN remarks TEXT;

SELECT * FROM student_tasks;
use student_task_manager;

insert into student (
	first_name,
    last_name,
    gender,
    mobile_number,
    email,
    course_name,
    admission_date
)
values(
	'Sahil',
    'Patil',
    'Male',
    '98745554456',
    'sahil@23@gmail.com',
    'backend',
    curdate()
);


CREATE TABLE users
(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    password VARCHAR(100),
    full_name VARCHAR(200)
);
use student_task_manager;

INSERT INTO users
(
    username,
    password,
    full_name
)
VALUES
(
    'admin',
    'admin123',
    'System Administrator'
);


SELECT * FROM users;
DELETE FROM users WHERE user_id = 3;