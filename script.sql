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
