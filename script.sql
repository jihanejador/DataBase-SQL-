CREATE DATABASE management;
use management;
 CREATE TABLE roles(
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(255) NOT NULL
 );
 CREATE TABLE users(
    id int PRIMARY key AUTO_INCREMENT,
    fristname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    pswrd VARCHAR(255) NOT NULL
 );
 CREATE TABLE classes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    classrom_number INT 
 );
 
 CREATE TABLE courses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    total_hours INT ,
    id_users INT,
    FOREIGN KEY (id_users) REFERENCES users(id)
 );
 CREATE TABLE students(
    id INT PRIMARY KEY AUTO_INCREMENT,
    dateofbrith DATE,
    student_number INT,
    id_users INT,
    FOREIGN KEY (id_users) REFERENCES users(id),
    id_classes INT,
    FOREIGN KEY (id_classes) REFERENCES classes(id)
 );
 CREATE TABLE enrollements(
    id INT PRIMARY KEY AUTO_INCREMENT,
    daate DATE,
    status VARCHAR(255) NOT NULL,
    id_students INT,
    FOREIGN KEY (id_students) REFERENCES students(id),
    id_courses INT,
    FOREIGN KEY (id_courses) REFERENCES courses(id)
 );
 ALTER TABLE courses CHANGE id_users id_prof INT ;
 INSERT INTO roles(label) 
 VALUES ("admin"),
 ("prof"),
 ("student");

INSERT INTO users(fristname ,lastname,email,pswrd ) VALUES
("jihane","jador","jihane@gmail.com","123456"),
("sara","allaoui","sara@gmail.com","123457"),
("ayoub","banani","ayoub@gmail.com","123458");

INSERT INTO classes( name,classrom_number) VALUES
('Dev Web 2026', 101),
('Data 2026', 102),
('java web',103);

INSERT INTO courses(title,description,total_hours,id_prof) VALUES
('JavaScript', 'JS Basics', 40, 2),
('Database', 'SQL Course', 30, 2),
('php','php course',50,1);

INSERT INTO students(dateofbrith,student_number,id_users,id_classes) VALUES 
('2000-05-10', 12345, 3, 1),
('2003-01-13', 32456, 2, 1),
('2005-03-22', 23987, 4, 1);

INSERT INTO enrollements(daate,status,id_students,id_courses) VALUES
('2026-01-01', 'Actif', 1, 1),
('2026-01-02', 'Actif', 1, 2),
('2026-01-05', 'Actif', 2, 3);